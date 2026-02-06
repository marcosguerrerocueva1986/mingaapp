import 'package:bancamovilr/index.dart';
import 'package:widgets_to_image/widgets_to_image.dart';

part 'transferencia_controller.g.dart';

@riverpod
class TransferenciaController extends _$TransferenciaController {
  final form = fb.group({
    'monto': ['0.00', MontoPersonalizadoValidator(0.00)],
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
    state = TransferenciaState();
    form.reset(); 
    primerCuenta ??= ref
          .read(posicionConsolidadaControllerProvider)
          .posicionConsolidada
          ?.cuentas.where((element) => element.permiteUsoBancaElectronica)
          .firstOrNull;

    state = state.copyWith(
      esComprobante: false,
      esValidacion: false,  
    );

    if (primerCuenta != null) {
      form
          .control('monto')
          .setValidators([MontoPersonalizadoValidator(primerCuenta.saldo)]);
      form.control('monto').updateValueAndValidity();

      var client = HttpClientHelper.getClient();
      state = state.copyWith(cuenta: primerCuenta);
      bootstrapNotifier.isDisabledLoading = true;

      var respuesta = await guard(() async =>
          await client.consultaRequisitosTransferenciaInterbancaria(
              BaseRequerimiento(idUsuario: HttpClientHelper.idUsuario)));

      if (respuesta.hasValue) {
        state = state.copyWith(
            requisitosTransferencia: respuesta.value, cuenta: primerCuenta);
      } else {
        state = state.copyWith(cuenta: primerCuenta);
      }

      bootstrapNotifier.isDisabledLoading = false;
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

  Future<void> seleccionarBeneficiario(TipoTransferencia tipoTransferencia) async {
    var respuesta = await appRouter.push<BeneficiarioModel?>(const SeleccionBeneficiarioRoute());
    if (respuesta != null) {
      form.patchValue({'emailEnvio': respuesta.email});
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
            await client.validaTransaferenciaDiariaYGeneraOtp(
                ValidaTransferenciaYGeneraOtpRequerimiento(
                    idUsuario: HttpClientHelper.idUsuario,
                    cuentaOrigen: state.cuenta?.codigo ?? '',
                    cuentaDestino: (state.beneficiario?.id ?? 0) == 0
                        ? (state.beneficiario?.numeroCuenta ?? '')
                        : (state.beneficiario?.numeroCuenta ?? ''),
                   codigoConcepto: (state.concepto?.codigo ?? ''),
                    esDirecta:
                        tipoTransferencia != TipoTransferencia.interbancaria,
                    idBeneficiario: state.beneficiario?.id ?? 0,
                    beneficiario: state.beneficiario,
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

  Future continuar(TipoTransferencia tipoTransferencia, BeneficiarioModel beneficiario) async {
    if (!state.esValidacion) {
      state = state.copyWith(beneficiario: beneficiario);
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
          ref
              .read(posicionConsolidadaControllerProvider.notifier)
              .actualizaConsolidado(disableLoading: true);

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

  String obtenerDescipcionTransferencia() {
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
