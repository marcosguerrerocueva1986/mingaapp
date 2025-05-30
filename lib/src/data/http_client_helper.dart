import 'dart:developer';
import 'dart:io';

import 'package:dio/io.dart';

import 'package:bancamovilr/index.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class HttpClientHelper {
  static String token = '';
  static int idUsuario = 0;
  static int idRegistro = 0;
  static bool testMode = false;
  static String mensajeError = 'Ocurrió un error, intente más tarde';
  static String typeError = '--type';

  static RestClient getClient() {
    final dio = Dio(BaseOptions(
      baseUrl: Configs.baseUrl,
      contentType: Headers.jsonContentType,
      responseType: ResponseType.plain,
    ))
      ..interceptors.add(BootstrapInterceptors())
      ..interceptors.add(PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
          compact: true,
          maxWidth: 90));

    dio.httpClientAdapter = IOHttpClientAdapter()
      ..onHttpClientCreate = (_) {
        final HttpClient client =
            HttpClient(context: SecurityContext(withTrustedRoots: false));
        client.badCertificateCallback = (cert, host, port) => true;
        return client;
      }
      ..validateCertificate = (cert, host, port) {
        return true;
      };

    dio.options.contentType = 'application/json';
    testMode = HttpClientHelper.testMode;

    return RestClient(dio, baseUrl: testMode ? Configs.baseUrlTest : Configs.baseUrl);
  }
}

class BootstrapInterceptors extends InterceptorsWrapper {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    bootstrapNotifier.showLoading(true);

    if (HttpClientHelper.token != "") {
      options.headers
          .addAll({"Authorization": "Bearer ${HttpClientHelper.token}"});
    }

    log('REQUEST[${options.method}] => PATH: ${options.path}');

    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    bootstrapNotifier.showLoading(false);

    log('RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}');
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    bootstrapNotifier.showLoading(false);

    log('ERROR[${err.response?.statusCode ?? 'nostatus'}] => PATH: ${err.requestOptions.path}');
    return super.onError(err, handler);
  }
}
