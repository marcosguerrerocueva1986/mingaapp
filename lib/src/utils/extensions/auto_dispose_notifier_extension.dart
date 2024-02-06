// ignore_for_file: invalid_use_of_internal_member

import 'package:bancamovilr/index.dart';
import 'package:riverpod/src/notifier.dart';

extension NotifierExtension on NotifierBase {
  Future<AsyncValue<T>> guard<T>(Future<T> Function() future,
      {bool showError = true}) async {
    try {
      var response = await future();

      return AsyncValue.data(response);
    } catch (err, stack) {
      var errorString = "Ocurrió in error intente más tarde";

      if (err is DioError) {
        if (err.response?.statusCode == 400) {
          var data = err.response?.data;

          if (data != null && data is Map) {
            errorString = data['sF_Error'] ?? errorString;
          } else {
            errorString = err.response?.data ?? errorString;
          }
        }
      }

      if (showError) {
        NotificationService.showError(text: errorString);
      }

      return AsyncValue.error(errorString, stack);
    }
  }
}
