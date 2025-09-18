// lib/src/services/auth_storage_service.dart
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthStorageService {
  // Claves para SharedPreferences (datos no sensibles)
  static const String _userIdKey = 'user_id';
  static const String _userNameKey = 'user_name';

  // Clave para FlutterSecureStorage (dato sensible)
  static const String _tokenKey = 'auth_token';

  // Instancias de los servicios
  static SharedPreferences? _prefs;
  static const FlutterSecureStorage _secureStorage = FlutterSecureStorage();

  // Método de inicialización para SharedPreferences
  static Future<void> initialize() async {
    _prefs ??= await SharedPreferences.getInstance();
  }

  // --- Métodos para almacenar datos ---

  // Guarda el token en el almacenamiento seguro
  Future<void> saveAuthToken(String token) async {
    await _secureStorage.write(key: _tokenKey, value: token);
    print('Token guardado de forma segura.');
  }

  // Guarda el User ID en SharedPreferences (no es sensible por sí mismo)
  Future<void> saveUserId(String userId) async {
    await initialize();
    await _prefs!.setString(_userIdKey, userId);
    print('User ID guardado: $userId');
  }

  // Guarda el nombre en SharedPreferences
  Future<void> saveUserName(String userName) async {
    await initialize();
    await _prefs!.setString(_userNameKey, userName);
    print('User Name guardado: $userName');
  }

  // --- Métodos para obtener datos ---

  // Obtiene el token del almacenamiento seguro
  Future<String?> getToken() async {
    return await _secureStorage.read(key: _tokenKey);
  }

  // Obtiene el User ID de SharedPreferences
  Future<String?> getUserId() async {
    await initialize();
    return _prefs!.getString(_userIdKey);
  }

  // Obtiene el nombre de SharedPreferences
  Future<String?> getUserName() async {
    await initialize();
    return _prefs!.getString(_userNameKey);
  }

  // --- Método para limpiar todos los datos ---

  Future<void> clearAuthData() async {
    await initialize();
    await _secureStorage.delete(key: _tokenKey);
    await _prefs!.remove(_userIdKey);
    await _prefs!.remove(_userNameKey);
    print('Datos de autenticación limpiados.');
  }
}