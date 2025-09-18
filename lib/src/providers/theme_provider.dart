import 'package:bancamovilr/index.dart';
import 'package:bancamovilr/src/utils/shared_preferences.dart';
import 'package:get_storage/get_storage.dart';

part 'theme_provider.g.dart';

@riverpod
class ThemeInfo extends _$ThemeInfo {
  SharedPreference preferences = SharedPreference();

  @override
  ThemeMode build() {
    return obtenerTema(preferences.isDarkMode.val);
  }

  ThemeMode obtenerTema(bool isDarkMode) {
    var option = isDarkMode ? ThemeMode.dark : ThemeMode.light;
    state = option;
    return option;
  }

  void cambiarModo() {
    final isDarkMode = !preferences.isDarkMode.val;
    preferences.isDarkMode.val = isDarkMode;
    state = obtenerTema(isDarkMode);
  }

  void cambiarColor(String color) {
    if (color != '') {
      state = obtenerTema(false);
      preferences.color.val = color;
    }
  }


}
