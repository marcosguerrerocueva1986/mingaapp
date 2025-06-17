import 'package:bancamovilr/index.dart';
import 'package:widgets_to_image/widgets_to_image.dart';

part 'abono_controller.g.dart';

@riverpod
class AbonoController extends _$AbonoController {
  final form = fb.group({
    'monto': [],
  });

  double monto = 0.00;
  WidgetsToImageController controller = WidgetsToImageController();

  @override
  AbonoState build() {
    return AbonoState();
  }

  Future inicializa(PrestamoModel? prestamoParametro) async {
    var primerCuenta = ref
        .read(posicionConsolidadaControllerProvider)
        .posicionConsolidada
        ?.cuentas.where((element) => element.permiteUsoBancaElectronica)
        .firstOrNull;

    if (primerCuenta != null) {
      state = state.copyWith(cuenta: primerCuenta, prestamo: prestamoParametro);
    }
  }

  Future seleccionarCuenta() async {
    var respuesta =
        await appRouter.push<CuentaModel?>(const SeleccionCuentaRoute());

    if (respuesta != null) {
      state = state.copyWith(cuenta: respuesta);
    }
  }

  Future seleccionarPrestamo() async {
    var respuesta =
        await appRouter.push<PrestamoModel?>(const SeleccionPrestamoRoute());

    if (respuesta != null) {
      state = state.copyWith(prestamo: respuesta);
    }
  }

  Future validaAbono() async {
    var client = HttpClientHelper.getClient();

    if (!form.invalid) {
      var montoString =
          form.value['monto'].toString().replaceAll('\$', '').trim();

      monto = double.tryParse(montoString.toString()) ?? 0;

      if (monto > 0.00) {
        var respuesta = await guard(() async => await client
            .validaAbonoPrestamoYGeneraOtp(ProcesaAbonoPrestamoRequerimiento(
                idUsuario: HttpClientHelper.idUsuario,
                cuentaDebito: state.cuenta?.codigo ?? '',
                codigoPrestamo: state.prestamo?.codigo ?? '',
                monto: monto,
                emailEnvio: '')));

        if (respuesta.hasValue) {
          state = state.copyWith(esValidacion: true);
        }
      } else {
        NotificationService.showWarning(
            text: 'Cantidad ingresada no es válida');
      }
    } else {
      NotificationService.showWarning(
          text: 'Ingrese los datos necesarios para poder realizar el abono');
    }
  }

  Future continuar() async {
    if (!state.esValidacion) {
      validaAbono();
    }
  }

  Future confirmarOtpTransferencia(String otp) async {
    if (state.esValidacion) {
      var client = HttpClientHelper.getClient();

      var respuesta = await guard(() async => await client.procesaAbonoPrestamo(
          ProcesaAbonoPrestamoRequerimiento(
              idUsuario: HttpClientHelper.idUsuario,
              cuentaDebito: state.cuenta?.codigo ?? '',
              codigoPrestamo: state.prestamo?.codigo ?? '',
              monto: monto,
              otpIngresado: otp,
              emailEnvio: '')));

      if (respuesta.hasValue) {
        state = state.copyWith(
            esComprobante: true, respuestaProceso: respuesta.value);
      }
    }
  }

  tomarCaptura() async {
    final bytes = await controller.capture();
    await Share.shareXFiles([
      XFile.fromData(
        bytes!,
        name: 'comprobante.png',
        mimeType: 'image/png',
      ),
    ], text: 'Comprobante Abono');
  }

  irInicio() async {
    appRouter.navigate(const PosicionConsolidadaRoute());
  }
}
