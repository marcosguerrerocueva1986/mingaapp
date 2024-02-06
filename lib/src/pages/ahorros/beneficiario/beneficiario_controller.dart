import 'package:bancamovilr/index.dart';
import 'package:widgets_to_image/widgets_to_image.dart';

part 'beneficiario_controller.g.dart';

@riverpod
class BeneficiarioController extends _$BeneficiarioController {
  final form = fb.group({
    'monto': [Validators.required],
    'descripcion': ['', Validators.required],
    'emailEnvio': ['', Validators.required],
  });

  double monto = 0.00;
  WidgetsToImageController controller = WidgetsToImageController();

  @override
  BeneficiarioState build() {
    return BeneficiarioState();
  }

  Future inicializa() async {
    actualizaListaBeneficiarios();
  }

  Future actualizaListaBeneficiarios() async {
    var client = HttpClientHelper.getClient();

    var respuesta = await guard(() async => await client.consultaBeneficiarios(
        BaseRequerimiento(idUsuario: HttpClientHelper.idUsuario)));

    if (respuesta.hasValue) {
      state = state.copyWith(
          beneficiarios: respuesta.value?.beneficiarioLista ?? []);
    }
  }

  Future irEdicionBeneficiario(int id) async {}

  List<BeneficiarioModel> listaBeneficarioPorTipoTransferencia(
      TipoTransferencia tipoTransferencia) {
    if (tipoTransferencia == TipoTransferencia.interbancaria) {
      return state.beneficiarios
          .where((element) => !element.esInterno)
          .toList();
    } else if (tipoTransferencia == TipoTransferencia.directa) {
      return state.beneficiarios.where((element) => element.esInterno).toList();
    } else {
      var posicionConsolidadaController =
          ref.read(posicionConsolidadaControllerProvider);
      var misCuentas =
          posicionConsolidadaController.posicionConsolidada?.cuentas ?? [];

      return misCuentas
          .map((e) =>
              BeneficiarioModel(id: 0, nombre: e.tipo, numeroCuenta: e.codigo))
          .toList();
    }
  }

  Future agregarNuevoEditarBeneficiario(int id, bool esInterna) async {
    var resultado = await appRouter
        .push(BeneficiarioEdicionRoute(id: id, esInterno: esInterna));
    actualizaListaBeneficiarios();
  }

  Future seleccionarCuenta() async {
    // var respuesta =
    //     await appRouter.push<CuentaModel?>(const SeleccionCuentaRoute());

    // if (respuesta != null) {
    //   state = state.copyWith(cuenta: respuesta);
    // }
  }

  Future seleccionarBeneficiario(TipoTransferencia tipoTransferencia) async {
    // var respuesta = await appRouter.push<BeneficiarioModel?>(
    //     SeleccionBeneficiarioRoute(tipoTransferencia: tipoTransferencia));

    // if (respuesta != null) {
    //   state = state.copyWith(beneficiario: respuesta);
    // }
  }

  Future validaTransferencia(TipoTransferencia tipoTransferencia) async {
    var client = HttpClientHelper.getClient();

    if (!form.invalid) {
      var montoString = form.value['monto'];

      monto = double.tryParse(montoString.toString()) ?? 0;

      // if (monto >= 0.00) {
      //   var respuesta = await guard(() async =>
      //       await client.validaTransaferenciaYGeneraOtp(
      //           ValidaTransferenciaYGeneraOtpRequerimiento(
      //               idUsuario: HttpClientHelper.idUsuario,
      //               cuentaOrigen: state.cuenta?.codigo ?? '',
      //               esDirecta:
      //                   tipoTransferencia != TipoTransferencia.interbancaria,
      //               idBeneficiario: state.beneficiario?.id ?? 0,
      //               monto: monto,
      //               descripcion: form.value['descripcion'].toString(),
      //               emailEnvio: form.value['emailEnvio'].toString())));

      //   if (respuesta.hasValue) {
      //     state = state.copyWith(esValidacion: true);
      //   }
      // } else {
      //   NotificationService.showWarning(
      //       text: 'Cantidad ingresada no es válida');
      // }
    } else {
      NotificationService.showWarning(
          text:
              'Ingrese los datos necesarios para poder realizar la transferencia');
    }
  }

  Future continuar(TipoTransferencia tipoTransferencia) async {
    // if (!state.esValidacion) {
    //   validaTransferencia(tipoTransferencia);
    // }
  }

  Future confirmarOtpTransferencia(
      TipoTransferencia tipoTransferencia, String otp) async {
    // if (state.esValidacion) {
    //   var client = HttpClientHelper.getClient();

    //   if (tipoTransferencia == TipoTransferencia.interbancaria) {
    //     var respuesta = await guard(() async =>
    //         await client.procesaTransaferenciaInterbancaria(
    //             ProcesaTransferenciaDirectaRequerimiento(
    //                 idUsuario: HttpClientHelper.idUsuario,
    //                 cuentaOrigen: state.cuenta?.codigo ?? '',
    //                 idBeneficiario: state.beneficiario?.id ?? 0,
    //                 monto: monto,
    //                 otpIngresado: otp,
    //                 descripcion: form.value['descripcion'].toString(),
    //                 emailEnvio: form.value['emailEnvio'].toString())));

    //     if (respuesta.hasValue) {
    //       state = state.copyWith(
    //           esComprobante: true, respuestaProceso: respuesta.value);
    //     }
    //   } else {
    //     var respuesta = await guard(() async =>
    //         await client.ingresaTransferenciaDirecta(
    //             ProcesaTransferenciaDirectaRequerimiento(
    //                 idUsuario: HttpClientHelper.idUsuario,
    //                 cuentaOrigen: state.cuenta?.codigo ?? '',
    //                 idBeneficiario: state.beneficiario?.id ?? 0,
    //                 monto: monto,
    //                 otpIngresado: otp,
    //                 descripcion: form.value['descripcion'].toString(),
    //                 emailEnvio: form.value['emailEnvio'].toString())));

    //     if (respuesta.hasValue) {
    //       state = state.copyWith(
    //           esComprobante: true, respuestaProceso: respuesta.value);
    //     }
    //   }
    // }
  }

  tomarCaptura() async {
    final bytes = await controller.capture();
    await Share.shareXFiles([
      XFile.fromData(
        bytes!,
        name: 'comprobante.png',
        mimeType: 'image/png',
      ),
    ], text: 'Comprobante Transferencia');
  }

  irInicio() async {
    appRouter.navigate(const PosicionConsolidadaRoute());
  }
}
