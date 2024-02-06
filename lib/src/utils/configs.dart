import 'package:envied/envied.dart';

part 'configs.g.dart';

@Envied()
abstract class Configs {
  @EnviedField(varName: 'BASE_URL')
  static const String baseUrl = _Configs.baseUrl;

  @EnviedField(varName: 'BASE_URL_TEST')
  static const String baseUrlTest = _Configs.baseUrlTest;

  @EnviedField(varName: 'BASE_URL_SITE')
  static const String baseUrlSite = _Configs.baseUrlSite;

  @EnviedField(varName: 'USER_TEST')
  static const String userTest = _Configs.userTest;

  @EnviedField(varName: 'NAME_APP')
  static const String nameApp = _Configs.nameApp;

  @EnviedField(varName: 'FULL_NAME_APP')
  static const String fullNameApp = _Configs.fullNameApp;
}

class Configuracion {
  static int segundosInactividad = 300;
  static DateTime ultimaVezActividad = DateTime.now();
}
