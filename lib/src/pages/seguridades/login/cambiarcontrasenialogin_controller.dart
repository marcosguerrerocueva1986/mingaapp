import 'dart:convert';

import 'package:bancamovilr/index.dart';
part 'cambiarcontrasenialogin_controller.g.dart';

@riverpod
class CambiarContraseniaLoginController extends _$CambiarContraseniaLoginController {
  final form = fb.group({
    'pwdAnterior': ['',Validators.required, Validators.minLength(8)],
    'pwdNueva': ['', Validators.required, Validators.minLength(8)],
    'pwdNuevaConfirmar': ['', Validators.required, Validators.minLength(8)],
  });

  CambiarContraseniaLoginState build() {
    ref.onDispose(() {
      form.dispose();
      print('✅ CambiarContraseniaController: FormGroup dispose llamado.');
    });
    return CambiarContraseniaLoginState(permiteEditarUsuario: true, obscurecerClave: true);
  }
  void confimarOtpRegistroCambioContraseniaLogin(String otp) async {
    if (state.modoConfirmacion) {
      SharedPreference preferences = SharedPreference();

      var client = HttpClientHelper.getClient();
      var requerimiento = RegistroRequerimiento.fromJson(form.value);

      requerimiento = requerimiento.copyWith(
          otpIngresado: otp);

      var respuesta = await guard(
          () async => await client.validaCodigoOtpRegistro(requerimiento));

      if (respuesta.hasValue) {
        appRouter.replace(const MiPerfilRoute());
      }
    }
  }
  void cambiarContraseniaLogin() async {
    if (form.valid)
    {
      var client = HttpClientHelper.getClient();
      var requerimiento = CambioClaveRequerimiento.fromJson(form.value);
      HttpClientHelper.testMode = requerimiento.codigoUsuario == Configs.userTest;
      var respuesta =  await guard(() async => await client.cambioClave(requerimiento));
      if (respuesta.hasValue) {    
          state = state.copyWith(modoConfirmacion: false);  
          NotificationService.showError(text: 'Cuenta Activada. Por favor ingresa con tu usuario y contraseña');
          appRouter.replace(const LoginRoute());
      } else {
        print("El usuario no esta disponible");
      }
    }
    else {
      form.markAllAsTouched();
    }
  }
  void toggleOscurecerClaveLogin() {
    state = state.copyWith(obscurecerClave: !state.obscurecerClave);
  }
  void cancelarLogin() {
    state = state.copyWith(modoConfirmacion: false);
  }
}