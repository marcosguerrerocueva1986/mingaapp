import 'dart:convert';

import 'package:bancamovilr/index.dart';
import 'package:bancamovilr/src/providers/auth_storage_provider.dart';
import 'package:bancamovilr/src/services/auth_storage_service.dart';
part 'activacuenta_controller.g.dart';

@riverpod
class ActivaCuentaController extends _$ActivaCuentaController {
  final form = fb.group({
    'identificacion': ['',Validators.required, Validators.minLength(10)],
    'codigoUsuario': ['', Validators.required],
  });
  @override
  ActivaCuentaState build() {
    ref.onDispose(() {
      form.dispose();
      print('✅ ActivaCuentaController: FormGroup dispose llamado.');
    });
    return ActivaCuentaState(permiteEditarUsuario: true, obscurecerClave: true);
  }

  void activarCuenta() async {
    if (form.valid){
      var requerimiento = RegistroRequerimiento.fromJson(form.value);
      HttpClientHelper.testMode = requerimiento.codigoUsuario == Configs.userTest;
      var client = HttpClientHelper.getClient();
      var respuesta =  await guard(() async => await client.activaCuenta(requerimiento));
      if (respuesta.hasValue) {      
          state = state.copyWith(modoConfirmacion: true);
      } else {
        print("El usuario no esta disponible");
      }
    }
  }
  void confimarOtpRegistro(String otp) async {
    if (state.modoConfirmacion) {
      SharedPreferences preferences = SharedPreferences();

      var client = HttpClientHelper.getClient();
      var requerimiento = RegistroRequerimiento.fromJson(form.value);

      requerimiento = requerimiento.copyWith(
          otpIngresado: otp);

      var respuesta = await guard(
          () async => await client.validaCodigoOtpRegistro(requerimiento));

      if (respuesta.hasValue) {
        appRouter.replace(const CambiarContraseniaLoginRoute());
      }
    }
  }
  void cancelar() {
    state = state.copyWith(modoConfirmacion: false);
  }
}