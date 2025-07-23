import 'package:get_storage/get_storage.dart';

SharedPreferences sharedPreferences = SharedPreferences();

class SharedPreferences {
  final _box = GetStorage();

  final isDarkMode = false.val('isDarkmode');
  final accesoPorHuellaHabilitado = false.val('huella');
  final idRegistro = 0.val('idRegistro');
  final isTestMode = false.val('isTestMode');
  final color = '#0055b7'.val('username');

  final onBoardingDeunaMostrado = false.val('onBoardingDeunaMostrado');

  List<int> get serviciosFavoritos {
    final raw = _box.read('serviciosFavoritos');
    if (raw is List) {
      return raw.whereType<int>().toList();
    }
    return [];
  }

  set serviciosFavoritos(List<int> value) =>
      _box.write('serviciosFavoritos', value);
}
