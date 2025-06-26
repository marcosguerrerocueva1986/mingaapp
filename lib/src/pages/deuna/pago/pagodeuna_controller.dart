import 'package:bancamovilr/index.dart';
import 'package:widgets_to_image/widgets_to_image.dart';

part 'pagodeuna_controller.g.dart';

@riverpod
class PagoDeunaController extends _$PagoDeunaController {
  final form = fb.group({
    'monto': ['0.00', MontoPersonalizadoValidator(0.00)],
    'descripcion': ['']
  });

  double monto = 0.00;
  WidgetsToImageController controller = WidgetsToImageController();
  TextEditingController textEditingControllerInternal = TextEditingController();

  @override
  PagoDeunaState build() {
    return PagoDeunaState();
  }

  Future inicializa(CuentaModel? primerCuenta, String codigoQr) async {
    var client = HttpClientHelper.getClient();

    primerCuenta ??= ref
        .read(posicionConsolidadaControllerProvider)
        .posicionConsolidada
        ?.cuentas
        .firstOrNull;

    var respuesta = await guard(
        () async => await client.consultaCuentaVinculadaQR(
            ConsultaCuentaVinculadaQRRequerimiento(value: codigoQr)),
        showError: false);

    if (respuesta.hasValue) {
      if (primerCuenta != null) {
        form.control('monto').setValidators([
          MontoPersonalizadoValidator(primerCuenta.saldo, montoDisponible: 500)
        ]);
        form.control('monto').updateValueAndValidity();
      }

      var valorPredefinido = respuesta.value?.account.amount ?? '0.00';

      if (!valorPredefinido.contains('.')) {
        valorPredefinido = '$valorPredefinido.00';
      }

      form.patchValue({'monto': '\$ $valorPredefinido'});

      if (respuesta.value?.account.qrType == 'dynamic') {
        form.control('monto').markAsDisabled();
      }

      state = state.copyWith(
          cuenta: primerCuenta,
          infoCuentaVinculada: respuesta.value,
          montoSoloLectura: valorPredefinido != '0.00',
          requerimientoProceso: null);
    } else {
      appRouter.replace(QrDeunaErrorRoute(
          errorCode:
              int.tryParse(respuesta.error?.toString() ?? '')?.toString() ??
                  ''));
    }
  }

  Future seleccionarCuenta() async {
    var respuesta =
        await appRouter.push<CuentaModel?>(const SeleccionCuentaRoute());

    if (respuesta != null) {
      form
          .control('monto')
          .setValidators([MontoPersonalizadoValidator(respuesta.saldo)]);
      form.control('monto').updateValueAndValidity();

      state = state.copyWith(cuenta: respuesta);
    }
  }

  Future validaPagoDeuna() async {
    if (!form.invalid) {
      var montoString =
          form.control('monto').value.toString().replaceAll('\$', '').trim();

      monto = double.tryParse(montoString.toString()) ?? 0;

      if (monto > 0.00) {
        state = state.copyWith(
            esValidacion: true,
            requerimientoProceso: ProcesaPagoQRRequerimiento(
                transactionId: state.infoCuentaVinculada!.transactionId,
                monto: monto,
                moneda: state.infoCuentaVinculada!.account.currencyCode,
                numeroCuenta: state.cuenta!.codigo,
                descripcion: obtenerDescipcionPago()));
      } else {
        NotificationService.showWarning(
            text: 'Cantidad ingresada no es válida');
      }
    } else {
      NotificationService.showWarning(
          text: 'Ingrese los datos necesarios para poder realizar el pago');
    }
  }

  Future continuar() async {
    if (!state.esValidacion) {
      validaPagoDeuna();
    }
  }

  Future cancelar() async {
    if (state.esValidacion) {
      state = state.copyWith(esValidacion: false);
    } else {
      await appRouter.pop();
    }
  }

  Future pagar() async {
    if (state.esValidacion) {
      var client = HttpClientHelper.getClient();

      var respuesta = await guard(
          () async => await client.procesaPagoQR(state.requerimientoProceso!),
          showError: false);

      if (respuesta.hasValue) {
        ref
            .read(posicionConsolidadaControllerProvider.notifier)
            .actualizaConsolidado(disableLoading: true);

        state = state.copyWith(
            esComprobante: true, respuestaProceso: respuesta.value);
      } else {
        appRouter.replace(TransaccionDeunaErrorRoute(
            errorCode:
                int.tryParse(respuesta.error?.toString() ?? '')?.toString() ??
                    ''));
      }
    }
  }

  String obtenerDescipcionPago() {
    return form.value['descripcion']?.toString() ?? '';
  }

  tomarCaptura() async {
    final bytes = await controller.capture();
    await Share.shareXFiles([
      XFile.fromData(
        bytes!,
        name: 'comprobante.png',
        mimeType: 'image/png',
      ),
    ], text: 'Pago Deuna!');
  }

  irInicio() async {
    appRouter.navigate(const PosicionConsolidadaRoute());
  }
}
