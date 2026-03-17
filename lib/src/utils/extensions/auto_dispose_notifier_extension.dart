// ignore_for_file: invalid_use_of_internal_member

import 'package:bancamovilr/index.dart';

extension ControllerGuardExtension on Object {
  Future<AsyncValue<T>> guard<T>(
    Future<T> Function() future, {
    bool showError = true,
  }) async {
    try {
      final T response = await future();
      
      return AsyncValue<T>.data(response);
    } catch (err, stack) {
      var errorString = "Ocurrió un error, intente más tarde";

      if (err is DioException) {
        if (err.response?.statusCode == 400) {
          final data = err.response?.data;
          
          if (data != null && data is Map) {
            errorString = data['sF_Error'] ?? errorString;
          } else if (data is String) {
            errorString = data;
          }
        } else if (err.type == DioExceptionType.connectionTimeout) {
          errorString = "Tiempo de conexión agotado. Verifique su internet.";
        } else if (err.type == DioExceptionType.receiveTimeout) {
          errorString = "El servidor tardó demasiado en responder.";
        }
      }
      if (showError) {
        NotificationService.showError(text: errorString);
      }
      return AsyncValue<T>.error(errorString, stack);
    }
  }
}