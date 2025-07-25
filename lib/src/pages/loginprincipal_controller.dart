import 'dart:convert';

import 'package:bancamovilr/index.dart';
import 'package:flutter_biometrics/flutter_biometrics.dart';
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

  void accesoPorHuella(String signedData) async {
    var client = HttpClientHelper.getClient();
    SharedPreferences preferences = SharedPreferences();

    try {
      DateTime now = DateTime.now();
      var payload = now.toStringFormatFull();

      List<int> bytes = utf8.encode(payload);
      String encodedText = base64.encode(bytes);

      var respuesta = await guard(() async => await client.validaPinAcceso(
          ValidaPinAccesoRequerimiento(
              idRegistro: int.parse(signedData),
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
      } else {
        SharedPreferences preferences = SharedPreferences();
        preferences.idRegistro.val = 0;
        preferences.accesoPorHuellaHabilitado.val = false;

        state = state.copyWith();

        NotificationService.showWarning(
            text:
                'Se han detectado cambios en tu acceso biométrico, se requiere que vuelvas a habilitar el acceso');
      }
    } catch (e) {}
  }
}