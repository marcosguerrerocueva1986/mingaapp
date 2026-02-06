import 'dart:convert';

import 'package:bancamovilr/index.dart';
part 'cambiarcontrasenia_controller.g.dart';

@riverpod
class CambiarContraseniaController extends _$CambiarContraseniaController {
  final form = fb.group({
    'pwdAnterior': ['',Validators.required, Validators.minLength(6)],
    'pwdNueva': ['', Validators.required, Validators.minLength(8)],
    'pwdNuevaConfirmar': ['', Validators.required, Validators.minLength(8)],
    }, [Validators.mustMatch('pwdNueva', 'pwdNuevaConfirmar')]);

  CambiarContraseniaState build() {
    ref.onDispose(() {
      form.dispose();
      print('✅ CambiarContraseniaController: FormGroup dispose llamado.');
    });
    return CambiarContraseniaState(permiteEditarUsuario: true, obscurecerClave: true);
  }
  void confimarOtpRegistroCambioContrasenia(String otp) async {
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
  void cambiarContrasenia(String codUsuario) async {
    if (form.valid)
    {
      var client = HttpClientHelper.getClient();
      var requerimiento = CambioClaveRequerimiento(
      codigoUsuario: codUsuario);
      HttpClientHelper.testMode = requerimiento.codigoUsuario == Configs.userTest;
      var respuesta =  await guard(() async => await client.cambioClave(requerimiento));
      if (respuesta.hasValue) {    
          state = state.copyWith(modoConfirmacion: false);  
          NotificationService.showSuccess(text: 'Contraseña Cambiada con éxito. Por favor ingresa con tu usuario y contraseña');
          await Future.delayed(const Duration(seconds: 3));
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