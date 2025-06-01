import 'package:bancamovilr/index.dart';

part 'seleccion_concepto_controller.g.dart';


@riverpod
class SeleccionConceptoController
    extends _$SeleccionConceptoController {
  @override
  SeleccionConceptoState build() {
    return SeleccionConceptoState();
  }

  Future actualizaListaConceptos() async {
    var client = HttpClientHelper.getClient();

    var respuesta = await guard(() async => await client.consultaConceptos(
        BaseRequerimiento(idUsuario: HttpClientHelper.idUsuario)));

    if (respuesta.hasValue) {
      state = state.copyWith(
          conceptos: respuesta.value?.conceptoLista ?? []);
    }
  }

  // List<BeneficiarioModel> listaBeneficarioPorTipoTransferencia(
  //     TipoTransferencia tipoTransferencia) {
  //   if (tipoTransferencia == TipoTransferencia.interbancaria) {
  //     return state.beneficiarios
  //         .where((element) => !element.esInterno)
  //         .toList();
  //   } else if (tipoTransferencia == TipoTransferencia.directa) {
  //     return state.beneficiarios.where((element) => element.esInterno).toList();
  //   } else {
  //     var posicionConsolidadaController =
  //         ref.read(posicionConsolidadaControllerProvider);
  //     var misCuentas =
  //         posicionConsolidadaController.posicionConsolidada?.cuentas ?? [];

  //     return misCuentas
  //         .map((e) => BeneficiarioModel(
  //             id: 0,
  //             nombre: e.tipo,
  //             institucion: 'Cuenta Propia',
  //             numeroCuenta: e.codigo))
  //         .toList();
  //   }
  // }

  Future seleccionarConcepto() async {
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
