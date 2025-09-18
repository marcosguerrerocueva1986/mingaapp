// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rest_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element

class _RestClient implements RestClient {
  _RestClient(
    this._dio, {
    this.baseUrl,
    this.errorLogger,
  });

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<ValidaUsuarioRespuesta> validarUsuario(
      LoginRequerimiento requerimiento) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _options = _setStreamType<ValidaUsuarioRespuesta>(Options(
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
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ValidaUsuarioRespuesta _value;
    try {
      _value = ValidaUsuarioRespuesta.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<LoginRespuesta> login(LoginRequerimiento requerimiento) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _options = _setStreamType<LoginRespuesta>(Options(
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
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late LoginRespuesta _value;
    try {
      _value = LoginRespuesta.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<LoginRespuesta> logout() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<LoginRespuesta>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/logout',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late LoginRespuesta _value;
    try {
      _value = LoginRespuesta.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ValidacionOtpAccesoRespuesta> validaCodigoOtpIngreso(
      LoginRequerimiento requerimiento) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _options = _setStreamType<ValidacionOtpAccesoRespuesta>(Options(
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
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ValidacionOtpAccesoRespuesta _value;
    try {
      _value = ValidacionOtpAccesoRespuesta.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<BaseRespuesta> validaCodigoOtpRegistro(
      RegistroRequerimiento requerimiento) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _options = _setStreamType<BaseRespuesta>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/validaOtpRegistro',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late BaseRespuesta _value;
    try {
      _value = BaseRespuesta.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<PosicionConsolidadaRespuesta> consultaConsolidado(
      BaseRequerimiento requerimiento) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _options = _setStreamType<PosicionConsolidadaRespuesta>(Options(
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
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late PosicionConsolidadaRespuesta _value;
    try {
      _value = PosicionConsolidadaRespuesta.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ConsultaMovimientosCuentaRespuesta> consultaMovimientosCuenta(
      ConsultaMovimientosCuentaRequerimiento requerimiento) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _options = _setStreamType<ConsultaMovimientosCuentaRespuesta>(Options(
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
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ConsultaMovimientosCuentaRespuesta _value;
    try {
      _value = ConsultaMovimientosCuentaRespuesta.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ConsultaMovimientosInversionRespuesta> consultaMovimientosInversion(
      ConsultaMovimientosInversionRequerimiento requerimiento) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _options =
        _setStreamType<ConsultaMovimientosInversionRespuesta>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/consultaMovimientosInversion',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ConsultaMovimientosInversionRespuesta _value;
    try {
      _value = ConsultaMovimientosInversionRespuesta.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ConsultaMovimientosPrestamoRespuesta> consultaMovimientosPrestamo(
      ConsultaDetallePrestamoRequerimiento requerimiento) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _options =
        _setStreamType<ConsultaMovimientosPrestamoRespuesta>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/consultaMovimientosPrestamo',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ConsultaMovimientosPrestamoRespuesta _value;
    try {
      _value = ConsultaMovimientosPrestamoRespuesta.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ConsultaDetalleInversionRespuesta> consultaDetalleInversion(
      ConsultaDetalleInversionRequerimiento requerimiento) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _options = _setStreamType<ConsultaDetalleInversionRespuesta>(Options(
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
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ConsultaDetalleInversionRespuesta _value;
    try {
      _value = ConsultaDetalleInversionRespuesta.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ConsultaDetalePrestamoRespuesta> consultaDetallePrestamo(
      ConsultaDetallePrestamoRequerimiento requerimiento) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _options = _setStreamType<ConsultaDetalePrestamoRespuesta>(Options(
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
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ConsultaDetalePrestamoRespuesta _value;
    try {
      _value = ConsultaDetalePrestamoRespuesta.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<MantenimientoBeneficiarioRequerimiento>
      validaBeneficiarioCuentaInterno(
          ConsultaBeneficiarioRequerimiento requerimiento) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _options =
        _setStreamType<MantenimientoBeneficiarioRequerimiento>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/validaBeneficiarioCuentaInterno',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late MantenimientoBeneficiarioRequerimiento _value;
    try {
      _value = MantenimientoBeneficiarioRequerimiento.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ConsultaBeneficiariosRespuesta> consultaBeneficiarios(
      BaseRequerimiento requerimiento) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _options = _setStreamType<ConsultaBeneficiariosRespuesta>(Options(
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
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ConsultaBeneficiariosRespuesta _value;
    try {
      _value = ConsultaBeneficiariosRespuesta.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ValidaTransferenciaYGeneraOtpRespuesta> validaTransaferenciaYGeneraOtp(
      ValidaTransferenciaYGeneraOtpRequerimiento requerimiento) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _options =
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
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ValidaTransferenciaYGeneraOtpRespuesta _value;
    try {
      _value = ValidaTransferenciaYGeneraOtpRespuesta.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ProcesaTransfernciaDirectaRespuesta> ingresaTransferenciaDirecta(
      ProcesaTransferenciaDirectaRequerimiento requerimiento) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _options =
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
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ProcesaTransfernciaDirectaRespuesta _value;
    try {
      _value = ProcesaTransfernciaDirectaRespuesta.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ProcesaTransfernciaDirectaRespuesta>
      procesaTransaferenciaInterbancaria(
          ProcesaTransferenciaDirectaRequerimiento requerimiento) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _options =
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
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ProcesaTransfernciaDirectaRespuesta _value;
    try {
      _value = ProcesaTransfernciaDirectaRespuesta.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ProcesaAbonoPrestamoRespuesta> validaAbonoPrestamoYGeneraOtp(
      ProcesaAbonoPrestamoRequerimiento requerimiento) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _options = _setStreamType<ProcesaAbonoPrestamoRespuesta>(Options(
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
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ProcesaAbonoPrestamoRespuesta _value;
    try {
      _value = ProcesaAbonoPrestamoRespuesta.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ProcesaAbonoPrestamoRespuesta> procesaAbonoPrestamo(
      ProcesaAbonoPrestamoRequerimiento requerimiento) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _options = _setStreamType<ProcesaAbonoPrestamoRespuesta>(Options(
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
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ProcesaAbonoPrestamoRespuesta _value;
    try {
      _value = ProcesaAbonoPrestamoRespuesta.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<MantenimientoBeneficiarioRequerimiento> generaOtpBeneficiario(
      MantenimientoBeneficiarioRequerimiento requerimiento) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _options =
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
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late MantenimientoBeneficiarioRequerimiento _value;
    try {
      _value = MantenimientoBeneficiarioRequerimiento.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<MantenimientoBeneficiarioRequerimiento> mantenimientoBeneficiario(
      MantenimientoBeneficiarioRequerimiento requerimiento) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _options =
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
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late MantenimientoBeneficiarioRequerimiento _value;
    try {
      _value = MantenimientoBeneficiarioRequerimiento.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<MantenimientoBeneficiarioRequerimiento> eliminaBeneficiario(
      BeneficiarioModel requerimiento) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _options =
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
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late MantenimientoBeneficiarioRequerimiento _value;
    try {
      _value = MantenimientoBeneficiarioRequerimiento.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ConsultaRequisitosBeneficiarioRespuesta>
      consultaRequisitosBeneficiarios(BaseRequerimiento requerimiento) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _options =
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
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ConsultaRequisitosBeneficiarioRespuesta _value;
    try {
      _value = ConsultaRequisitosBeneficiarioRespuesta.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ConsultaAgenciaCajeroRespuesta> consultaAgenciasCajeros(
      BaseRequerimiento requerimiento) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _options = _setStreamType<ConsultaAgenciaCajeroRespuesta>(Options(
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
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ConsultaAgenciaCajeroRespuesta _value;
    try {
      _value = ConsultaAgenciaCajeroRespuesta.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<BaseRequerimiento> registraPinAcceso(
      RegistroPinAccesoRequerimiento requerimiento) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _options = _setStreamType<BaseRequerimiento>(Options(
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
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late BaseRequerimiento _value;
    try {
      _value = BaseRequerimiento.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ValidacionOtpAccesoRespuesta> validaPinAcceso(
      ValidaPinAccesoRequerimiento requerimiento) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _options = _setStreamType<ValidacionOtpAccesoRespuesta>(Options(
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
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ValidacionOtpAccesoRespuesta _value;
    try {
      _value = ValidacionOtpAccesoRespuesta.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ValidacionOtpAccesoRespuesta> validaAccesoBiometrico(
      ValidacionOtpAccesoRespuesta requerimiento) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _options = _setStreamType<ValidacionOtpAccesoRespuesta>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/validaAccesoBiometrico',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ValidacionOtpAccesoRespuesta _value;
    try {
      _value = ValidacionOtpAccesoRespuesta.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<BaseRespuesta> cambioClave(
      CambioClaveRequerimiento requerimiento) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _options = _setStreamType<BaseRespuesta>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/cambioClave',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late BaseRespuesta _value;
    try {
      _value = BaseRespuesta.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<BaseRespuesta> olvideUsuario(
      RegistroRequerimiento requerimiento) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _options = _setStreamType<BaseRespuesta>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/olvideUsuario',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late BaseRespuesta _value;
    try {
      _value = BaseRespuesta.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<BaseRespuesta> generaClaveTemporalCambioContrasenia(
      RegistroRequerimiento requerimiento) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _options = _setStreamType<BaseRespuesta>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/generaClaveTemporalCambioContrasenia',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late BaseRespuesta _value;
    try {
      _value = BaseRespuesta.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ConsultaCuentaVinculadaQRRespuesta> consultaCuentaVinculadaQR(
      ConsultaCuentaVinculadaQRRequerimiento requerimiento) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _options = _setStreamType<ConsultaCuentaVinculadaQRRespuesta>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/consultaCuentaVinculadaQR',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ConsultaCuentaVinculadaQRRespuesta _value;
    try {
      _value = ConsultaCuentaVinculadaQRRespuesta.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ProcesaPagoQRRespuesta> procesaPagoQR(
      ProcesaPagoQRRequerimiento requerimiento) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _options = _setStreamType<ProcesaPagoQRRespuesta>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/procesaPagoQR',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ProcesaPagoQRRespuesta _value;
    try {
      _value = ProcesaPagoQRRespuesta.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ConsultaRequisitosPagoServiciosRespuesta>
      consultaRequisitosPagoServicios(BaseRequerimiento requerimiento) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _options =
        _setStreamType<ConsultaRequisitosPagoServiciosRespuesta>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/consultaRequisitosPagoServicios',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ConsultaRequisitosPagoServiciosRespuesta _value;
    try {
      _value = ConsultaRequisitosPagoServiciosRespuesta.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ConsultaCamposConsultaPagoServiciosRespuesta>
      consultarCamposConsultaPagoServicios(
          ConsultaCamposConsultaPagoServiciosRequerimiento
              requerimiento) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _options =
        _setStreamType<ConsultaCamposConsultaPagoServiciosRespuesta>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/consultarCamposConsultaPagoServicios',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ConsultaCamposConsultaPagoServiciosRespuesta _value;
    try {
      _value =
          ConsultaCamposConsultaPagoServiciosRespuesta.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ConsultaValoresServiciosBasicosRespuesta> consultaRubrosPagoServicio(
      ConsultaValoresServiciosBasicosRequerimiento requerimiento) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _options =
        _setStreamType<ConsultaValoresServiciosBasicosRespuesta>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/consultaRubrosPagoServicio',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ConsultaValoresServiciosBasicosRespuesta _value;
    try {
      _value = ConsultaValoresServiciosBasicosRespuesta.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<BaseRequerimiento> generaOtpServiciosBasicos(
      ProcesaPagoServiciosBasicosRequerimiento requerimiento) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _options = _setStreamType<BaseRequerimiento>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/generaOtpServiciosBasicos',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late BaseRequerimiento _value;
    try {
      _value = BaseRequerimiento.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ProcesaPagoServiciosBasicosRespuesta> procesaTransaccionPagoServicios(
      ProcesaPagoServiciosBasicosRequerimiento requerimiento) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _options =
        _setStreamType<ProcesaPagoServiciosBasicosRespuesta>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/procesaTransaccionPagoServicios',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ProcesaPagoServiciosBasicosRespuesta _value;
    try {
      _value = ProcesaPagoServiciosBasicosRespuesta.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ConsultaRequisitosTransferenciasRespuesta>
      consultaRequisitosTransferenciaInterbancaria(
          BaseRequerimiento requerimiento) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _options =
        _setStreamType<ConsultaRequisitosTransferenciasRespuesta>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/consultaRequisitosTransferenciaInterbancaria',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ConsultaRequisitosTransferenciasRespuesta _value;
    try {
      _value =
          ConsultaRequisitosTransferenciasRespuesta.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ConsultaConceptosRespuesta> consultaConceptos(
      BaseRequerimiento requerimiento) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _options = _setStreamType<ConsultaConceptosRespuesta>(Options(
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
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ConsultaConceptosRespuesta _value;
    try {
      _value = ConsultaConceptosRespuesta.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<BaseRespuesta> activaCuenta(
      RegistroRequerimiento requerimiento) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _options = _setStreamType<BaseRespuesta>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/registro',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late BaseRespuesta _value;
    try {
      _value = BaseRespuesta.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<MantenimientoBeneficiarioRespuesta> validaCuentaBeneficiarioInterno(
      ConsultaBeneficiarioRequerimiento requerimiento) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = requerimiento;
    final _options = _setStreamType<MantenimientoBeneficiarioRespuesta>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/validaBeneficiarioInterno',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late MantenimientoBeneficiarioRespuesta _value;
    try {
      _value = MantenimientoBeneficiarioRespuesta.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
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
