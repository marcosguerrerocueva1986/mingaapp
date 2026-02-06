import 'dart:convert';

import 'package:bancamovilr/index.dart';
import 'package:bancamovilr/src/providers/auth_storage_provider.dart';
import 'package:bancamovilr/src/services/auth_storage_service.dart';
import 'package:crypto/crypto.dart';
import 'package:flutter_biometrics/flutter_biometrics.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'login_controller.g.dart';

@riverpod
class LoginController extends _$LoginController {
  final _storage = const FlutterSecureStorage();
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
              await _authStorageService.saveAuthToken(respuesta.value!.token);
              await _storage.write(key: 'idUsuario', value: respuesta.value!.id.toString());
              await _storage.write(key: 'idRegistro', value: respuesta.value!.idRegistro.toString());
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
            HttpClientHelper.token = respuesta.value!.token;
        }
        HttpClientHelper.idUsuario = state.loginRespuesta?.id ?? 0;
        HttpClientHelper.idRegistro = state.loginRespuesta?.idRegistro ?? 0;
        await _storage.write(key: 'idUsuario', value: state.loginRespuesta!.id.toString());
        await _storage.write(key: 'idRegistro', value: state.loginRespuesta!.idRegistro.toString());
        await _storage.write(key: 'codigoUsuario', value: requerimiento.codigoUsuario);
        await _storage.write(key: 'biometric_token', value: respuesta.value!.token);
        String nombreUsuario = respuesta.value!.usuario!.nombre;
          NotificationService.showSuccess(text: '¡Bienvenido(a), $nombreUsuario!',);
          await Future.delayed(const Duration(milliseconds: 000));
        state = state.copyWith(
            validacionOtpRespuesta: respuesta.value,
            estaValidado: true,
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
    appRouter.replace(CambiarContraseniaLoginRoute(codigoUsuario: ""));
  }
  void logout(BuildContext context) {
    form.reset();
    state = LoginState(permiteEditarUsuario: true); 
    context.router.replaceAll([const LoginPrincipalRoute()]);
  }

  void accesoPorHuella(String accessToken) async {
    final client = HttpClientHelper.getClient();

    String? codigoPersistente = await _storage.read(key: 'codigoUsuario');
    String? idPersistente = await _storage.read(key: 'idUsuario');

    int idUsuarioActual = int.tryParse(idPersistente ?? '0') ?? 0;
    String? codigoUsuarioActual = codigoPersistente;
    
    if (idUsuarioActual == 0 || codigoUsuarioActual == null || codigoUsuarioActual.isEmpty) {
      NotificationService.showWarning(text: 'Datos de sesión no encontrados. Ingrese manualmente.');
      return;
    } 
    try {
      final respuesta = await guard(() async => await client.validaAccesoBiometrico(
            ValidacionOtpAccesoRespuesta(token: accessToken)));
      
      if (respuesta.hasValue && respuesta.value?.token != null && respuesta.value!.token.isNotEmpty) {
          ref.read(themeInfoProvider.notifier).cambiarColor('#B70055');
          HttpClientHelper.token = respuesta.value!.token;

          await _authStorageService.saveAuthToken(respuesta.value!.token);

          HttpClientHelper.idUsuario = respuesta.value?.loginRespuesta?.id ?? idUsuarioActual;
          HttpClientHelper.idRegistro = respuesta.value?.loginRespuesta?.idRegistro ?? 0;
          await _storage.write(key: 'idUsuario', value: HttpClientHelper.idUsuario.toString());
          await _storage.write(key: 'idRegistro', value: HttpClientHelper.idRegistro.toString());
          String nombreUsuario = respuesta.value!.usuario!.nombre;
          NotificationService.showSuccess(text: '¡Bienvenido(a), $nombreUsuario!',);
          await Future.delayed(const Duration(milliseconds: 000));
          state = state.copyWith(
              validacionOtpRespuesta: respuesta.value,
              loginRespuesta: respuesta.value!.loginRespuesta,
              estaValidado: true,
              modoConfirmacion: false);
          appRouter.replaceAll([const PosicionConsolidadaRoute()]);
      } else {
        await _storage.delete(key: 'biometric_token');
        NotificationService.showWarning(text: 'Acceso biométrico inválido. Por favor, vuelva a iniciar sesión.');
        state = state.copyWith(estaValidado: false);
      }
    } catch (e) {
      NotificationService.showError(text: 'Error de conexión: Verifique su internet.');
    }
  }
  Future<void> loginConPin(String pin) async {
    try {
      SharedPreference preference = SharedPreference();
      final preferences = await SharedPreferences.getInstance();
      final client = HttpClientHelper.getClient();
      int idUsuarioActual = state.loginRespuesta?.id ?? 0;
      String? codigoUsuarioActual = LoginClienteRequerimiento.fromJson(form.value).codigoUsuario;
      if (idUsuarioActual == 0 || codigoUsuarioActual == null) {
        String? idPersistente = await _storage.read(key: 'idUsuario');
        idUsuarioActual = int.tryParse(idPersistente ?? '0') ?? 0;
        codigoUsuarioActual = await _storage.read(key: 'codigoUsuario');
      } 
      String salt = "MingaMovil_Secret_2026";
      var pinCifrado = pin + salt;
      var req = LoginClienteRequerimiento(
        idUsuario: idUsuarioActual,
        codigoUsuario: codigoUsuarioActual!,
        otpIngresado: pinCifrado
      );
      var respuesta = await guard(() async => await client.validaPinAccesoMovil(req));
      if (respuesta.hasValue && respuesta.value?.token != null) {
        if (respuesta.value!.token.isNotEmpty)
        {
          ref.read(themeInfoProvider.notifier).cambiarColor('#B70055');
            HttpClientHelper.token = respuesta.value!.token;
            await _authStorageService.saveAuthToken(respuesta.value!.token);
            HttpClientHelper.idUsuario = respuesta.value?.loginRespuesta?.id ?? idUsuarioActual;
            HttpClientHelper.idRegistro = respuesta.value?.loginRespuesta?.idRegistro ?? 0;
            await _storage.write(key: 'idUsuario', value: HttpClientHelper.idUsuario.toString());
            await _storage.write(key: 'idRegistro', value: HttpClientHelper.idRegistro.toString());
            String nombreUsuario = respuesta.value!.usuario!.nombre;
            NotificationService.showSuccess(text: '¡Bienvenido(a), $nombreUsuario!',);
            await Future.delayed(const Duration(milliseconds: 000));
            state = state.copyWith(
                validacionOtpRespuesta: respuesta.value,
                loginRespuesta: respuesta.value!.loginRespuesta,
                estaValidado: true,
                modoConfirmacion: false);
            appRouter.replaceAll([const PosicionConsolidadaRoute()]);
        }
        else {
          NotificationService.showError(text: 'El usuario no tiene activado el PIN');
        }
      } else {
        NotificationService.showError(text: 'PIN incorrecto');
      }
    } catch (e) {
      NotificationService.showError(text: 'Error de conexión');
    }
  }
}
