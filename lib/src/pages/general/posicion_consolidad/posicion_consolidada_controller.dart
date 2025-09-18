import 'package:bancamovilr/index.dart';
import 'package:flutter_biometrics/flutter_biometrics.dart';

part 'posicion_consolidada_controller.g.dart';

@Riverpod(keepAlive: true)
class PosicionConsolidadaController extends _$PosicionConsolidadaController {
  final form = fb.group({
    'codigoUsuario': Validators.required,
    'pwdUsuario': [],
  });

  @override
  PosicionConsolidadaState build() {
    return const PosicionConsolidadaState();
  }

  Future<void> actualizaConsolidado({disableLoading=false}) async {
    var client = HttpClientHelper.getClient();

    var respuesta = await guard(() async => await client.consultaConsolidado(
      BaseRequerimiento(idUsuario: HttpClientHelper.idUsuario)));

    if (respuesta.hasValue) {
      state = state.copyWith(posicionConsolidada: respuesta.value, isLoading: false, errorMessage: null);
    }
  }

  Future toogleAccesoPorHuella() async {
    try {
      SharedPreference preferences = SharedPreference();
      bool habilitado = preferences.accesoPorHuellaHabilitado.val;

      if (!habilitado) {
        String publicKeyAsBase64 = await FlutterBiometrics().createKeys(
            reason: 'Pon tu dedo en el sensor para habilitar el acceso');

        var client = HttpClientHelper.getClient();

        var respuesta = await guard(() async => await client.registraPinAcceso(
            RegistroPinAccesoRequerimiento(pinAcceso: publicKeyAsBase64)));

        if (respuesta.hasValue) {
          preferences.idRegistro.val = HttpClientHelper.idRegistro;
          preferences.accesoPorHuellaHabilitado.val = !habilitado;
          preferences.isTestMode.val = HttpClientHelper.testMode;

          state = state.copyWith();

          NotificationService.showSuccess(
              text: 'Acceso biométrico habilitado correctamente');
        }
      } else {
        eliminarAccesoHuella();

        NotificationService.showSuccess(
            text: 'Acceso biométrico deshabilitado correctamente');
      }
    } catch (e) {
      NotificationService.showError(text: 'Acceso biométrico no permitido');
    }
  }

  void eliminarAccesoHuella() {
    SharedPreference preferences = SharedPreference();
    preferences.idRegistro.val = 0;
    preferences.accesoPorHuellaHabilitado.val = false;

    state = state.copyWith();
  }

  Future cerrarSesion() async {
    var client = HttpClientHelper.getClient();
    var respuesta = await guard(() async => await client.logout());

    if (respuesta.hasValue) {
      HttpClientHelper.token = '';
      appRouter.replace(const LoginPrincipalRoute());
    }
  }

  List<CuentaModel>? listaCuentasParaTransferencia() {
      return state.posicionConsolidada?.cuentas
          .where((element) => element.permiteUsoBancaElectronica)
          .toList();
  }
}
