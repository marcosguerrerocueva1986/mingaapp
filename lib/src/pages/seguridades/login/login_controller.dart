import 'dart:convert';

import 'package:bancamovilr/index.dart';
import 'package:bancamovilr/src/providers/auth_storage_provider.dart';
import 'package:bancamovilr/src/services/auth_storage_service.dart';
import 'package:flutter_biometrics/flutter_biometrics.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
              await _authStorageService.saveAuthToken(respuesta.value!.token);
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
              //await _authStorageService.saveAuthToken(respuesta.value!.token!);
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
      SharedPreference preferences = SharedPreference();

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
          if (respuesta.value?.token != null) {
            await _authStorageService.saveAuthToken(respuesta.value!.token);
        }
        HttpClientHelper.token = respuesta.value?.token ?? '';
        state = state.copyWith(
            validacionOtpRespuesta: respuesta.value,
            estaValidado: false,
            modoConfirmacion: false);
            
        appRouter.replaceAll([const PosicionConsolidadaRoute()]);
      }
    }
  }
  void cancelar() {
    state = state.copyWith(loginRespuesta: null, modoConfirmacion: false);
  }

  void toggleOscurecerClave() {
    state = state.copyWith(obscurecerClave: !state.obscurecerClave);
  }

  Future<bool> tienePinAccesoRegistrado() async {
    SharedPreference preferences = SharedPreference();

    return Future.value(preferences.accesoPorHuellaHabilitado.val);
  }
  Future irACambioContrasenia() async {
    appRouter.replace(const CambiarContraseniaLoginRoute());
  }
  void logout(BuildContext context) {
    state = LoginState(permiteEditarUsuario: true); 
    context.router.replaceAll([const LoginPrincipalRoute()]);
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
            loginRespuesta: respuesta.value!.loginRespuesta,
            estaValidado: true,
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
