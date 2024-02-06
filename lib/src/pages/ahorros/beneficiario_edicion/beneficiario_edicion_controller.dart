import 'package:bancamovilr/index.dart';
import 'package:widgets_to_image/widgets_to_image.dart';

part 'beneficiario_edicion_controller.g.dart';

@riverpod
class BeneficiarioEdicionController extends _$BeneficiarioEdicionController {
  final form = fb.group({
    'numeroCuenta': ['', Validators.required],
    'identificacion': [''],
    'nombre': [''],
    'email': [''],
    'codigoTipoCuenta': [''],
    'codigoTipoId': [''],
    'idInstitucion': [0],
  });

  double monto = 0.00;
  WidgetsToImageController controller = WidgetsToImageController();

  @override
  BeneficiarioEdicionState build() {
    return BeneficiarioEdicionState();
  }

  Future inicializa(int id, bool esInterno) async {
    state = state.copyWith(esInterno: esInterno);

    if (id > 0) {
      var beneficiario = ref
          .read(beneficiarioControllerProvider)
          .beneficiarios
          .where((element) => element.id == id)
          .firstOrNull;

      if (beneficiario != null) {
        state = state.copyWith(beneficiario: beneficiario, esValidacion: true);
      }
    } else if (!esInterno) {
      var client = HttpClientHelper.getClient();

      var respuesta = await guard(() async =>
          await client.consultaRequisitosBeneficiarios(BaseRequerimiento()));

      if (respuesta.hasValue) {
        state = state.copyWith(requisitosRespuesta: respuesta.value);
      }
    }
  }

  Future actualizaListaBeneficiarios() async {
    ref
        .read(beneficiarioControllerProvider.notifier)
        .actualizaListaBeneficiarios();
  }

  Future verificarYGenerarOtp() async {
    if (!form.invalid) {
      var client = HttpClientHelper.getClient();
      var beneficiario = BeneficiarioModel.fromJson(form.value);
      beneficiario = beneficiario.copyWith(esInterno: state.esInterno);

      var respuesta = await guard(() async => await client
          .generaOtpBeneficiario(MantenimientoBeneficiarioRequerimiento(
              beneficiario: beneficiario)));

      if (respuesta.hasValue) {
        state = state.copyWith(
            beneficiario: respuesta.value?.beneficiario, esValidacion: true);
      }
    }
  }

  Future eliminarBeneficiario() async {
    NotificationService.showConfirm(
        text:
            'Está seguro de eliminar el beneficiario ${state.beneficiario?.nombre}?',
        onConfirmBtnTap: () async {
          var client = HttpClientHelper.getClient();
          var respuesta = await guard(() async =>
              await client.eliminaBeneficiario(state.beneficiario!));

          if (respuesta.hasValue) {
            await actualizaListaBeneficiarios();
            // await appRouter.navigate(const BeneficiarioRoute());
            await appRouter.pop();
            await appRouter.pop();
            NotificationService.showSuccess(text: 'Beneficiario eliminado');
          }
        });
  }

  Future guardaBeneficiario(String otp) async {
    if (state.esValidacion) {
      var client = HttpClientHelper.getClient();

      var respuesta = await guard(() async => await client
          .mantenimientoBeneficiario(MantenimientoBeneficiarioRequerimiento(
              beneficiario: state.beneficiario, otpIngresado: otp)));

      if (respuesta.hasValue) {
        await actualizaListaBeneficiarios();
        await appRouter.pop();
        await appRouter.pop();
        // await appRouter.navigate(const BeneficiarioRoute());
        NotificationService.showSuccess(
            text: 'Beneficiario registrado correctamente');
      }
    }
  }

  Future seleccionarCuenta() async {
    // var respuesta =
    //     await appRouter.push<CuentaModel?>(const SeleccionCuentaRoute());

    // if (respuesta != null) {
    //   state = state.copyWith(cuenta: respuesta);
    // }
  }

  Future seleccionarBeneficiario(TipoTransferencia tipoTransferencia) async {
    // var respuesta = await appRouter.push<BeneficiarioModel?>(
    //     SeleccionBeneficiarioRoute(tipoTransferencia: tipoTransferencia));

    // if (respuesta != null) {
    //   state = state.copyWith(beneficiario: respuesta);
    // }
  }

  Future validaTransferencia(TipoTransferencia tipoTransferencia) async {
    var client = HttpClientHelper.getClient();

    if (!form.invalid) {
      var montoString = form.value['monto'];

      monto = double.tryParse(montoString.toString()) ?? 0;

      // if (monto >= 0.00) {
      //   var respuesta = await guard(() async =>
      //       await client.validaTransaferenciaYGeneraOtp(
      //           ValidaTransferenciaYGeneraOtpRequerimiento(
      //               idUsuario: HttpClientHelper.idUsuario,
      //               cuentaOrigen: state.cuenta?.codigo ?? '',
      //               esDirecta:
      //                   tipoTransferencia != TipoTransferencia.interbancaria,
      //               idBeneficiario: state.beneficiario?.id ?? 0,
      //               monto: monto,
      //               descripcion: form.value['descripcion'].toString(),
      //               emailEnvio: form.value['emailEnvio'].toString())));

      //   if (respuesta.hasValue) {
      //     state = state.copyWith(esValidacion: true);
      //   }
      // } else {
      //   NotificationService.showWarning(
      //       text: 'Cantidad ingresada no es válida');
      // }
    } else {
      NotificationService.showWarning(
          text:
              'Ingrese los datos necesarios para poder realizar la transferencia');
    }
  }

  Future continuar(TipoTransferencia tipoTransferencia) async {
    // if (!state.esValidacion) {
    //   validaTransferencia(tipoTransferencia);
    // }
  }

  Future confirmarOtpTransferencia(
      TipoTransferencia tipoTransferencia, String otp) async {
    // if (state.esValidacion) {
    //   var client = HttpClientHelper.getClient();

    //   if (tipoTransferencia == TipoTransferencia.interbancaria) {
    //     var respuesta = await guard(() async =>
    //         await client.procesaTransaferenciaInterbancaria(
    //             ProcesaTransferenciaDirectaRequerimiento(
    //                 idUsuario: HttpClientHelper.idUsuario,
    //                 cuentaOrigen: state.cuenta?.codigo ?? '',
    //                 idBeneficiario: state.beneficiario?.id ?? 0,
    //                 monto: monto,
    //                 otpIngresado: otp,
    //                 descripcion: form.value['descripcion'].toString(),
    //                 emailEnvio: form.value['emailEnvio'].toString())));

    //     if (respuesta.hasValue) {
    //       state = state.copyWith(
    //           esComprobante: true, respuestaProceso: respuesta.value);
    //     }
    //   } else {
    //     var respuesta = await guard(() async =>
    //         await client.ingresaTransferenciaDirecta(
    //             ProcesaTransferenciaDirectaRequerimiento(
    //                 idUsuario: HttpClientHelper.idUsuario,
    //                 cuentaOrigen: state.cuenta?.codigo ?? '',
    //                 idBeneficiario: state.beneficiario?.id ?? 0,
    //                 monto: monto,
    //                 otpIngresado: otp,
    //                 descripcion: form.value['descripcion'].toString(),
    //                 emailEnvio: form.value['emailEnvio'].toString())));

    //     if (respuesta.hasValue) {
    //       state = state.copyWith(
    //           esComprobante: true, respuestaProceso: respuesta.value);
    //     }
    //   }
    // }
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
}
