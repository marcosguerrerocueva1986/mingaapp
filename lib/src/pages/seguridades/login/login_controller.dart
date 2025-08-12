import 'dart:convert';

import 'package:bancamovilr/index.dart';
import 'package:bancamovilr/src/providers/auth_storage_provider.dart';
import 'package:bancamovilr/src/services/auth_storage_service.dart';
import 'package:flutter_biometrics/flutter_biometrics.dart';
part 'login_controller.g.dart';

@riverpod
class LoginController extends _$LoginController {
  final form = fb.group({
    'codigoUsuario': ['', Validators.required],
    'pwdUsuario': [''],
    });
late final AuthStorageService _authStorageService;
  @override
  LoginState build() {
    ref.onDispose(() {
      form.dispose();
      print('✅ LoginController: FormGroup dispose llamado.');
    });
    _authStorageService = ref.read(authStorageServiceProvider);
    return LoginState(permiteEditarUsuario: true, obscurecerClave: true);
  }

  void login() async {
    if (form.valid) {
      var requerimiento = LoginRequerimiento.fromJson(form.value);
      HttpClientHelper.testMode =
          requerimiento.codigoUsuario == Configs.userTest;

      var client = HttpClientHelper.getClient();
      var respuesta =
          await guard(() async => await client.validarUsuario(requerimiento));

      if (respuesta.hasValue) {
        state = state.copyWith(
            estaValidado: true,
            permiteEditarUsuario: false,
            informacionValidada: respuesta.value);
      }
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
            if (respuesta.value?.id != null) {
              await _authStorageService.saveUserId(respuesta.value!.id);
            }
            state = state.copyWith(
                modoConfirmacion: true, loginRespuesta: respuesta.value);
          }
        }
      } else {
        NotificationService.showError(text: 'Credenciales Incorrectas');
      }
    } else {
      NotificationService.showError(text: 'Ingrese sus credenciales');
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

  void restaurarContrasenia() async {
      var requerimiento = LoginRequerimiento.fromJson(form.value);
      HttpClientHelper.testMode =
          requerimiento.codigoUsuario == Configs.userTest;

      var client = HttpClientHelper.getClient();
      var respuesta =
          await guard(() async => await client.validarUsuario(requerimiento));

      if (respuesta.hasValue) {
        state = state.copyWith(
            estaValidado: true,
            permiteEditarUsuario: false,
            informacionValidada: respuesta.value);
      }
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
            if (respuesta.value?.id != null) {
              await _authStorageService.saveUserId(respuesta.value!.id);
            }
            state = state.copyWith(
                modoConfirmacion: true, loginRespuesta: respuesta.value);
          }
        }
      } else {
        NotificationService.showError(text: 'No existe el usuario ingresado');
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
        ref.read(themeInfoProvider.notifier).cambiarColor('#B70055');
        HttpClientHelper.token = respuesta.value?.token ?? '';
        state = state.copyWith(
            validacionOtpRespuesta: respuesta.value,
            estaValidado: false,
            modoConfirmacion: false);
        form.patchValue({'pwdUsuario': ''});
        preferences.idRegistro.val = state.loginRespuesta?.idRegistro ?? 0;
        appRouter.replaceAll([const PosicionConsolidadaRoute()]);
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
  Future irACambioContrasenia() async {
    appRouter.replace(const CambiarContraseniaLoginRoute());
  }
}
