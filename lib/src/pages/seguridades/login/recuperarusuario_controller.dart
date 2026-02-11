import 'dart:convert';

import 'package:bancamovilr/index.dart';
import 'package:bancamovilr/src/providers/auth_storage_provider.dart';
import 'package:bancamovilr/src/services/auth_storage_service.dart';
part 'recuperarusuario_controller.g.dart';

@riverpod
class RecuperarUsuarioController extends _$RecuperarUsuarioController {
  final form = fb.group({
    'identificacion': ['',Validators.required, Validators.minLength(10)],
  });
  late final AuthStorageService _authStorageService;
  @override
  RecuperarUsuarioState build() {
    ref.onDispose(() {
      form.reset(); 
      form.dispose();
      print('✅ RecuperarUsuarioController: FormGroup dispose llamado.');
    });
    return RecuperarUsuarioState(permiteEditarUsuario: true, obscurecerClave: true);
  }
  void olvideUsuario() async {
    if (form.valid)
    {
      var requerimiento = RegistroRequerimiento.fromJson(form.value);
      HttpClientHelper.testMode = true;
      var client = HttpClientHelper.getClient();
      var respuesta =  await guard(() async => await client.olvideUsuario(requerimiento));
      if (respuesta.hasValue) {    
          state = state.copyWith(modoConfirmacion: false);  
          NotificationService.showError(text: 'Se ha enviado el usuario a su correo');
          form.reset();
          appRouter.replace(const LoginRoute());
      } else {
        print("El usuario no esta disponible");
      }
    }
    else {
      form.markAllAsTouched();
    }
  }
  Future<bool> tienePinAccesoRegistrado() async {
    SharedPreference preferences = SharedPreference();

    return Future.value(preferences.accesoPorHuellaHabilitado.val);
  }
  
  void cancelar() {
    state = state.copyWith(modoConfirmacion: false);
  }
}