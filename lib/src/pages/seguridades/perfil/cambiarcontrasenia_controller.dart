import 'dart:convert';

import 'package:bancamovilr/index.dart';
part 'cambiarcontrasenia_controller.g.dart';

@riverpod
class CambiarContraseniaController extends _$CambiarContraseniaController {
  final form = fb.group({
    'pwdAnterior': ['',Validators.required, Validators.minLength(8)],
    'pwdNueva': ['', Validators.required, Validators.minLength(8)],
    'pwdNuevaConfirmar': ['', Validators.required, Validators.minLength(8)],
  });

  CambiarContraseniaState build() {
    ref.onDispose(() {
      form.dispose();
      print('✅ CambiarContraseniaController: FormGroup dispose llamado.');
    });
    return CambiarContraseniaState(permiteEditarUsuario: true, obscurecerClave: true);
  }
  void confimarOtpRegistroCambioContrasenia(String otp) async {
    if (state.modoConfirmacion) {
      SharedPreferences preferences = SharedPreferences();

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
  void cambiarContrasenia() async {
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
  void toggleOscurecerClave() {
    state = state.copyWith(obscurecerClave: !state.obscurecerClave);
  }
  void cancelar() {
    state = state.copyWith(modoConfirmacion: false);
  }
}