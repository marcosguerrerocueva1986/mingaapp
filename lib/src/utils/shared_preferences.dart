import 'package:get_storage/get_storage.dart';

class SharedPreferences {
  final isDarkMode = false.val('isDarkmode');
  final accesoPorHuellaHabilitado = false.val('huella');
  final idRegistro = 0.val('idRegistro');
  final isTestMode = false.val('isTestMode');
}
