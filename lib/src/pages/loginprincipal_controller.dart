import 'dart:convert';

import 'package:bancamovilr/index.dart';
import 'package:flutter_biometrics/flutter_biometrics.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'loginprincipal_controller.g.dart';

@Riverpod(keepAlive: true)
class LoginPrincipalController extends _$LoginPrincipalController {
  final form = fb.group({
    'codigoUsuario': ['', Validators.required],
    'pwdUsuario': [''],
  });

  @override
  LoginPrincipalState build() {
    return const LoginPrincipalState();
  }

  Future<void> actualizaImagen() async {
    var client = HttpClientHelper.getClient();

    var respuesta = await guard(() async => await client.consultaImagenPrincipal(
      BaseRequerimiento(idUsuario: HttpClientHelper.idUsuario)));

    if (respuesta.hasValue) {
      state = state.copyWith(posicionConsolidada: respuesta.value, isLoading: false, errorMessage: null);
    }
  }
}