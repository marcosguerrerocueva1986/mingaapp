import 'dart:developer';
import 'dart:io';
import 'dart:math' as math;
import 'dart:typed_data';
import 'dart:convert';

import 'package:encrypt/encrypt.dart' as encrypt;

import 'package:dio/io.dart';

import 'package:bancamovilr/index.dart';
import 'package:pointycastle/asymmetric/api.dart';
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
      ..interceptors.add(EncryptionInterceptor('''-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAtqeU6VjkqSqRoPTOZ37L
DJIE+4osVkMmMgNuf9pCdXCzJ4j84WnFGiAOxcpdjuAfhKGgfQblBr/5mN2YQLNF
zg+OnX85U+nHgRHuHPEWW4St4Rk2r+jktKhCVd6kb2JgwH+NyHVgxa8uJM37VIg+
Q5VM4HYGZwzDFC41iMSsLyAv6SvnUAb593nYTgvHhZHV7mUu+F0J8vzoCVihEHHx
URhsjVIwLM3LIV0bc0sWcco0E94JONhDjneBDuHxcuVd4E0QOJblTsLNaFMaUJsa
flORXdxlejpLBkG9Ea2kKuGvKaKN3V+LDFaO/268d9NnaJ1/8R4cBLeaLhZ/s4xl
ZQIDAQAB
-----END PUBLIC KEY-----'''))
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

    return RestClient(dio,
        baseUrl: testMode ? Configs.baseUrlTest : Configs.baseUrl);
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

    if (options.data != null) {
      log(jsonEncode(options.data));
    }

    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    bootstrapNotifier.showLoading(false);

    return super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    bootstrapNotifier.showLoading(false);

    return super.onError(err, handler);
  }
}

class EncryptionInterceptor extends Interceptor {
  Uint8List? _aesKey;
  Uint8List? _aesIV;
  Uint8List? _ofuscation;

  final String rsaPublicKeyPem;

  EncryptionInterceptor(this.rsaPublicKeyPem);

  void generateAesKeyIv() {
    final random = math.Random.secure();
    final key = Uint8List(32);
    final iv = Uint8List(16);
    final ofuscation = Uint8List(16);

    for (int i = 0; i < key.length; i++) key[i] = random.nextInt(256);
    for (int i = 0; i < iv.length; i++) iv[i] = random.nextInt(256);
    for (int i = 0; i < ofuscation.length; i++) iv[i] = random.nextInt(256);

    _aesKey = key;
    _aesIV = iv;
    _ofuscation = ofuscation;
  }

  String encryptAES(String plainText, Uint8List key, Uint8List iv) {
    final encrypter = encrypt.Encrypter(encrypt.AES(
      encrypt.Key(key),
      mode: encrypt.AESMode.cbc,
      padding: 'PKCS7',
    ));

    final encrypted = encrypter.encrypt(plainText, iv: encrypt.IV(iv));
    return encrypted.base64;
  }

  String decryptAES(String base64CipherText, List<int> key, List<int> iv) {
    final encrypter = encrypt.Encrypter(encrypt.AES(
      encrypt.Key(Uint8List.fromList(key)),
      mode: encrypt.AESMode.cbc,
      padding: 'PKCS7',
    ));
    final decrypted = encrypter.decrypt64(base64CipherText,
        iv: encrypt.IV(Uint8List.fromList(iv)));
    return decrypted;
  }

  String encryptRsa(Uint8List data) {
    var publicKey =
        (encrypt.RSAKeyParser().parse(rsaPublicKeyPem) as RSAPublicKey);
    final encrypter = encrypt.Encrypter(encrypt.RSA(publicKey: publicKey));
    final encrypted = encrypter.encryptBytes(data);
    return encrypted.base64;
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    generateAesKeyIv();
    final key = _aesKey!;
    final iv = _aesIV!;
    final ofuscation = _ofuscation!;

    final originalBody = jsonEncode(options.data);
    log(originalBody);

    final encryptedBodyBase64 = encryptAES(originalBody, key, iv);

    options.headers['X-Session-Hash'] = encryptRsa(key);
    options.headers['X-Request-Hash'] = encryptRsa(iv);
    options.headers['X-Domain-Hash'] = encryptRsa(ofuscation);

    options.data = jsonEncode({'data': encryptedBodyBase64});

    options.contentType = 'application/json';

    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.data != null && _aesKey != null && _aesIV != null) {
      try {
        final encryptedBase64 = response.data is String
            ? jsonDecode(response.data)['data']
            : response.data['data'];

        final decryptedResponse =
            decryptAES(encryptedBase64, _aesKey!, _aesIV!);

        log(decryptedResponse);
        response.data = jsonDecode(decryptedResponse);
      } catch (e) {
        // no hacer nada
      }
    }

    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    bootstrapNotifier.showLoading(false);

    try {
      final response = err.response;
      if (response != null && response.data != null) {
        final data = response.data;

        final decoded = data is String ? jsonDecode(data) : data;

        final encryptedError = decoded['data'];
        if (encryptedError is String) {
          final decrypted = decryptAES(encryptedError, _aesKey!, _aesIV!);

          final parsed = jsonDecode(decrypted);

          response.data = parsed;
        }
      }
    } catch (e, st) {
      log('Error desencriptando respuesta de error: $e');
      log(st.toString());
    }

    log('ERROR[${err.response?.statusCode ?? 'nostatus'}] => PATH: ${err.requestOptions.path}');
    handler.next(err);
  }
}
