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

  void accesoPorHuella(String accessToken) async {
    SharedPreference preference = SharedPreference();
    final preferences = await SharedPreferences.getInstance();
    final client = HttpClientHelper.getClient();
    var requerimiento = LoginRequerimiento.fromJson(form.value);

    requerimiento = requerimiento.copyWith(
        idUsuario: state.loginRespuesta?.id ?? 0,
        idRegistro: state.loginRespuesta?.idRegistro ?? 0);

    try {
      final respuesta = await guard(() async => await client.validaAccesoBiometrico(
            ValidacionOtpAccesoRespuesta(token: accessToken)));
      if (respuesta.hasValue) {
        ref.read(themeInfoProvider.notifier).cambiarColor('#B70055');
        HttpClientHelper.token = respuesta.value?.token ?? '';
        state = state.copyWith(
            validacionOtpRespuesta: respuesta.value,
            estaValidado: false,
            modoConfirmacion: false);
        appRouter.replaceAll([const PosicionConsolidadaRoute()]);
      } else {
        await preferences.setInt('idRegistro', 0);
        await preferences.setBool('accesoPorHuellaHabilitado', false);
        NotificationService.showWarning(
            text: 'Acceso biométrico inválido. Por favor, vuelva a iniciar sesión.');
      }
    } catch (e) {
      NotificationService.showError(text: 'Ocurrió un error inesperado: $e');
    }
  }
}