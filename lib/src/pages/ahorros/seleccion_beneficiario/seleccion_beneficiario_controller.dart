import 'package:bancamovilr/index.dart';

part 'seleccion_beneficiario_controller.g.dart';

@riverpod
class SeleccionBeneficiarioController
    extends _$SeleccionBeneficiarioController {
  @override
  SeleccionBeneficiarioState build() {
    return SeleccionBeneficiarioState();
  }

  Future actualizaListaBeneficiarios() async {
    var client = HttpClientHelper.getClient();

    // bootstrapNotifier.isDisabledLoading = true;

    var respuesta = await guard(() async => await client.consultaBeneficiarios(
        BaseRequerimiento(idUsuario: HttpClientHelper.idUsuario)));

    if (respuesta.hasValue) {
      state = state.copyWith(
          beneficiarios: respuesta.value?.beneficiarioLista ?? []);
    }

    // bootstrapNotifier.isDisabledLoading = false;
  }

  List<BeneficiarioModel> listaBeneficarioPorTipoTransferencia() {
    var beneficiarios =  state.beneficiarios.toList();

    if (beneficiarios.count() > 0){
      return beneficiarios.toList();
    } else {
      var posicionConsolidadaController = ref.read(posicionConsolidadaControllerProvider);
      var misCuentas = posicionConsolidadaController.posicionConsolidada?.cuentas ?? [];

      return misCuentas
          .map((e) => BeneficiarioModel(
              id: 0,
              nombre: e.tipo,
              institucion: 'Cuenta Propia',
              numeroCuenta: e.codigo))
          .toList();
    }
  }

  Future seleccionarCuenta() async {
    // var respuesta =
    //     await appRouter.push<CuentaModel?>(const SeleccionCuentaRoute());

    // if (respuesta != null) {
    //   state = state.copyWith(cuenta: respuesta);
    // }

    // if (results?.isNotEmpty ?? false) {
    //   var client = HttpClientHelper.getClient();

    //   var respuesta = await guard(() async => await client
    //       .consultaMovimientosCuenta(ConsultaMovimientosCuentaRequerimiento(
    //           idUsuario: HttpClientHelper.idUsuario,
    //           codigoCuenta: state.cuenta?.codigo ?? '',
    //           fechaDesde: results?.first,
    //           fechaHasta: results?.last)));

    //   if (respuesta.hasValue) {
    //     state = state.copyWith(respuestaMovimientos: respuesta.value);
    //   }
    // }
  }
}
