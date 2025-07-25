// lib/src/services/auth_storage_service.dart
import 'package:shared_preferences/shared_preferences.dart';

class AuthStorageService {
  // Nombres de las claves para almacenar en SharedPreferences
  static const String _tokenKey = 'auth_token';
  static const String _userIdKey = 'user_id';
  static const String _userNameKey = 'user_name'; // Ejemplo de otro dato

  // Instancia de SharedPreferences (se inicializará una vez)
  static SharedPreferences? _prefs;

  // Método para inicializar SharedPreferences
  // Es buena práctica llamarlo una vez al inicio de la app (ej. en main.dart)
  static Future<void> initialize() async {
    _prefs ??= await SharedPreferences.getInstance();
  }

  // --- Métodos para almacenar datos ---

  Future<void> saveAuthToken(String token) async {
    await _ensureInitialized(); // Asegura que _prefs esté inicializado
    await _prefs!.setString(_tokenKey, token);
    print('Token guardado: $token');
  }

  Future<void> saveUserId(int userId) async {
    await _ensureInitialized();
    await _prefs!.setString(_userIdKey, userId.toString());
    print('User ID guardado: $userId');
  }

  Future<void> saveUserName(String userName) async {
    await _ensureInitialized();
    await _prefs!.setString(_userNameKey, userName);
    print('User Name guardado: $userName');
  }

  // --- Métodos para obtener datos ---

  Future<String?> getToken() async {
    await _ensureInitialized();
    return _prefs!.getString(_tokenKey);
  }

  Future<String?> getUserId() async {
    await _ensureInitialized();
    return _prefs!.getString(_userIdKey);
  }

  Future<String?> getUserName() async {
    await _ensureInitialized();
    return _prefs!.getString(_userNameKey);
  }

  // --- Método para limpiar todos los datos de autenticación (logout) ---

  Future<void> clearAuthData() async {
    await _ensureInitialized();
    await _prefs!.remove(_tokenKey);
    await _prefs!.remove(_userIdKey);
    await _prefs!.remove(_userNameKey);
    print('Datos de autenticación limpiados.');
  }

  // Método privado para asegurar que _prefs esté inicializado
  Future<void> _ensureInitialized() async {
    if (_prefs == null) {
      await initialize();
    }
  }
}