import 'dart:convert';

import 'package:bancamovilr/index.dart';
import 'package:flutter_biometrics/flutter_biometrics.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'loginprincipal_controller.g.dart';

@riverpod
class LoginPrincipalController extends _$LoginPrincipalController {
  final form = fb.group({
    'codigoUsuario': ['', Validators.required],
    'pwdUsuario': [''],
  });

  @override
  LoginState build() {
    return LoginState(permiteEditarUsuario: true, obscurecerClave: true);
  }
}