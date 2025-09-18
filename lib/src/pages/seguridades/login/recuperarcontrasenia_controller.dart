import 'dart:convert';

import 'package:bancamovilr/index.dart';
import 'package:bancamovilr/src/providers/auth_storage_provider.dart';
import 'package:bancamovilr/src/services/auth_storage_service.dart';
part 'recuperarcontrasenia_controller.g.dart';

@riverpod
class RecuperarContraseniaController extends _$RecuperarContraseniaController {
  final form = fb.group({
    'codigoUsuario': ['',Validators.required],
  });
  late final AuthStorageService _authStorageService;
  @override
  RecuperarContraseniaState build() {
    ref.onDispose(() {
      form.reset(); 
      form.dispose();
      print('✅ RecuperarContraseniaController: FormGroup dispose llamado.');
    });
    return RecuperarContraseniaState(permiteEditarUsuario: true, obscurecerClave: true);
  }
  void validarUsuarioCambioContrasenia() async {
    if (form.valid){
        var requerimiento = LoginRequerimiento.fromJson(form.value);
        HttpClientHelper.testMode =
            requerimiento.codigoUsuario == Configs.userTest;

        var client = HttpClientHelper.getClient();
        var respuesta =
            await guard(() async => await client.validarUsuario(requerimiento));

        if (respuesta.hasValue) {
          state = state.copyWith(
              estaValidado: true,
              permiteEditarUsuario: false,);
        }
        if (state.estaValidado) {
          var requerimiento = RegistroRequerimiento.fromJson(form.value);
          var respuesta =
              await guard(() async => await client.generaClaveTemporalCambioContrasenia(requerimiento));
          if (respuesta.hasValue) {   
            appRouter.replace(const CambiarContraseniaLoginRoute());
          }
      }
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