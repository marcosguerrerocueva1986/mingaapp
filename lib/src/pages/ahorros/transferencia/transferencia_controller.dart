import 'package:bancamovilr/index.dart';
import 'package:widgets_to_image/widgets_to_image.dart';

part 'transferencia_controller.g.dart';

@riverpod
class TransferenciaController extends _$TransferenciaController {
  final form = fb.group({
    'monto': [],
    'descripcion': ['', Validators.required],
    'emailEnvio': ['', Validators.required],
  });

  double monto = 0.00;
  WidgetsToImageController controller = WidgetsToImageController();

  @override
  TransferenciaState build() {
    return TransferenciaState();
  }

  Future inicializa(CuentaModel? primerCuenta) async {
    primerCuenta ??= ref
          .read(posicionConsolidadaControllerProvider)
          .posicionConsolidada
          ?.cuentas
          .firstOrNull;

    if (primerCuenta != null) {
      state = state.copyWith(cuenta: primerCuenta);
    }
  }

  Future seleccionarCuenta() async {
    var respuesta =
        await appRouter.push<CuentaModel?>(const SeleccionCuentaRoute());

    if (respuesta != null) {
      state = state.copyWith(cuenta: respuesta);
    }
  }

  Future seleccionarBeneficiario(TipoTransferencia tipoTransferencia) async {
    var respuesta = await appRouter.push<BeneficiarioModel?>(
        SeleccionBeneficiarioRoute(tipoTransferencia: tipoTransferencia));

    if (respuesta != null) {
      state = state.copyWith(beneficiario: respuesta);
    }
  }

  Future validaTransferencia(TipoTransferencia tipoTransferencia) async {
    var client = HttpClientHelper.getClient();

    if (!form.invalid) {
      var montoString =
          form.value['monto'].toString().replaceAll('\$', '').trim();

      monto = double.tryParse(montoString.toString()) ?? 0;

      if (monto > 0.00) {
        var respuesta = await guard(() async =>
            await client.validaTransaferenciaYGeneraOtp(
                ValidaTransferenciaYGeneraOtpRequerimiento(
                    idUsuario: HttpClientHelper.idUsuario,
                    cuentaOrigen: state.cuenta?.codigo ?? '',
                    cuentaDestino: (state.beneficiario?.id ?? 0) == 0
                        ? (state.beneficiario?.numeroCuenta ?? '')
                        : '',
                   codigoConcepto: (state.concepto?.codigo ?? ''),
                    esDirecta:
                        tipoTransferencia != TipoTransferencia.interbancaria,
                    idBeneficiario: state.beneficiario?.id ?? 0,
                    monto: monto,
                    descripcion: form.value['descripcion'].toString(),
                    emailEnvio: form.value['emailEnvio'].toString())));

        if (respuesta.hasValue) {
          state = state.copyWith(esValidacion: true);
        }
      } else {
        NotificationService.showWarning(
            text: 'Cantidad ingresada no es válida');
      }
    } else {
      NotificationService.showWarning(
          text:
              'Ingrese los datos necesarios para poder realizar la transferencia');
    }
  }

  Future continuar(TipoTransferencia tipoTransferencia) async {
    if (!state.esValidacion) {
      validaTransferencia(tipoTransferencia);
    }
  }

  Future cancelar() async {
    if (state.esValidacion) {
      state = state.copyWith(esValidacion: false);
    } else {
      await appRouter.pop();
    }
  }

  Future confirmarOtpTransferencia(
      TipoTransferencia tipoTransferencia, String otp) async {
    if (state.esValidacion) {
      var client = HttpClientHelper.getClient();

      if (tipoTransferencia == TipoTransferencia.interbancaria) {
        var respuesta = await guard(() async =>
            await client.procesaTransaferenciaInterbancaria(
                ProcesaTransferenciaDirectaRequerimiento(
                    idUsuario: HttpClientHelper.idUsuario,
                    cuentaOrigen: state.cuenta?.codigo ?? '',
                    idBeneficiario: state.beneficiario?.id ?? 0,
                    monto: monto,
                    otpIngresado: otp,
                    codigoConcepto: state.concepto?.codigo ?? '',
                    descripcion: form.value['descripcion'].toString(),
                    emailEnvio: form.value['emailEnvio'].toString())));

        if (respuesta.hasValue) {
          state = state.copyWith(
              esComprobante: true, respuestaProceso: respuesta.value);
        }
      } else {
        var respuesta = await guard(() async =>
            await client.ingresaTransferenciaDirecta(
                ProcesaTransferenciaDirectaRequerimiento(
                    idUsuario: HttpClientHelper.idUsuario,
                    cuentaOrigen: state.cuenta?.codigo ?? '',
                    cuentaDestino: (state.beneficiario?.id ?? 0) == 0
                        ? (state.beneficiario?.numeroCuenta ?? '')
                        : '',
                    idBeneficiario: state.beneficiario?.id ?? 0,
                    monto: monto,
                    otpIngresado: otp,
                    descripcion: form.value['descripcion'].toString(),
                    emailEnvio: form.value['emailEnvio'].toString())));

        if (respuesta.hasValue) {
          state = state.copyWith(
              esComprobante: true, respuestaProceso: respuesta.value);
        }
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
    ], text: 'Comprobante Transferencia');
  }

  irInicio() async {
    appRouter.navigate(const PosicionConsolidadaRoute());
  }


    Future seleccionarConcepto() async {
    var respuesta =
        await appRouter.push<ConceptoModel?>(const SeleccionConceptoRoute());

    if (respuesta != null) {
      state = state.copyWith(concepto: respuesta);
    }
  }
}
