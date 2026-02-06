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
      form.reset();
      appRouter.replace(const LoginPrincipalRoute());
      ref.invalidateSelf();
    }
  }

  List<CuentaModel>? listaCuentasParaTransferencia() {
      return state.posicionConsolidada?.cuentas
          .where((element) => element.permiteUsoBancaElectronica)
          .toList();
  }
  Future<void> guardaClienteLimite(double montoLimite) async {
    try {
      final client = HttpClientHelper.getClient();          
        var req = ClienteMontosLimite(
          idClienteRegistro: state.posicionConsolidada?.cliMontosLimites?.idClienteRegistro ?? 0,
          idCliente: HttpClientHelper.idUsuario,
          limiteTransaccion: montoLimite,
          fechaRegistro: DateTime.now(),
          fechaSistema: DateTime.now()
        );
        var respuesta = await guard(() async => await client.registroLimiteTransaccion(req));
        if (respuesta.hasValue) {
            ref.read(themeInfoProvider.notifier).cambiarColor('#B70055');
          state = state.copyWith(isLoading: false, errorMessage: null, posicionConsolidada: state.posicionConsolidada?.
          copyWith(cliMontosLimites:  state.posicionConsolidada?.cliMontosLimites?.copyWith(
            limiteTransaccion: montoLimite
          )));
        NotificationService.showSuccess(text: 'Mónto límite guardado correctamente');
        } else {
        NotificationService.showError(text: 'Mónto límite incorrecto');
        }
    } catch (e) {
      NotificationService.showError(text: 'Error de conexión');
    }
  }
}
