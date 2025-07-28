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

  Future actualizaConsolidado({bool disableLoading = false}) async {
    var client = HttpClientHelper.getClient();

    state = state.copyWith(isLoading: true, errorMessage: null);
    bootstrapNotifier.isDisabledLoading = disableLoading;

    try {
      var respuesta = await guard(() async => await client.consultaConsolidado(
        BaseRequerimiento(idUsuario: HttpClientHelper.idUsuario)));

      if (respuesta.hasValue) {
        state = state.copyWith(posicionConsolidada: respuesta.value, isLoading: false, errorMessage: null);
        print('Datos de posición consolidada cargados con éxito.');
      } else {
        String errorMsg = 'No se pudo cargar la posición consolidada. Intente de nuevo.';
        state = state.copyWith(
          posicionConsolidada: null, 
          isLoading: false,
          errorMessage: errorMsg,
        );
        print('Error al cargar datos de posición consolidada. Respuesta no tiene valor.');
        print('Detalle del error: $errorMsg');
      }
    } catch (e) {
      state = state.copyWith(
        posicionConsolidada: null,
        isLoading: false,
        errorMessage: 'Ocurrió un error inesperado: $e',
      );
      print('Excepción en actualizaConsolidado: $e');
    } finally {
      bootstrapNotifier.isDisabledLoading = false;
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
    SharedPreferences preferences = SharedPreferences();
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
