import 'package:bancamovilr/index.dart';

part 'deposito_detalle_controller.g.dart';

@riverpod
class DepositoDetalleController extends _$DepositoDetalleController {
  @override
  DepositoDetalleState build() {
    return DepositoDetalleState();
  }

  Future actualizaInformacion(InversionModel deposito) async {
    var client = HttpClientHelper.getClient();

    var respuesta = await guard(() async => await client
        .consultaDetalleInversion(ConsultaDetalleInversionRequerimiento(
            idUsuario: HttpClientHelper.idUsuario,
            codigoInversion: deposito.codigo)));

    if (respuesta.hasValue) {
      state =
          state.copyWith(deposito: deposito, respuestaDetalles: respuesta.value);
    }
  }
  Future<ConsultaMovimientosInversionRespuesta> movimientosInformacion(InversionModel deposito) async {
    var client = HttpClientHelper.getClient();

    var respuesta = await guard(() async => await client
        .consultaMovimientosInversion(ConsultaMovimientosInversionRequerimiento(
            idUsuario: HttpClientHelper.idUsuario,
            codigoCuenta: deposito.codigo,
            numeroRegistros: 15)));

    if (respuesta.hasValue) {
      return respuesta.value as ConsultaMovimientosInversionRespuesta;
    }
    else
    {
      return ConsultaMovimientosInversionRespuesta(movimientos: []);
    }
  }
}
