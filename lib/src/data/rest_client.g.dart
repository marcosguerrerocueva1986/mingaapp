// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rest_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _RestClient implements RestClient {
  _RestClient(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<ValidaUsuarioRespuesta> validarUsuario(
      LoginRequerimiento requerimiento) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ValidaUsuarioRespuesta>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/validaUsuario',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ValidaUsuarioRespuesta.fromJson(_result.data!);
    return value;
  }

  @override
  Future<LoginRespuesta> login(LoginRequerimiento requerimiento) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<LoginRespuesta>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/login',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = LoginRespuesta.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ValidacionOtpAccesoRespuesta> validaCodigoOtpIngreso(
      LoginRequerimiento requerimiento) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ValidacionOtpAccesoRespuesta>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/validaCodigoOtpIngreso',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ValidacionOtpAccesoRespuesta.fromJson(_result.data!);
    return value;
  }

  @override
  Future<PosicionConsolidadaRespuesta> consultaConsolidado(
      BaseRequerimiento requerimiento) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<PosicionConsolidadaRespuesta>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/consultaConsolidado',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = PosicionConsolidadaRespuesta.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ConsultaMovimientosCuentaRespuesta> consultaMovimientosCuenta(
      ConsultaMovimientosCuentaRequerimiento requerimiento) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ConsultaMovimientosCuentaRespuesta>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/consultaMovimientosCuenta',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ConsultaMovimientosCuentaRespuesta.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ConsultaDetalleInversionRespuesta> consultaDetalleInversion(
      ConsultaDetalleInversionRequerimiento requerimiento) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ConsultaDetalleInversionRespuesta>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/consultaDetalleInversion',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ConsultaDetalleInversionRespuesta.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ConsultaDetalePrestamoRespuesta> consultaDetallePrestamo(
      ConsultaDetallePrestamoRequerimiento requerimiento) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ConsultaDetalePrestamoRespuesta>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/consultaDetallePrestamo',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ConsultaDetalePrestamoRespuesta.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ConsultaBeneficiariosRespuesta> consultaBeneficiarios(
      BaseRequerimiento requerimiento) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ConsultaBeneficiariosRespuesta>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/consultaBeneficiarios',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ConsultaBeneficiariosRespuesta.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ValidaTransferenciaYGeneraOtpRespuesta> validaTransaferenciaYGeneraOtp(
      ValidaTransferenciaYGeneraOtpRequerimiento requerimiento) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ValidaTransferenciaYGeneraOtpRespuesta>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/validatransferenciaygeneraotp',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value =
        ValidaTransferenciaYGeneraOtpRespuesta.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ProcesaTransfernciaDirectaRespuesta> ingresaTransferenciaDirecta(
      ProcesaTransferenciaDirectaRequerimiento requerimiento) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ProcesaTransfernciaDirectaRespuesta>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/ingresaTransferenciaDirecta',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ProcesaTransfernciaDirectaRespuesta.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ProcesaTransfernciaDirectaRespuesta>
      procesaTransaferenciaInterbancaria(
          ProcesaTransferenciaDirectaRequerimiento requerimiento) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ProcesaTransfernciaDirectaRespuesta>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/ingresaTransferenciaInterbancaria',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ProcesaTransfernciaDirectaRespuesta.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ProcesaAbonoPrestamoRespuesta> validaAbonoPrestamoYGeneraOtp(
      ProcesaAbonoPrestamoRequerimiento requerimiento) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ProcesaAbonoPrestamoRespuesta>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/validaAbonoPrestamoYGeneraOtp',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ProcesaAbonoPrestamoRespuesta.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ProcesaAbonoPrestamoRespuesta> procesaAbonoPrestamo(
      ProcesaAbonoPrestamoRequerimiento requerimiento) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ProcesaAbonoPrestamoRespuesta>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/ingresaAbonoPrestamo',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ProcesaAbonoPrestamoRespuesta.fromJson(_result.data!);
    return value;
  }

  @override
  Future<MantenimientoBeneficiarioRequerimiento> generaOtpBeneficiario(
      MantenimientoBeneficiarioRequerimiento requerimiento) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<MantenimientoBeneficiarioRequerimiento>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/generaOtpBeneficiario',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value =
        MantenimientoBeneficiarioRequerimiento.fromJson(_result.data!);
    return value;
  }

  @override
  Future<MantenimientoBeneficiarioRequerimiento> mantenimientoBeneficiario(
      MantenimientoBeneficiarioRequerimiento requerimiento) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<MantenimientoBeneficiarioRequerimiento>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/mantenimientoBeneficiario',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value =
        MantenimientoBeneficiarioRequerimiento.fromJson(_result.data!);
    return value;
  }

  @override
  Future<MantenimientoBeneficiarioRequerimiento> eliminaBeneficiario(
      BeneficiarioModel requerimiento) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<MantenimientoBeneficiarioRequerimiento>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/eliminaBeneficiario',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value =
        MantenimientoBeneficiarioRequerimiento.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ConsultaRequisitosBeneficiarioRespuesta>
      consultaRequisitosBeneficiarios(BaseRequerimiento requerimiento) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ConsultaRequisitosBeneficiarioRespuesta>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/consultaRequisitosBeneficiarios',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value =
        ConsultaRequisitosBeneficiarioRespuesta.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ConsultaAgenciaCajeroRespuesta> consultaAgenciasCajeros(
      BaseRequerimiento requerimiento) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ConsultaAgenciaCajeroRespuesta>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/consultaAgenciasCajeros',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ConsultaAgenciaCajeroRespuesta.fromJson(_result.data!);
    return value;
  }

  @override
  Future<BaseRequerimiento> registraPinAcceso(
      RegistroPinAccesoRequerimiento requerimiento) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<BaseRequerimiento>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/registroPinAcceso',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = BaseRequerimiento.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ValidacionOtpAccesoRespuesta> validaPinAcceso(
      ValidaPinAccesoRequerimiento requerimiento) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ValidacionOtpAccesoRespuesta>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/validaPinAcceso',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ValidacionOtpAccesoRespuesta.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ConsultaConceptosRespuesta> consultaConceptos(
      BaseRequerimiento requerimiento) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ConsultaConceptosRespuesta>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/consultaConceptos',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ConsultaConceptosRespuesta.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
