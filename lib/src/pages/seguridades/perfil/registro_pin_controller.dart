import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:bancamovilr/index.dart';
part 'registro_pin_controller.g.dart';

@riverpod
class RegistroPinController extends _$RegistroPinController {
    @override
    RegistroPinState build(){
      final link = ref.keepAlive();
      ref.onDispose(() {
       print("RegistroPinController: Limpiando de forma segura.");
    });
      return RegistroPinState();
    }
    
    Future<void> RegistrarPin(String pin, int idUsuario) async {
      try {
        state = state.copyWith(isLoading: true);
        String salt = "MingaMovil_Secret_2026";
        var pinCifrado = pin + salt;
        var client = HttpClientHelper.getClient();
        
        var respuesta = await guard(() async => await client
        .registraPinAcceso(RegistroPinAccesoRequerimiento(
          pinAcceso: pinCifrado,
          idUsuario: idUsuario
        )));
        
      if (respuesta.hasValue){
        state = state.copyWith(modoConfirmacion: true, isLoading: false );
        NotificationService.showSuccess(text: 'Pin guardado correctamente');
      }
      else
      {
        NotificationService.showError(text: 'Pin no guardado');
        state = state.copyWith(isLoading: false );
      }
    } catch (e) {
      NotificationService.showError(text: 'Pin no permitido');
        state = state.copyWith(isLoading: false );
    }
  }
}

