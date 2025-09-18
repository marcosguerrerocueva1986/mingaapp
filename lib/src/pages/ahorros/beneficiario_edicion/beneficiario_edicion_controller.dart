import 'package:bancamovilr/index.dart';

part 'beneficiario_edicion_controller.g.dart';

@riverpod
class BeneficiarioEdicionController extends _$BeneficiarioEdicionController {
  final form = fb.group({
    'numeroCuenta': ['', Validators.required],
    'identificacion': [''],
    'nombre': [''],
    'apellido': [''],
    'email': [''],
    'codigoTipoCuenta': [''],
    'codigoTipoId': [''],
    'idInstitucion': [0],
    'guardarContacto': <bool>[false],
  });

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
Future validaCuentaBeneficiario() async {
    if (!form.invalid) {
      var client = HttpClientHelper.getClient();
      String cuentabeneficiario = form.control('numeroCuenta').value as String;
      var respuesta = await guard(() async => await client
          .validaBeneficiarioCuentaInterno(ConsultaBeneficiarioRequerimiento(
              numeroCuenta: cuentabeneficiario)));

      if (respuesta.hasValue) {
          state = state.copyWith(beneficiario: respuesta.value?.beneficiario, esValidacion: false);
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
  
  irInicio() async {
    appRouter.navigate(const PosicionConsolidadaRoute());
  }
}
