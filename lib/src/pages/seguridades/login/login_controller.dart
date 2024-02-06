import 'dart:convert';

import 'package:bancamovilr/index.dart';
import 'package:flutter_biometrics/flutter_biometrics.dart';

part 'login_controller.g.dart';

@riverpod
class LoginController extends _$LoginController {
  final form = fb.group({
    'codigoUsuario': Validators.required,
    'pwdUsuario': [],
  });

  @override
  LoginState build() {
    return LoginState(permiteEditarUsuario: true, obscurecerClave: true);
  }

  void login() async {
    if (form.valid) {
      var client = HttpClientHelper.getClient();
      var requerimiento = LoginRequerimiento.fromJson(form.value);

      HttpClientHelper.testMode =
          requerimiento.codigoUsuario == Configs.userTest;

      if (state.estaValidado) {
        var respuesta =
            await guard(() async => await client.login(requerimiento));

        if (respuesta.hasValue) {
          if (respuesta.value?.realizaCambioClave ?? true) {
            NotificationService.showError(
                text: 'Require cambio de Clave, realizar en sitio web');
          } else {
            HttpClientHelper.idUsuario = respuesta.value?.id ?? 0;
            HttpClientHelper.idRegistro = respuesta.value?.idRegistro ?? 0;
            state = state.copyWith(
                modoConfirmacion: true, loginRespuesta: respuesta.value);
          }
        }
      } else {
        var respuesta =
            await guard(() async => await client.validarUsuario(requerimiento));

        if (respuesta.hasValue) {
          state = state.copyWith(
              estaValidado: true,
              permiteEditarUsuario: false,
              informacionValidada: respuesta.value);
        }
      }
    } else {
      NotificationService.showError(text: 'Ingrese credenciales');
    }
  }

  void confimarOtpIngreso(String otp) async {
    if (state.modoConfirmacion) {
      SharedPreferences preferences = SharedPreferences();

      var client = HttpClientHelper.getClient();
      var requerimiento = LoginRequerimiento.fromJson(form.value);

      requerimiento = requerimiento.copyWith(
          otpIngresado: otp,
          idUsuario: state.loginRespuesta?.id ?? 0,
          idRegistro: state.loginRespuesta?.idRegistro ?? 0);

      var respuesta = await guard(
          () async => await client.validaCodigoOtpIngreso(requerimiento));

      if (respuesta.hasValue) {
        HttpClientHelper.token = respuesta.value?.token ?? '';
        state = state.copyWith(
            validacionOtpRespuesta: respuesta.value,
            estaValidado: false,
            modoConfirmacion: false);
        form.patchValue({'pwdUsuario': ''});
        preferences.idRegistro.val = state.loginRespuesta?.idRegistro ?? 0;
        appRouter.replace(const PosicionConsolidadaRoute());
      }
    }
  }

  void accesoPorHuella() async {
    var client = HttpClientHelper.getClient();
    SharedPreferences preferences = SharedPreferences();

    try {
      DateTime now = DateTime.now();
      var payload = now.toStringFormatFull();

      List<int> bytes = utf8.encode(payload);
      String encodedText = base64.encode(bytes);

      String signedData = await FlutterBiometrics().sign(
          payload: encodedText,
          reason: 'Pon tu dedo en el sensor para acceder');

      var respuesta = await guard(() async => await client.validaPinAcceso(
          ValidaPinAccesoRequerimiento(
              idRegistro: preferences.idRegistro.val,
              firma: signedData,
              textoOriginal: encodedText)));

      if (respuesta.hasValue) {
        HttpClientHelper.token = respuesta.value?.token ?? '';
        Configuracion.segundosInactividad =
            respuesta.value?.segundosInactividad ??
                Configuracion.segundosInactividad;

        state = state.copyWith(
            validacionOtpRespuesta: respuesta.value,
            estaValidado: false,
            modoConfirmacion: false);
        form.patchValue({'pwdUsuario': ''});
        appRouter.replace(const PosicionConsolidadaRoute());
      }
    } catch (e) {}
  }

  void cancelar() {
    state = state.copyWith(loginRespuesta: null, modoConfirmacion: false);
  }

  void toggleOscurecerClave() {
    state = state.copyWith(obscurecerClave: !state.obscurecerClave);
  }

  Future<bool> tienePinAccesoRegistrado() async {
    SharedPreferences preferences = SharedPreferences();

    return Future.value(preferences.accesoPorHuellaHabilitado.val);
  }
}
