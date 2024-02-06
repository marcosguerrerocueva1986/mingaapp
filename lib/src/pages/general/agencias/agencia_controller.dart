import 'dart:async';

import 'package:bancamovilr/index.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'agencia_controller.g.dart';

@Riverpod(keepAlive: true)
class AgenciaController extends _$AgenciaController {
  @override
  AgenciaState build() {
    return AgenciaState();
  }

  Future cargaInformacionAgencia(
    Completer<GoogleMapController> mapController,
  ) async {
    var client = HttpClientHelper.getClient();

    var respuesta = await guard(() async =>
        await client.consultaAgenciasCajeros(
            BaseRequerimiento(idUsuario: HttpClientHelper.idUsuario)));

    if (respuesta.hasValue) {
      state = state.copyWith(
          agencias: respuesta.value!.agenciaCajeroLista
              .where((element) => !element.esCajero)
              .toList(),
          agenciaSeleccionada: respuesta.value!.agenciaCajeroLista
              .where((element) => !element.esCajero)
              .firstOrNull);

      irAgenciaMapa(mapController);
    }
  }

  Future seleccionarAgencia(Completer<GoogleMapController> mapController,
      AgenciaCajeroItem agencia) async {
    state = state.copyWith(agenciaSeleccionada: agencia);
    irAgenciaMapa(mapController);
  }

  Future<void> irAgenciaMapa(
      Completer<GoogleMapController> mapController) async {
    final GoogleMapController controller = await mapController.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(
            bearing: 192.8334901395799,
            target: LatLng(state.agenciaSeleccionada?.latitud ?? 0.00,
                state.agenciaSeleccionada?.longitud ?? 0.00),
            tilt: 59.440717697143555,
            zoom: 15)));
  }
}
