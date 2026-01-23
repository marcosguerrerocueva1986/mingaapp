import 'package:bancamovilr/index.dart';
import 'package:flutter_biometrics/flutter_biometrics.dart';
part 'estado_cuenta_controller.g.dart';

@riverpod
class EstadosCuentaController extends _$EstadosCuentaController {
  @override
  FutureOr<ConsultaMovimientosCuentaRespuesta> build(String numeroCuenta) async {
    return await _estadosCuenta(numeroCuenta);
  }

Future<ConsultaMovimientosCuentaRespuesta> _estadosCuenta(String numeroCuenta) async {
    final client = HttpClientHelper.getClient();
    try {
      final respuesta = await client.consultaEstadoCuenta(
        ConsultaMovimientosCuentaRequerimiento(codigoCuenta: numeroCuenta)
      );
      return respuesta;
    }catch (e) {
      return ConsultaMovimientosCuentaRespuesta(periodos: []);
    }
  }
}