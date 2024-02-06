import 'package:bancamovilr/index.dart';

part 'prestamo_detalle_controller.g.dart';

@riverpod
class PrestamoDetalleController extends _$PrestamoDetalleController {
  @override
  PrestamoDetalleState build() {
    return PrestamoDetalleState();
  }

  Future actualizaInformacion(PrestamoModel prestamo) async {
    var client = HttpClientHelper.getClient();

    var respuesta = await guard(() async => await client
        .consultaDetallePrestamo(ConsultaDetallePrestamoRequerimiento(
            idUsuario: HttpClientHelper.idUsuario,
            codigoPrestamo: prestamo.codigo,
            fechaFin: DateTime.now(),
            fechaInicio: DateTime.now())));

    if (respuesta.hasValue) {
      state = state.copyWith(
          prestamo: prestamo, respuestaDetalles: respuesta.value);
    }
  }

  Future irAbono() async {
    appRouter.navigate(AbonoRoute(prestamoParametro: state.prestamo));
  }
}
