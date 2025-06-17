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
    return PosicionConsolidadaState();
  }

  Future actualizaConsolidado() async {
    var client = HttpClientHelper.getClient();

    var respuesta = await guard(() async => await client.consultaConsolidado(
        BaseRequerimiento(idUsuario: HttpClientHelper.idUsuario)));

    if (respuesta.hasValue) {
      state = state.copyWith(posicionConsolidada: respuesta.value);
    }
  }

  Future toogleAccesoPorHuella() async {
    try {
      SharedPreferences preferences = SharedPreferences();
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
              text: 'Acceso por huella habilitado correctamente');
        }
      } else {
        preferences.idRegistro.val = 0;
        preferences.accesoPorHuellaHabilitado.val = !habilitado;

        state = state.copyWith();

        NotificationService.showSuccess(
            text: 'Acceso por huella deshabilitado correctamente');
      }
    } catch (e) {
      NotificationService.showError(text: 'Acceso por huella no permitido');
    }
  }

  Future cerrarSesion() async {
    HttpClientHelper.token = '';
    appRouter.replace(LoginRoute());
  }

  List<CuentaModel>? listaCuentasParaTransferencia() {
      return state.posicionConsolidada?.cuentas
          .where((element) => element.permiteUsoBancaElectronica)
          .toList();
  }

}
