import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:bancamovilr/src/services/auth_storage_service.dart'; // Asegúrate de la ruta correcta

final authStorageServiceProvider = Provider<AuthStorageService>((ref) {
  return AuthStorageService();
});