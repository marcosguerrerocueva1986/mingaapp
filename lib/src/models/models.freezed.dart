// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseRequerimiento _$BaseRequerimientoFromJson(Map<String, dynamic> json) {
  return _BaseRequerimiento.fromJson(json);
}

/// @nodoc
mixin _$BaseRequerimiento {
  int get idUsuario => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BaseRequerimientoCopyWith<BaseRequerimiento> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseRequerimientoCopyWith<$Res> {
  factory $BaseRequerimientoCopyWith(
          BaseRequerimiento value, $Res Function(BaseRequerimiento) then) =
      _$BaseRequerimientoCopyWithImpl<$Res, BaseRequerimiento>;
  @useResult
  $Res call({int idUsuario});
}

/// @nodoc
class _$BaseRequerimientoCopyWithImpl<$Res, $Val extends BaseRequerimiento>
    implements $BaseRequerimientoCopyWith<$Res> {
  _$BaseRequerimientoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idUsuario = null,
  }) {
    return _then(_value.copyWith(
      idUsuario: null == idUsuario
          ? _value.idUsuario
          : idUsuario // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseRequerimientoImplCopyWith<$Res>
    implements $BaseRequerimientoCopyWith<$Res> {
  factory _$$BaseRequerimientoImplCopyWith(_$BaseRequerimientoImpl value,
          $Res Function(_$BaseRequerimientoImpl) then) =
      __$$BaseRequerimientoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int idUsuario});
}

/// @nodoc
class __$$BaseRequerimientoImplCopyWithImpl<$Res>
    extends _$BaseRequerimientoCopyWithImpl<$Res, _$BaseRequerimientoImpl>
    implements _$$BaseRequerimientoImplCopyWith<$Res> {
  __$$BaseRequerimientoImplCopyWithImpl(_$BaseRequerimientoImpl _value,
      $Res Function(_$BaseRequerimientoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idUsuario = null,
  }) {
    return _then(_$BaseRequerimientoImpl(
      idUsuario: null == idUsuario
          ? _value.idUsuario
          : idUsuario // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BaseRequerimientoImpl implements _BaseRequerimiento {
  _$BaseRequerimientoImpl({this.idUsuario = 0});

  factory _$BaseRequerimientoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseRequerimientoImplFromJson(json);

  @override
  @JsonKey()
  final int idUsuario;

  @override
  String toString() {
    return 'BaseRequerimiento(idUsuario: $idUsuario)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseRequerimientoImpl &&
            (identical(other.idUsuario, idUsuario) ||
                other.idUsuario == idUsuario));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, idUsuario);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseRequerimientoImplCopyWith<_$BaseRequerimientoImpl> get copyWith =>
      __$$BaseRequerimientoImplCopyWithImpl<_$BaseRequerimientoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseRequerimientoImplToJson(
      this,
    );
  }
}

abstract class _BaseRequerimiento implements BaseRequerimiento {
  factory _BaseRequerimiento({final int idUsuario}) = _$BaseRequerimientoImpl;

  factory _BaseRequerimiento.fromJson(Map<String, dynamic> json) =
      _$BaseRequerimientoImpl.fromJson;

  @override
  int get idUsuario;
  @override
  @JsonKey(ignore: true)
  _$$BaseRequerimientoImplCopyWith<_$BaseRequerimientoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RegistroRequerimiento _$RegistroRequerimientoFromJson(
    Map<String, dynamic> json) {
  return _RegistroRequerimiento.fromJson(json);
}

/// @nodoc
mixin _$RegistroRequerimiento {
  String get identificacion => throw _privateConstructorUsedError;
  String get codigoUsuario => throw _privateConstructorUsedError;
  String get imagen => throw _privateConstructorUsedError;
  String get frase => throw _privateConstructorUsedError;
  String get otpIngresado => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegistroRequerimientoCopyWith<RegistroRequerimiento> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistroRequerimientoCopyWith<$Res> {
  factory $RegistroRequerimientoCopyWith(RegistroRequerimiento value,
          $Res Function(RegistroRequerimiento) then) =
      _$RegistroRequerimientoCopyWithImpl<$Res, RegistroRequerimiento>;
  @useResult
  $Res call(
      {String identificacion,
      String codigoUsuario,
      String imagen,
      String frase,
      String otpIngresado});
}

/// @nodoc
class _$RegistroRequerimientoCopyWithImpl<$Res,
        $Val extends RegistroRequerimiento>
    implements $RegistroRequerimientoCopyWith<$Res> {
  _$RegistroRequerimientoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identificacion = null,
    Object? codigoUsuario = null,
    Object? imagen = null,
    Object? frase = null,
    Object? otpIngresado = null,
  }) {
    return _then(_value.copyWith(
      identificacion: null == identificacion
          ? _value.identificacion
          : identificacion // ignore: cast_nullable_to_non_nullable
              as String,
      codigoUsuario: null == codigoUsuario
          ? _value.codigoUsuario
          : codigoUsuario // ignore: cast_nullable_to_non_nullable
              as String,
      imagen: null == imagen
          ? _value.imagen
          : imagen // ignore: cast_nullable_to_non_nullable
              as String,
      frase: null == frase
          ? _value.frase
          : frase // ignore: cast_nullable_to_non_nullable
              as String,
      otpIngresado: null == otpIngresado
          ? _value.otpIngresado
          : otpIngresado // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegistroRequerimientoImplCopyWith<$Res>
    implements $RegistroRequerimientoCopyWith<$Res> {
  factory _$$RegistroRequerimientoImplCopyWith(
          _$RegistroRequerimientoImpl value,
          $Res Function(_$RegistroRequerimientoImpl) then) =
      __$$RegistroRequerimientoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String identificacion,
      String codigoUsuario,
      String imagen,
      String frase,
      String otpIngresado});
}

/// @nodoc
class __$$RegistroRequerimientoImplCopyWithImpl<$Res>
    extends _$RegistroRequerimientoCopyWithImpl<$Res,
        _$RegistroRequerimientoImpl>
    implements _$$RegistroRequerimientoImplCopyWith<$Res> {
  __$$RegistroRequerimientoImplCopyWithImpl(_$RegistroRequerimientoImpl _value,
      $Res Function(_$RegistroRequerimientoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identificacion = null,
    Object? codigoUsuario = null,
    Object? imagen = null,
    Object? frase = null,
    Object? otpIngresado = null,
  }) {
    return _then(_$RegistroRequerimientoImpl(
      identificacion: null == identificacion
          ? _value.identificacion
          : identificacion // ignore: cast_nullable_to_non_nullable
              as String,
      codigoUsuario: null == codigoUsuario
          ? _value.codigoUsuario
          : codigoUsuario // ignore: cast_nullable_to_non_nullable
              as String,
      imagen: null == imagen
          ? _value.imagen
          : imagen // ignore: cast_nullable_to_non_nullable
              as String,
      frase: null == frase
          ? _value.frase
          : frase // ignore: cast_nullable_to_non_nullable
              as String,
      otpIngresado: null == otpIngresado
          ? _value.otpIngresado
          : otpIngresado // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegistroRequerimientoImpl implements _RegistroRequerimiento {
  _$RegistroRequerimientoImpl(
      {this.identificacion = '',
      this.codigoUsuario = '',
      this.imagen = '',
      this.frase = '',
      this.otpIngresado = ''});

  factory _$RegistroRequerimientoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegistroRequerimientoImplFromJson(json);

  @override
  @JsonKey()
  final String identificacion;
  @override
  @JsonKey()
  final String codigoUsuario;
  @override
  @JsonKey()
  final String imagen;
  @override
  @JsonKey()
  final String frase;
  @override
  @JsonKey()
  final String otpIngresado;

  @override
  String toString() {
    return 'RegistroRequerimiento(identificacion: $identificacion, codigoUsuario: $codigoUsuario, imagen: $imagen, frase: $frase, otpIngresado: $otpIngresado)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistroRequerimientoImpl &&
            (identical(other.identificacion, identificacion) ||
                other.identificacion == identificacion) &&
            (identical(other.codigoUsuario, codigoUsuario) ||
                other.codigoUsuario == codigoUsuario) &&
            (identical(other.imagen, imagen) || other.imagen == imagen) &&
            (identical(other.frase, frase) || other.frase == frase) &&
            (identical(other.otpIngresado, otpIngresado) ||
                other.otpIngresado == otpIngresado));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, identificacion, codigoUsuario, imagen, frase, otpIngresado);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistroRequerimientoImplCopyWith<_$RegistroRequerimientoImpl>
      get copyWith => __$$RegistroRequerimientoImplCopyWithImpl<
          _$RegistroRequerimientoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegistroRequerimientoImplToJson(
      this,
    );
  }
}

abstract class _RegistroRequerimiento implements RegistroRequerimiento {
  factory _RegistroRequerimiento(
      {final String identificacion,
      final String codigoUsuario,
      final String imagen,
      final String frase,
      final String otpIngresado}) = _$RegistroRequerimientoImpl;

  factory _RegistroRequerimiento.fromJson(Map<String, dynamic> json) =
      _$RegistroRequerimientoImpl.fromJson;

  @override
  String get identificacion;
  @override
  String get codigoUsuario;
  @override
  String get imagen;
  @override
  String get frase;
  @override
  String get otpIngresado;
  @override
  @JsonKey(ignore: true)
  _$$RegistroRequerimientoImplCopyWith<_$RegistroRequerimientoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BaseRespuesta _$BaseRespuestaFromJson(Map<String, dynamic> json) {
  return _BaseRespuesta.fromJson(json);
}

/// @nodoc
mixin _$BaseRespuesta {
  String get mbCodigoUsuario => throw _privateConstructorUsedError;
  String get mbPwdUsuario => throw _privateConstructorUsedError;
  String get mbMaquina => throw _privateConstructorUsedError;
  @JsonKey(name: 'sF_ExisteError')
  bool get existeError => throw _privateConstructorUsedError;
  @JsonKey(name: 'sF_Error')
  String get error => throw _privateConstructorUsedError;
  String get stackTrace => throw _privateConstructorUsedError;
  bool get sfConCabecera => throw _privateConstructorUsedError;
  String get mensajeError => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BaseRespuestaCopyWith<BaseRespuesta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseRespuestaCopyWith<$Res> {
  factory $BaseRespuestaCopyWith(
          BaseRespuesta value, $Res Function(BaseRespuesta) then) =
      _$BaseRespuestaCopyWithImpl<$Res, BaseRespuesta>;
  @useResult
  $Res call(
      {String mbCodigoUsuario,
      String mbPwdUsuario,
      String mbMaquina,
      @JsonKey(name: 'sF_ExisteError') bool existeError,
      @JsonKey(name: 'sF_Error') String error,
      String stackTrace,
      bool sfConCabecera,
      String mensajeError});
}

/// @nodoc
class _$BaseRespuestaCopyWithImpl<$Res, $Val extends BaseRespuesta>
    implements $BaseRespuestaCopyWith<$Res> {
  _$BaseRespuestaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mbCodigoUsuario = null,
    Object? mbPwdUsuario = null,
    Object? mbMaquina = null,
    Object? existeError = null,
    Object? error = null,
    Object? stackTrace = null,
    Object? sfConCabecera = null,
    Object? mensajeError = null,
  }) {
    return _then(_value.copyWith(
      mbCodigoUsuario: null == mbCodigoUsuario
          ? _value.mbCodigoUsuario
          : mbCodigoUsuario // ignore: cast_nullable_to_non_nullable
              as String,
      mbPwdUsuario: null == mbPwdUsuario
          ? _value.mbPwdUsuario
          : mbPwdUsuario // ignore: cast_nullable_to_non_nullable
              as String,
      mbMaquina: null == mbMaquina
          ? _value.mbMaquina
          : mbMaquina // ignore: cast_nullable_to_non_nullable
              as String,
      existeError: null == existeError
          ? _value.existeError
          : existeError // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      stackTrace: null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as String,
      sfConCabecera: null == sfConCabecera
          ? _value.sfConCabecera
          : sfConCabecera // ignore: cast_nullable_to_non_nullable
              as bool,
      mensajeError: null == mensajeError
          ? _value.mensajeError
          : mensajeError // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseRespuestaImplCopyWith<$Res>
    implements $BaseRespuestaCopyWith<$Res> {
  factory _$$BaseRespuestaImplCopyWith(
          _$BaseRespuestaImpl value, $Res Function(_$BaseRespuestaImpl) then) =
      __$$BaseRespuestaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String mbCodigoUsuario,
      String mbPwdUsuario,
      String mbMaquina,
      @JsonKey(name: 'sF_ExisteError') bool existeError,
      @JsonKey(name: 'sF_Error') String error,
      String stackTrace,
      bool sfConCabecera,
      String mensajeError});
}

/// @nodoc
class __$$BaseRespuestaImplCopyWithImpl<$Res>
    extends _$BaseRespuestaCopyWithImpl<$Res, _$BaseRespuestaImpl>
    implements _$$BaseRespuestaImplCopyWith<$Res> {
  __$$BaseRespuestaImplCopyWithImpl(
      _$BaseRespuestaImpl _value, $Res Function(_$BaseRespuestaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mbCodigoUsuario = null,
    Object? mbPwdUsuario = null,
    Object? mbMaquina = null,
    Object? existeError = null,
    Object? error = null,
    Object? stackTrace = null,
    Object? sfConCabecera = null,
    Object? mensajeError = null,
  }) {
    return _then(_$BaseRespuestaImpl(
      mbCodigoUsuario: null == mbCodigoUsuario
          ? _value.mbCodigoUsuario
          : mbCodigoUsuario // ignore: cast_nullable_to_non_nullable
              as String,
      mbPwdUsuario: null == mbPwdUsuario
          ? _value.mbPwdUsuario
          : mbPwdUsuario // ignore: cast_nullable_to_non_nullable
              as String,
      mbMaquina: null == mbMaquina
          ? _value.mbMaquina
          : mbMaquina // ignore: cast_nullable_to_non_nullable
              as String,
      existeError: null == existeError
          ? _value.existeError
          : existeError // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      stackTrace: null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as String,
      sfConCabecera: null == sfConCabecera
          ? _value.sfConCabecera
          : sfConCabecera // ignore: cast_nullable_to_non_nullable
              as bool,
      mensajeError: null == mensajeError
          ? _value.mensajeError
          : mensajeError // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BaseRespuestaImpl implements _BaseRespuesta {
  _$BaseRespuestaImpl(
      {this.mbCodigoUsuario = '',
      this.mbPwdUsuario = '',
      this.mbMaquina = '',
      @JsonKey(name: 'sF_ExisteError') this.existeError = false,
      @JsonKey(name: 'sF_Error') this.error = '',
      this.stackTrace = '',
      this.sfConCabecera = false,
      this.mensajeError = ''});

  factory _$BaseRespuestaImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseRespuestaImplFromJson(json);

  @override
  @JsonKey()
  final String mbCodigoUsuario;
  @override
  @JsonKey()
  final String mbPwdUsuario;
  @override
  @JsonKey()
  final String mbMaquina;
  @override
  @JsonKey(name: 'sF_ExisteError')
  final bool existeError;
  @override
  @JsonKey(name: 'sF_Error')
  final String error;
  @override
  @JsonKey()
  final String stackTrace;
  @override
  @JsonKey()
  final bool sfConCabecera;
  @override
  @JsonKey()
  final String mensajeError;

  @override
  String toString() {
    return 'BaseRespuesta(mbCodigoUsuario: $mbCodigoUsuario, mbPwdUsuario: $mbPwdUsuario, mbMaquina: $mbMaquina, existeError: $existeError, error: $error, stackTrace: $stackTrace, sfConCabecera: $sfConCabecera, mensajeError: $mensajeError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseRespuestaImpl &&
            (identical(other.mbCodigoUsuario, mbCodigoUsuario) ||
                other.mbCodigoUsuario == mbCodigoUsuario) &&
            (identical(other.mbPwdUsuario, mbPwdUsuario) ||
                other.mbPwdUsuario == mbPwdUsuario) &&
            (identical(other.mbMaquina, mbMaquina) ||
                other.mbMaquina == mbMaquina) &&
            (identical(other.existeError, existeError) ||
                other.existeError == existeError) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.sfConCabecera, sfConCabecera) ||
                other.sfConCabecera == sfConCabecera) &&
            (identical(other.mensajeError, mensajeError) ||
                other.mensajeError == mensajeError));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, mbCodigoUsuario, mbPwdUsuario,
      mbMaquina, existeError, error, stackTrace, sfConCabecera, mensajeError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseRespuestaImplCopyWith<_$BaseRespuestaImpl> get copyWith =>
      __$$BaseRespuestaImplCopyWithImpl<_$BaseRespuestaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseRespuestaImplToJson(
      this,
    );
  }
}

abstract class _BaseRespuesta implements BaseRespuesta {
  factory _BaseRespuesta(
      {final String mbCodigoUsuario,
      final String mbPwdUsuario,
      final String mbMaquina,
      @JsonKey(name: 'sF_ExisteError') final bool existeError,
      @JsonKey(name: 'sF_Error') final String error,
      final String stackTrace,
      final bool sfConCabecera,
      final String mensajeError}) = _$BaseRespuestaImpl;

  factory _BaseRespuesta.fromJson(Map<String, dynamic> json) =
      _$BaseRespuestaImpl.fromJson;

  @override
  String get mbCodigoUsuario;
  @override
  String get mbPwdUsuario;
  @override
  String get mbMaquina;
  @override
  @JsonKey(name: 'sF_ExisteError')
  bool get existeError;
  @override
  @JsonKey(name: 'sF_Error')
  String get error;
  @override
  String get stackTrace;
  @override
  bool get sfConCabecera;
  @override
  String get mensajeError;
  @override
  @JsonKey(ignore: true)
  _$$BaseRespuestaImplCopyWith<_$BaseRespuestaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CambioClaveRequerimiento _$CambioClaveRequerimientoFromJson(
    Map<String, dynamic> json) {
  return _CambioClaveRequerimiento.fromJson(json);
}

/// @nodoc
mixin _$CambioClaveRequerimiento {
  String get codigoUsuario => throw _privateConstructorUsedError;
  String get pwdAnterior => throw _privateConstructorUsedError;
  String get pwdNueva => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CambioClaveRequerimientoCopyWith<CambioClaveRequerimiento> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CambioClaveRequerimientoCopyWith<$Res> {
  factory $CambioClaveRequerimientoCopyWith(CambioClaveRequerimiento value,
          $Res Function(CambioClaveRequerimiento) then) =
      _$CambioClaveRequerimientoCopyWithImpl<$Res, CambioClaveRequerimiento>;
  @useResult
  $Res call({String codigoUsuario, String pwdAnterior, String pwdNueva});
}

/// @nodoc
class _$CambioClaveRequerimientoCopyWithImpl<$Res,
        $Val extends CambioClaveRequerimiento>
    implements $CambioClaveRequerimientoCopyWith<$Res> {
  _$CambioClaveRequerimientoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codigoUsuario = null,
    Object? pwdAnterior = null,
    Object? pwdNueva = null,
  }) {
    return _then(_value.copyWith(
      codigoUsuario: null == codigoUsuario
          ? _value.codigoUsuario
          : codigoUsuario // ignore: cast_nullable_to_non_nullable
              as String,
      pwdAnterior: null == pwdAnterior
          ? _value.pwdAnterior
          : pwdAnterior // ignore: cast_nullable_to_non_nullable
              as String,
      pwdNueva: null == pwdNueva
          ? _value.pwdNueva
          : pwdNueva // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CambioClaveRequerimientoImplCopyWith<$Res>
    implements $CambioClaveRequerimientoCopyWith<$Res> {
  factory _$$CambioClaveRequerimientoImplCopyWith(
          _$CambioClaveRequerimientoImpl value,
          $Res Function(_$CambioClaveRequerimientoImpl) then) =
      __$$CambioClaveRequerimientoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String codigoUsuario, String pwdAnterior, String pwdNueva});
}

/// @nodoc
class __$$CambioClaveRequerimientoImplCopyWithImpl<$Res>
    extends _$CambioClaveRequerimientoCopyWithImpl<$Res,
        _$CambioClaveRequerimientoImpl>
    implements _$$CambioClaveRequerimientoImplCopyWith<$Res> {
  __$$CambioClaveRequerimientoImplCopyWithImpl(
      _$CambioClaveRequerimientoImpl _value,
      $Res Function(_$CambioClaveRequerimientoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codigoUsuario = null,
    Object? pwdAnterior = null,
    Object? pwdNueva = null,
  }) {
    return _then(_$CambioClaveRequerimientoImpl(
      codigoUsuario: null == codigoUsuario
          ? _value.codigoUsuario
          : codigoUsuario // ignore: cast_nullable_to_non_nullable
              as String,
      pwdAnterior: null == pwdAnterior
          ? _value.pwdAnterior
          : pwdAnterior // ignore: cast_nullable_to_non_nullable
              as String,
      pwdNueva: null == pwdNueva
          ? _value.pwdNueva
          : pwdNueva // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CambioClaveRequerimientoImpl implements _CambioClaveRequerimiento {
  _$CambioClaveRequerimientoImpl(
      {this.codigoUsuario = '', this.pwdAnterior = '', this.pwdNueva = ''});

  factory _$CambioClaveRequerimientoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CambioClaveRequerimientoImplFromJson(json);

  @override
  @JsonKey()
  final String codigoUsuario;
  @override
  @JsonKey()
  final String pwdAnterior;
  @override
  @JsonKey()
  final String pwdNueva;

  @override
  String toString() {
    return 'CambioClaveRequerimiento(codigoUsuario: $codigoUsuario, pwdAnterior: $pwdAnterior, pwdNueva: $pwdNueva)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CambioClaveRequerimientoImpl &&
            (identical(other.codigoUsuario, codigoUsuario) ||
                other.codigoUsuario == codigoUsuario) &&
            (identical(other.pwdAnterior, pwdAnterior) ||
                other.pwdAnterior == pwdAnterior) &&
            (identical(other.pwdNueva, pwdNueva) ||
                other.pwdNueva == pwdNueva));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, codigoUsuario, pwdAnterior, pwdNueva);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CambioClaveRequerimientoImplCopyWith<_$CambioClaveRequerimientoImpl>
      get copyWith => __$$CambioClaveRequerimientoImplCopyWithImpl<
          _$CambioClaveRequerimientoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CambioClaveRequerimientoImplToJson(
      this,
    );
  }
}

abstract class _CambioClaveRequerimiento implements CambioClaveRequerimiento {
  factory _CambioClaveRequerimiento(
      {final String codigoUsuario,
      final String pwdAnterior,
      final String pwdNueva}) = _$CambioClaveRequerimientoImpl;

  factory _CambioClaveRequerimiento.fromJson(Map<String, dynamic> json) =
      _$CambioClaveRequerimientoImpl.fromJson;

  @override
  String get codigoUsuario;
  @override
  String get pwdAnterior;
  @override
  String get pwdNueva;
  @override
  @JsonKey(ignore: true)
  _$$CambioClaveRequerimientoImplCopyWith<_$CambioClaveRequerimientoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

LoginRequerimiento _$LoginRequerimientoFromJson(Map<String, dynamic> json) {
  return _LoginRequerimiento.fromJson(json);
}

/// @nodoc
mixin _$LoginRequerimiento {
  int get idUsuario => throw _privateConstructorUsedError;
  int get idRegistro => throw _privateConstructorUsedError;
  String get codigoUsuario => throw _privateConstructorUsedError;
  String get pwdUsuario => throw _privateConstructorUsedError;
  String get otpIngresado => throw _privateConstructorUsedError;
  bool get esMovil => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginRequerimientoCopyWith<LoginRequerimiento> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginRequerimientoCopyWith<$Res> {
  factory $LoginRequerimientoCopyWith(
          LoginRequerimiento value, $Res Function(LoginRequerimiento) then) =
      _$LoginRequerimientoCopyWithImpl<$Res, LoginRequerimiento>;
  @useResult
  $Res call(
      {int idUsuario,
      int idRegistro,
      String codigoUsuario,
      String pwdUsuario,
      String otpIngresado,
      bool esMovil});
}

/// @nodoc
class _$LoginRequerimientoCopyWithImpl<$Res, $Val extends LoginRequerimiento>
    implements $LoginRequerimientoCopyWith<$Res> {
  _$LoginRequerimientoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idUsuario = null,
    Object? idRegistro = null,
    Object? codigoUsuario = null,
    Object? pwdUsuario = null,
    Object? otpIngresado = null,
    Object? esMovil = null,
  }) {
    return _then(_value.copyWith(
      idUsuario: null == idUsuario
          ? _value.idUsuario
          : idUsuario // ignore: cast_nullable_to_non_nullable
              as int,
      idRegistro: null == idRegistro
          ? _value.idRegistro
          : idRegistro // ignore: cast_nullable_to_non_nullable
              as int,
      codigoUsuario: null == codigoUsuario
          ? _value.codigoUsuario
          : codigoUsuario // ignore: cast_nullable_to_non_nullable
              as String,
      pwdUsuario: null == pwdUsuario
          ? _value.pwdUsuario
          : pwdUsuario // ignore: cast_nullable_to_non_nullable
              as String,
      otpIngresado: null == otpIngresado
          ? _value.otpIngresado
          : otpIngresado // ignore: cast_nullable_to_non_nullable
              as String,
      esMovil: null == esMovil
          ? _value.esMovil
          : esMovil // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginRequerimientoImplCopyWith<$Res>
    implements $LoginRequerimientoCopyWith<$Res> {
  factory _$$LoginRequerimientoImplCopyWith(_$LoginRequerimientoImpl value,
          $Res Function(_$LoginRequerimientoImpl) then) =
      __$$LoginRequerimientoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int idUsuario,
      int idRegistro,
      String codigoUsuario,
      String pwdUsuario,
      String otpIngresado,
      bool esMovil});
}

/// @nodoc
class __$$LoginRequerimientoImplCopyWithImpl<$Res>
    extends _$LoginRequerimientoCopyWithImpl<$Res, _$LoginRequerimientoImpl>
    implements _$$LoginRequerimientoImplCopyWith<$Res> {
  __$$LoginRequerimientoImplCopyWithImpl(_$LoginRequerimientoImpl _value,
      $Res Function(_$LoginRequerimientoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idUsuario = null,
    Object? idRegistro = null,
    Object? codigoUsuario = null,
    Object? pwdUsuario = null,
    Object? otpIngresado = null,
    Object? esMovil = null,
  }) {
    return _then(_$LoginRequerimientoImpl(
      idUsuario: null == idUsuario
          ? _value.idUsuario
          : idUsuario // ignore: cast_nullable_to_non_nullable
              as int,
      idRegistro: null == idRegistro
          ? _value.idRegistro
          : idRegistro // ignore: cast_nullable_to_non_nullable
              as int,
      codigoUsuario: null == codigoUsuario
          ? _value.codigoUsuario
          : codigoUsuario // ignore: cast_nullable_to_non_nullable
              as String,
      pwdUsuario: null == pwdUsuario
          ? _value.pwdUsuario
          : pwdUsuario // ignore: cast_nullable_to_non_nullable
              as String,
      otpIngresado: null == otpIngresado
          ? _value.otpIngresado
          : otpIngresado // ignore: cast_nullable_to_non_nullable
              as String,
      esMovil: null == esMovil
          ? _value.esMovil
          : esMovil // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginRequerimientoImpl implements _LoginRequerimiento {
  _$LoginRequerimientoImpl(
      {this.idUsuario = 0,
      this.idRegistro = 0,
      this.codigoUsuario = '',
      this.pwdUsuario = '',
      this.otpIngresado = '',
      this.esMovil = true});

  factory _$LoginRequerimientoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginRequerimientoImplFromJson(json);

  @override
  @JsonKey()
  final int idUsuario;
  @override
  @JsonKey()
  final int idRegistro;
  @override
  @JsonKey()
  final String codigoUsuario;
  @override
  @JsonKey()
  final String pwdUsuario;
  @override
  @JsonKey()
  final String otpIngresado;
  @override
  @JsonKey()
  final bool esMovil;

  @override
  String toString() {
    return 'LoginRequerimiento(idUsuario: $idUsuario, idRegistro: $idRegistro, codigoUsuario: $codigoUsuario, pwdUsuario: $pwdUsuario, otpIngresado: $otpIngresado, esMovil: $esMovil)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginRequerimientoImpl &&
            (identical(other.idUsuario, idUsuario) ||
                other.idUsuario == idUsuario) &&
            (identical(other.idRegistro, idRegistro) ||
                other.idRegistro == idRegistro) &&
            (identical(other.codigoUsuario, codigoUsuario) ||
                other.codigoUsuario == codigoUsuario) &&
            (identical(other.pwdUsuario, pwdUsuario) ||
                other.pwdUsuario == pwdUsuario) &&
            (identical(other.otpIngresado, otpIngresado) ||
                other.otpIngresado == otpIngresado) &&
            (identical(other.esMovil, esMovil) || other.esMovil == esMovil));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, idUsuario, idRegistro,
      codigoUsuario, pwdUsuario, otpIngresado, esMovil);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginRequerimientoImplCopyWith<_$LoginRequerimientoImpl> get copyWith =>
      __$$LoginRequerimientoImplCopyWithImpl<_$LoginRequerimientoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginRequerimientoImplToJson(
      this,
    );
  }
}

abstract class _LoginRequerimiento implements LoginRequerimiento {
  factory _LoginRequerimiento(
      {final int idUsuario,
      final int idRegistro,
      final String codigoUsuario,
      final String pwdUsuario,
      final String otpIngresado,
      final bool esMovil}) = _$LoginRequerimientoImpl;

  factory _LoginRequerimiento.fromJson(Map<String, dynamic> json) =
      _$LoginRequerimientoImpl.fromJson;

  @override
  int get idUsuario;
  @override
  int get idRegistro;
  @override
  String get codigoUsuario;
  @override
  String get pwdUsuario;
  @override
  String get otpIngresado;
  @override
  bool get esMovil;
  @override
  @JsonKey(ignore: true)
  _$$LoginRequerimientoImplCopyWith<_$LoginRequerimientoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LoginRespuesta _$LoginRespuestaFromJson(Map<String, dynamic> json) {
  return _LoginRespuesta.fromJson(json);
}

/// @nodoc
mixin _$LoginRespuesta {
  int get id => throw _privateConstructorUsedError;
  int get idRegistro => throw _privateConstructorUsedError;
  bool get realizaCambioUsuario => throw _privateConstructorUsedError;
  bool get realizaCambioClave => throw _privateConstructorUsedError;
  String get identificacion => throw _privateConstructorUsedError;
  String get nombre => throw _privateConstructorUsedError;
  int get segundosInactividad => throw _privateConstructorUsedError;
  String get fechaUltimoAcceso => throw _privateConstructorUsedError;
  @JsonKey(name: 'sF_ExisteError')
  bool get existError => throw _privateConstructorUsedError;
  @JsonKey(name: 'sF_Error')
  String get error => throw _privateConstructorUsedError;
  String get mensajeCambioClave => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginRespuestaCopyWith<LoginRespuesta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginRespuestaCopyWith<$Res> {
  factory $LoginRespuestaCopyWith(
          LoginRespuesta value, $Res Function(LoginRespuesta) then) =
      _$LoginRespuestaCopyWithImpl<$Res, LoginRespuesta>;
  @useResult
  $Res call(
      {int id,
      int idRegistro,
      bool realizaCambioUsuario,
      bool realizaCambioClave,
      String identificacion,
      String nombre,
      int segundosInactividad,
      String fechaUltimoAcceso,
      @JsonKey(name: 'sF_ExisteError') bool existError,
      @JsonKey(name: 'sF_Error') String error,
      String mensajeCambioClave});
}

/// @nodoc
class _$LoginRespuestaCopyWithImpl<$Res, $Val extends LoginRespuesta>
    implements $LoginRespuestaCopyWith<$Res> {
  _$LoginRespuestaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? idRegistro = null,
    Object? realizaCambioUsuario = null,
    Object? realizaCambioClave = null,
    Object? identificacion = null,
    Object? nombre = null,
    Object? segundosInactividad = null,
    Object? fechaUltimoAcceso = null,
    Object? existError = null,
    Object? error = null,
    Object? mensajeCambioClave = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      idRegistro: null == idRegistro
          ? _value.idRegistro
          : idRegistro // ignore: cast_nullable_to_non_nullable
              as int,
      realizaCambioUsuario: null == realizaCambioUsuario
          ? _value.realizaCambioUsuario
          : realizaCambioUsuario // ignore: cast_nullable_to_non_nullable
              as bool,
      realizaCambioClave: null == realizaCambioClave
          ? _value.realizaCambioClave
          : realizaCambioClave // ignore: cast_nullable_to_non_nullable
              as bool,
      identificacion: null == identificacion
          ? _value.identificacion
          : identificacion // ignore: cast_nullable_to_non_nullable
              as String,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      segundosInactividad: null == segundosInactividad
          ? _value.segundosInactividad
          : segundosInactividad // ignore: cast_nullable_to_non_nullable
              as int,
      fechaUltimoAcceso: null == fechaUltimoAcceso
          ? _value.fechaUltimoAcceso
          : fechaUltimoAcceso // ignore: cast_nullable_to_non_nullable
              as String,
      existError: null == existError
          ? _value.existError
          : existError // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      mensajeCambioClave: null == mensajeCambioClave
          ? _value.mensajeCambioClave
          : mensajeCambioClave // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginRespuestaImplCopyWith<$Res>
    implements $LoginRespuestaCopyWith<$Res> {
  factory _$$LoginRespuestaImplCopyWith(_$LoginRespuestaImpl value,
          $Res Function(_$LoginRespuestaImpl) then) =
      __$$LoginRespuestaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int idRegistro,
      bool realizaCambioUsuario,
      bool realizaCambioClave,
      String identificacion,
      String nombre,
      int segundosInactividad,
      String fechaUltimoAcceso,
      @JsonKey(name: 'sF_ExisteError') bool existError,
      @JsonKey(name: 'sF_Error') String error,
      String mensajeCambioClave});
}

/// @nodoc
class __$$LoginRespuestaImplCopyWithImpl<$Res>
    extends _$LoginRespuestaCopyWithImpl<$Res, _$LoginRespuestaImpl>
    implements _$$LoginRespuestaImplCopyWith<$Res> {
  __$$LoginRespuestaImplCopyWithImpl(
      _$LoginRespuestaImpl _value, $Res Function(_$LoginRespuestaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? idRegistro = null,
    Object? realizaCambioUsuario = null,
    Object? realizaCambioClave = null,
    Object? identificacion = null,
    Object? nombre = null,
    Object? segundosInactividad = null,
    Object? fechaUltimoAcceso = null,
    Object? existError = null,
    Object? error = null,
    Object? mensajeCambioClave = null,
  }) {
    return _then(_$LoginRespuestaImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      idRegistro: null == idRegistro
          ? _value.idRegistro
          : idRegistro // ignore: cast_nullable_to_non_nullable
              as int,
      realizaCambioUsuario: null == realizaCambioUsuario
          ? _value.realizaCambioUsuario
          : realizaCambioUsuario // ignore: cast_nullable_to_non_nullable
              as bool,
      realizaCambioClave: null == realizaCambioClave
          ? _value.realizaCambioClave
          : realizaCambioClave // ignore: cast_nullable_to_non_nullable
              as bool,
      identificacion: null == identificacion
          ? _value.identificacion
          : identificacion // ignore: cast_nullable_to_non_nullable
              as String,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      segundosInactividad: null == segundosInactividad
          ? _value.segundosInactividad
          : segundosInactividad // ignore: cast_nullable_to_non_nullable
              as int,
      fechaUltimoAcceso: null == fechaUltimoAcceso
          ? _value.fechaUltimoAcceso
          : fechaUltimoAcceso // ignore: cast_nullable_to_non_nullable
              as String,
      existError: null == existError
          ? _value.existError
          : existError // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      mensajeCambioClave: null == mensajeCambioClave
          ? _value.mensajeCambioClave
          : mensajeCambioClave // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginRespuestaImpl implements _LoginRespuesta {
  _$LoginRespuestaImpl(
      {this.id = 0,
      this.idRegistro = 0,
      this.realizaCambioUsuario = false,
      this.realizaCambioClave = false,
      this.identificacion = '',
      this.nombre = '',
      this.segundosInactividad = 0,
      this.fechaUltimoAcceso = '',
      @JsonKey(name: 'sF_ExisteError') this.existError = false,
      @JsonKey(name: 'sF_Error') this.error = '',
      this.mensajeCambioClave = ''});

  factory _$LoginRespuestaImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginRespuestaImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int idRegistro;
  @override
  @JsonKey()
  final bool realizaCambioUsuario;
  @override
  @JsonKey()
  final bool realizaCambioClave;
  @override
  @JsonKey()
  final String identificacion;
  @override
  @JsonKey()
  final String nombre;
  @override
  @JsonKey()
  final int segundosInactividad;
  @override
  @JsonKey()
  final String fechaUltimoAcceso;
  @override
  @JsonKey(name: 'sF_ExisteError')
  final bool existError;
  @override
  @JsonKey(name: 'sF_Error')
  final String error;
  @override
  @JsonKey()
  final String mensajeCambioClave;

  @override
  String toString() {
    return 'LoginRespuesta(id: $id, idRegistro: $idRegistro, realizaCambioUsuario: $realizaCambioUsuario, realizaCambioClave: $realizaCambioClave, identificacion: $identificacion, nombre: $nombre, segundosInactividad: $segundosInactividad, fechaUltimoAcceso: $fechaUltimoAcceso, existError: $existError, error: $error, mensajeCambioClave: $mensajeCambioClave)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginRespuestaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.idRegistro, idRegistro) ||
                other.idRegistro == idRegistro) &&
            (identical(other.realizaCambioUsuario, realizaCambioUsuario) ||
                other.realizaCambioUsuario == realizaCambioUsuario) &&
            (identical(other.realizaCambioClave, realizaCambioClave) ||
                other.realizaCambioClave == realizaCambioClave) &&
            (identical(other.identificacion, identificacion) ||
                other.identificacion == identificacion) &&
            (identical(other.nombre, nombre) || other.nombre == nombre) &&
            (identical(other.segundosInactividad, segundosInactividad) ||
                other.segundosInactividad == segundosInactividad) &&
            (identical(other.fechaUltimoAcceso, fechaUltimoAcceso) ||
                other.fechaUltimoAcceso == fechaUltimoAcceso) &&
            (identical(other.existError, existError) ||
                other.existError == existError) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.mensajeCambioClave, mensajeCambioClave) ||
                other.mensajeCambioClave == mensajeCambioClave));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      idRegistro,
      realizaCambioUsuario,
      realizaCambioClave,
      identificacion,
      nombre,
      segundosInactividad,
      fechaUltimoAcceso,
      existError,
      error,
      mensajeCambioClave);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginRespuestaImplCopyWith<_$LoginRespuestaImpl> get copyWith =>
      __$$LoginRespuestaImplCopyWithImpl<_$LoginRespuestaImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginRespuestaImplToJson(
      this,
    );
  }
}

abstract class _LoginRespuesta implements LoginRespuesta {
  factory _LoginRespuesta(
      {final int id,
      final int idRegistro,
      final bool realizaCambioUsuario,
      final bool realizaCambioClave,
      final String identificacion,
      final String nombre,
      final int segundosInactividad,
      final String fechaUltimoAcceso,
      @JsonKey(name: 'sF_ExisteError') final bool existError,
      @JsonKey(name: 'sF_Error') final String error,
      final String mensajeCambioClave}) = _$LoginRespuestaImpl;

  factory _LoginRespuesta.fromJson(Map<String, dynamic> json) =
      _$LoginRespuestaImpl.fromJson;

  @override
  int get id;
  @override
  int get idRegistro;
  @override
  bool get realizaCambioUsuario;
  @override
  bool get realizaCambioClave;
  @override
  String get identificacion;
  @override
  String get nombre;
  @override
  int get segundosInactividad;
  @override
  String get fechaUltimoAcceso;
  @override
  @JsonKey(name: 'sF_ExisteError')
  bool get existError;
  @override
  @JsonKey(name: 'sF_Error')
  String get error;
  @override
  String get mensajeCambioClave;
  @override
  @JsonKey(ignore: true)
  _$$LoginRespuestaImplCopyWith<_$LoginRespuestaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ValidaUsuarioRespuesta _$ValidaUsuarioRespuestaFromJson(
    Map<String, dynamic> json) {
  return _ValidaUsuarioRespuesta.fromJson(json);
}

/// @nodoc
mixin _$ValidaUsuarioRespuesta {
  String get imagen => throw _privateConstructorUsedError;
  String get frase => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ValidaUsuarioRespuestaCopyWith<ValidaUsuarioRespuesta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidaUsuarioRespuestaCopyWith<$Res> {
  factory $ValidaUsuarioRespuestaCopyWith(ValidaUsuarioRespuesta value,
          $Res Function(ValidaUsuarioRespuesta) then) =
      _$ValidaUsuarioRespuestaCopyWithImpl<$Res, ValidaUsuarioRespuesta>;
  @useResult
  $Res call({String imagen, String frase});
}

/// @nodoc
class _$ValidaUsuarioRespuestaCopyWithImpl<$Res,
        $Val extends ValidaUsuarioRespuesta>
    implements $ValidaUsuarioRespuestaCopyWith<$Res> {
  _$ValidaUsuarioRespuestaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagen = null,
    Object? frase = null,
  }) {
    return _then(_value.copyWith(
      imagen: null == imagen
          ? _value.imagen
          : imagen // ignore: cast_nullable_to_non_nullable
              as String,
      frase: null == frase
          ? _value.frase
          : frase // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValidaUsuarioRespuestaImplCopyWith<$Res>
    implements $ValidaUsuarioRespuestaCopyWith<$Res> {
  factory _$$ValidaUsuarioRespuestaImplCopyWith(
          _$ValidaUsuarioRespuestaImpl value,
          $Res Function(_$ValidaUsuarioRespuestaImpl) then) =
      __$$ValidaUsuarioRespuestaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String imagen, String frase});
}

/// @nodoc
class __$$ValidaUsuarioRespuestaImplCopyWithImpl<$Res>
    extends _$ValidaUsuarioRespuestaCopyWithImpl<$Res,
        _$ValidaUsuarioRespuestaImpl>
    implements _$$ValidaUsuarioRespuestaImplCopyWith<$Res> {
  __$$ValidaUsuarioRespuestaImplCopyWithImpl(
      _$ValidaUsuarioRespuestaImpl _value,
      $Res Function(_$ValidaUsuarioRespuestaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagen = null,
    Object? frase = null,
  }) {
    return _then(_$ValidaUsuarioRespuestaImpl(
      imagen: null == imagen
          ? _value.imagen
          : imagen // ignore: cast_nullable_to_non_nullable
              as String,
      frase: null == frase
          ? _value.frase
          : frase // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValidaUsuarioRespuestaImpl implements _ValidaUsuarioRespuesta {
  _$ValidaUsuarioRespuestaImpl({this.imagen = '', this.frase = ''});

  factory _$ValidaUsuarioRespuestaImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValidaUsuarioRespuestaImplFromJson(json);

  @override
  @JsonKey()
  final String imagen;
  @override
  @JsonKey()
  final String frase;

  @override
  String toString() {
    return 'ValidaUsuarioRespuesta(imagen: $imagen, frase: $frase)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidaUsuarioRespuestaImpl &&
            (identical(other.imagen, imagen) || other.imagen == imagen) &&
            (identical(other.frase, frase) || other.frase == frase));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imagen, frase);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidaUsuarioRespuestaImplCopyWith<_$ValidaUsuarioRespuestaImpl>
      get copyWith => __$$ValidaUsuarioRespuestaImplCopyWithImpl<
          _$ValidaUsuarioRespuestaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValidaUsuarioRespuestaImplToJson(
      this,
    );
  }
}

abstract class _ValidaUsuarioRespuesta implements ValidaUsuarioRespuesta {
  factory _ValidaUsuarioRespuesta({final String imagen, final String frase}) =
      _$ValidaUsuarioRespuestaImpl;

  factory _ValidaUsuarioRespuesta.fromJson(Map<String, dynamic> json) =
      _$ValidaUsuarioRespuestaImpl.fromJson;

  @override
  String get imagen;
  @override
  String get frase;
  @override
  @JsonKey(ignore: true)
  _$$ValidaUsuarioRespuestaImplCopyWith<_$ValidaUsuarioRespuestaImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UsuarioModel _$UsuarioModelFromJson(Map<String, dynamic> json) {
  return _UsuarioModel.fromJson(json);
}

/// @nodoc
mixin _$UsuarioModel {
  int get id => throw _privateConstructorUsedError;
  String get nombre => throw _privateConstructorUsedError;
  String get fechaUltimoAcceso => throw _privateConstructorUsedError;
  String get codigoUsuario => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsuarioModelCopyWith<UsuarioModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsuarioModelCopyWith<$Res> {
  factory $UsuarioModelCopyWith(
          UsuarioModel value, $Res Function(UsuarioModel) then) =
      _$UsuarioModelCopyWithImpl<$Res, UsuarioModel>;
  @useResult
  $Res call(
      {int id, String nombre, String fechaUltimoAcceso, String codigoUsuario});
}

/// @nodoc
class _$UsuarioModelCopyWithImpl<$Res, $Val extends UsuarioModel>
    implements $UsuarioModelCopyWith<$Res> {
  _$UsuarioModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nombre = null,
    Object? fechaUltimoAcceso = null,
    Object? codigoUsuario = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      fechaUltimoAcceso: null == fechaUltimoAcceso
          ? _value.fechaUltimoAcceso
          : fechaUltimoAcceso // ignore: cast_nullable_to_non_nullable
              as String,
      codigoUsuario: null == codigoUsuario
          ? _value.codigoUsuario
          : codigoUsuario // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UsuarioModelImplCopyWith<$Res>
    implements $UsuarioModelCopyWith<$Res> {
  factory _$$UsuarioModelImplCopyWith(
          _$UsuarioModelImpl value, $Res Function(_$UsuarioModelImpl) then) =
      __$$UsuarioModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String nombre, String fechaUltimoAcceso, String codigoUsuario});
}

/// @nodoc
class __$$UsuarioModelImplCopyWithImpl<$Res>
    extends _$UsuarioModelCopyWithImpl<$Res, _$UsuarioModelImpl>
    implements _$$UsuarioModelImplCopyWith<$Res> {
  __$$UsuarioModelImplCopyWithImpl(
      _$UsuarioModelImpl _value, $Res Function(_$UsuarioModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nombre = null,
    Object? fechaUltimoAcceso = null,
    Object? codigoUsuario = null,
  }) {
    return _then(_$UsuarioModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      fechaUltimoAcceso: null == fechaUltimoAcceso
          ? _value.fechaUltimoAcceso
          : fechaUltimoAcceso // ignore: cast_nullable_to_non_nullable
              as String,
      codigoUsuario: null == codigoUsuario
          ? _value.codigoUsuario
          : codigoUsuario // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UsuarioModelImpl implements _UsuarioModel {
  _$UsuarioModelImpl(
      {this.id = 0,
      this.nombre = '',
      this.fechaUltimoAcceso = '',
      this.codigoUsuario = ''});

  factory _$UsuarioModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsuarioModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String nombre;
  @override
  @JsonKey()
  final String fechaUltimoAcceso;
  @override
  @JsonKey()
  final String codigoUsuario;

  @override
  String toString() {
    return 'UsuarioModel(id: $id, nombre: $nombre, fechaUltimoAcceso: $fechaUltimoAcceso, codigoUsuario: $codigoUsuario)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsuarioModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nombre, nombre) || other.nombre == nombre) &&
            (identical(other.fechaUltimoAcceso, fechaUltimoAcceso) ||
                other.fechaUltimoAcceso == fechaUltimoAcceso) &&
            (identical(other.codigoUsuario, codigoUsuario) ||
                other.codigoUsuario == codigoUsuario));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, nombre, fechaUltimoAcceso, codigoUsuario);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsuarioModelImplCopyWith<_$UsuarioModelImpl> get copyWith =>
      __$$UsuarioModelImplCopyWithImpl<_$UsuarioModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UsuarioModelImplToJson(
      this,
    );
  }
}

abstract class _UsuarioModel implements UsuarioModel {
  factory _UsuarioModel(
      {final int id,
      final String nombre,
      final String fechaUltimoAcceso,
      final String codigoUsuario}) = _$UsuarioModelImpl;

  factory _UsuarioModel.fromJson(Map<String, dynamic> json) =
      _$UsuarioModelImpl.fromJson;

  @override
  int get id;
  @override
  String get nombre;
  @override
  String get fechaUltimoAcceso;
  @override
  String get codigoUsuario;
  @override
  @JsonKey(ignore: true)
  _$$UsuarioModelImplCopyWith<_$UsuarioModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ValidacionOtpAccesoRespuesta _$ValidacionOtpAccesoRespuestaFromJson(
    Map<String, dynamic> json) {
  return _ValidacionOtpAccesoRespuesta.fromJson(json);
}

/// @nodoc
mixin _$ValidacionOtpAccesoRespuesta {
  bool get esValido => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  int get segundosInactividad => throw _privateConstructorUsedError;
  UsuarioModel? get usuario => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ValidacionOtpAccesoRespuestaCopyWith<ValidacionOtpAccesoRespuesta>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidacionOtpAccesoRespuestaCopyWith<$Res> {
  factory $ValidacionOtpAccesoRespuestaCopyWith(
          ValidacionOtpAccesoRespuesta value,
          $Res Function(ValidacionOtpAccesoRespuesta) then) =
      _$ValidacionOtpAccesoRespuestaCopyWithImpl<$Res,
          ValidacionOtpAccesoRespuesta>;
  @useResult
  $Res call(
      {bool esValido,
      String token,
      int segundosInactividad,
      UsuarioModel? usuario});

  $UsuarioModelCopyWith<$Res>? get usuario;
}

/// @nodoc
class _$ValidacionOtpAccesoRespuestaCopyWithImpl<$Res,
        $Val extends ValidacionOtpAccesoRespuesta>
    implements $ValidacionOtpAccesoRespuestaCopyWith<$Res> {
  _$ValidacionOtpAccesoRespuestaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? esValido = null,
    Object? token = null,
    Object? segundosInactividad = null,
    Object? usuario = freezed,
  }) {
    return _then(_value.copyWith(
      esValido: null == esValido
          ? _value.esValido
          : esValido // ignore: cast_nullable_to_non_nullable
              as bool,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      segundosInactividad: null == segundosInactividad
          ? _value.segundosInactividad
          : segundosInactividad // ignore: cast_nullable_to_non_nullable
              as int,
      usuario: freezed == usuario
          ? _value.usuario
          : usuario // ignore: cast_nullable_to_non_nullable
              as UsuarioModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UsuarioModelCopyWith<$Res>? get usuario {
    if (_value.usuario == null) {
      return null;
    }

    return $UsuarioModelCopyWith<$Res>(_value.usuario!, (value) {
      return _then(_value.copyWith(usuario: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ValidacionOtpAccesoRespuestaImplCopyWith<$Res>
    implements $ValidacionOtpAccesoRespuestaCopyWith<$Res> {
  factory _$$ValidacionOtpAccesoRespuestaImplCopyWith(
          _$ValidacionOtpAccesoRespuestaImpl value,
          $Res Function(_$ValidacionOtpAccesoRespuestaImpl) then) =
      __$$ValidacionOtpAccesoRespuestaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool esValido,
      String token,
      int segundosInactividad,
      UsuarioModel? usuario});

  @override
  $UsuarioModelCopyWith<$Res>? get usuario;
}

/// @nodoc
class __$$ValidacionOtpAccesoRespuestaImplCopyWithImpl<$Res>
    extends _$ValidacionOtpAccesoRespuestaCopyWithImpl<$Res,
        _$ValidacionOtpAccesoRespuestaImpl>
    implements _$$ValidacionOtpAccesoRespuestaImplCopyWith<$Res> {
  __$$ValidacionOtpAccesoRespuestaImplCopyWithImpl(
      _$ValidacionOtpAccesoRespuestaImpl _value,
      $Res Function(_$ValidacionOtpAccesoRespuestaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? esValido = null,
    Object? token = null,
    Object? segundosInactividad = null,
    Object? usuario = freezed,
  }) {
    return _then(_$ValidacionOtpAccesoRespuestaImpl(
      esValido: null == esValido
          ? _value.esValido
          : esValido // ignore: cast_nullable_to_non_nullable
              as bool,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      segundosInactividad: null == segundosInactividad
          ? _value.segundosInactividad
          : segundosInactividad // ignore: cast_nullable_to_non_nullable
              as int,
      usuario: freezed == usuario
          ? _value.usuario
          : usuario // ignore: cast_nullable_to_non_nullable
              as UsuarioModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValidacionOtpAccesoRespuestaImpl
    implements _ValidacionOtpAccesoRespuesta {
  _$ValidacionOtpAccesoRespuestaImpl(
      {this.esValido = false,
      this.token = '',
      this.segundosInactividad = 60,
      this.usuario});

  factory _$ValidacionOtpAccesoRespuestaImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ValidacionOtpAccesoRespuestaImplFromJson(json);

  @override
  @JsonKey()
  final bool esValido;
  @override
  @JsonKey()
  final String token;
  @override
  @JsonKey()
  final int segundosInactividad;
  @override
  final UsuarioModel? usuario;

  @override
  String toString() {
    return 'ValidacionOtpAccesoRespuesta(esValido: $esValido, token: $token, segundosInactividad: $segundosInactividad, usuario: $usuario)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidacionOtpAccesoRespuestaImpl &&
            (identical(other.esValido, esValido) ||
                other.esValido == esValido) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.segundosInactividad, segundosInactividad) ||
                other.segundosInactividad == segundosInactividad) &&
            (identical(other.usuario, usuario) || other.usuario == usuario));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, esValido, token, segundosInactividad, usuario);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidacionOtpAccesoRespuestaImplCopyWith<
          _$ValidacionOtpAccesoRespuestaImpl>
      get copyWith => __$$ValidacionOtpAccesoRespuestaImplCopyWithImpl<
          _$ValidacionOtpAccesoRespuestaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValidacionOtpAccesoRespuestaImplToJson(
      this,
    );
  }
}

abstract class _ValidacionOtpAccesoRespuesta
    implements ValidacionOtpAccesoRespuesta {
  factory _ValidacionOtpAccesoRespuesta(
      {final bool esValido,
      final String token,
      final int segundosInactividad,
      final UsuarioModel? usuario}) = _$ValidacionOtpAccesoRespuestaImpl;

  factory _ValidacionOtpAccesoRespuesta.fromJson(Map<String, dynamic> json) =
      _$ValidacionOtpAccesoRespuestaImpl.fromJson;

  @override
  bool get esValido;
  @override
  String get token;
  @override
  int get segundosInactividad;
  @override
  UsuarioModel? get usuario;
  @override
  @JsonKey(ignore: true)
  _$$ValidacionOtpAccesoRespuestaImplCopyWith<
          _$ValidacionOtpAccesoRespuestaImpl>
      get copyWith => throw _privateConstructorUsedError;
}

LoginState _$LoginStateFromJson(Map<String, dynamic> json) {
  return _LoginState.fromJson(json);
}

/// @nodoc
mixin _$LoginState {
  bool get estaValidado => throw _privateConstructorUsedError;
  bool get obscurecerClave => throw _privateConstructorUsedError;
  bool get modoConfirmacion => throw _privateConstructorUsedError;
  bool get permiteEditarUsuario => throw _privateConstructorUsedError;
  ValidaUsuarioRespuesta? get informacionValidada =>
      throw _privateConstructorUsedError;
  LoginRespuesta? get loginRespuesta => throw _privateConstructorUsedError;
  ValidacionOtpAccesoRespuesta? get validacionOtpRespuesta =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {bool estaValidado,
      bool obscurecerClave,
      bool modoConfirmacion,
      bool permiteEditarUsuario,
      ValidaUsuarioRespuesta? informacionValidada,
      LoginRespuesta? loginRespuesta,
      ValidacionOtpAccesoRespuesta? validacionOtpRespuesta});

  $ValidaUsuarioRespuestaCopyWith<$Res>? get informacionValidada;
  $LoginRespuestaCopyWith<$Res>? get loginRespuesta;
  $ValidacionOtpAccesoRespuestaCopyWith<$Res>? get validacionOtpRespuesta;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? estaValidado = null,
    Object? obscurecerClave = null,
    Object? modoConfirmacion = null,
    Object? permiteEditarUsuario = null,
    Object? informacionValidada = freezed,
    Object? loginRespuesta = freezed,
    Object? validacionOtpRespuesta = freezed,
  }) {
    return _then(_value.copyWith(
      estaValidado: null == estaValidado
          ? _value.estaValidado
          : estaValidado // ignore: cast_nullable_to_non_nullable
              as bool,
      obscurecerClave: null == obscurecerClave
          ? _value.obscurecerClave
          : obscurecerClave // ignore: cast_nullable_to_non_nullable
              as bool,
      modoConfirmacion: null == modoConfirmacion
          ? _value.modoConfirmacion
          : modoConfirmacion // ignore: cast_nullable_to_non_nullable
              as bool,
      permiteEditarUsuario: null == permiteEditarUsuario
          ? _value.permiteEditarUsuario
          : permiteEditarUsuario // ignore: cast_nullable_to_non_nullable
              as bool,
      informacionValidada: freezed == informacionValidada
          ? _value.informacionValidada
          : informacionValidada // ignore: cast_nullable_to_non_nullable
              as ValidaUsuarioRespuesta?,
      loginRespuesta: freezed == loginRespuesta
          ? _value.loginRespuesta
          : loginRespuesta // ignore: cast_nullable_to_non_nullable
              as LoginRespuesta?,
      validacionOtpRespuesta: freezed == validacionOtpRespuesta
          ? _value.validacionOtpRespuesta
          : validacionOtpRespuesta // ignore: cast_nullable_to_non_nullable
              as ValidacionOtpAccesoRespuesta?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ValidaUsuarioRespuestaCopyWith<$Res>? get informacionValidada {
    if (_value.informacionValidada == null) {
      return null;
    }

    return $ValidaUsuarioRespuestaCopyWith<$Res>(_value.informacionValidada!,
        (value) {
      return _then(_value.copyWith(informacionValidada: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginRespuestaCopyWith<$Res>? get loginRespuesta {
    if (_value.loginRespuesta == null) {
      return null;
    }

    return $LoginRespuestaCopyWith<$Res>(_value.loginRespuesta!, (value) {
      return _then(_value.copyWith(loginRespuesta: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ValidacionOtpAccesoRespuestaCopyWith<$Res>? get validacionOtpRespuesta {
    if (_value.validacionOtpRespuesta == null) {
      return null;
    }

    return $ValidacionOtpAccesoRespuestaCopyWith<$Res>(
        _value.validacionOtpRespuesta!, (value) {
      return _then(_value.copyWith(validacionOtpRespuesta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginStateImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
          _$LoginStateImpl value, $Res Function(_$LoginStateImpl) then) =
      __$$LoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool estaValidado,
      bool obscurecerClave,
      bool modoConfirmacion,
      bool permiteEditarUsuario,
      ValidaUsuarioRespuesta? informacionValidada,
      LoginRespuesta? loginRespuesta,
      ValidacionOtpAccesoRespuesta? validacionOtpRespuesta});

  @override
  $ValidaUsuarioRespuestaCopyWith<$Res>? get informacionValidada;
  @override
  $LoginRespuestaCopyWith<$Res>? get loginRespuesta;
  @override
  $ValidacionOtpAccesoRespuestaCopyWith<$Res>? get validacionOtpRespuesta;
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
      _$LoginStateImpl _value, $Res Function(_$LoginStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? estaValidado = null,
    Object? obscurecerClave = null,
    Object? modoConfirmacion = null,
    Object? permiteEditarUsuario = null,
    Object? informacionValidada = freezed,
    Object? loginRespuesta = freezed,
    Object? validacionOtpRespuesta = freezed,
  }) {
    return _then(_$LoginStateImpl(
      estaValidado: null == estaValidado
          ? _value.estaValidado
          : estaValidado // ignore: cast_nullable_to_non_nullable
              as bool,
      obscurecerClave: null == obscurecerClave
          ? _value.obscurecerClave
          : obscurecerClave // ignore: cast_nullable_to_non_nullable
              as bool,
      modoConfirmacion: null == modoConfirmacion
          ? _value.modoConfirmacion
          : modoConfirmacion // ignore: cast_nullable_to_non_nullable
              as bool,
      permiteEditarUsuario: null == permiteEditarUsuario
          ? _value.permiteEditarUsuario
          : permiteEditarUsuario // ignore: cast_nullable_to_non_nullable
              as bool,
      informacionValidada: freezed == informacionValidada
          ? _value.informacionValidada
          : informacionValidada // ignore: cast_nullable_to_non_nullable
              as ValidaUsuarioRespuesta?,
      loginRespuesta: freezed == loginRespuesta
          ? _value.loginRespuesta
          : loginRespuesta // ignore: cast_nullable_to_non_nullable
              as LoginRespuesta?,
      validacionOtpRespuesta: freezed == validacionOtpRespuesta
          ? _value.validacionOtpRespuesta
          : validacionOtpRespuesta // ignore: cast_nullable_to_non_nullable
              as ValidacionOtpAccesoRespuesta?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginStateImpl implements _LoginState {
  _$LoginStateImpl(
      {this.estaValidado = false,
      this.obscurecerClave = false,
      this.modoConfirmacion = false,
      required this.permiteEditarUsuario,
      this.informacionValidada,
      this.loginRespuesta,
      this.validacionOtpRespuesta});

  factory _$LoginStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginStateImplFromJson(json);

  @override
  @JsonKey()
  final bool estaValidado;
  @override
  @JsonKey()
  final bool obscurecerClave;
  @override
  @JsonKey()
  final bool modoConfirmacion;
  @override
  final bool permiteEditarUsuario;
  @override
  final ValidaUsuarioRespuesta? informacionValidada;
  @override
  final LoginRespuesta? loginRespuesta;
  @override
  final ValidacionOtpAccesoRespuesta? validacionOtpRespuesta;

  @override
  String toString() {
    return 'LoginState(estaValidado: $estaValidado, obscurecerClave: $obscurecerClave, modoConfirmacion: $modoConfirmacion, permiteEditarUsuario: $permiteEditarUsuario, informacionValidada: $informacionValidada, loginRespuesta: $loginRespuesta, validacionOtpRespuesta: $validacionOtpRespuesta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateImpl &&
            (identical(other.estaValidado, estaValidado) ||
                other.estaValidado == estaValidado) &&
            (identical(other.obscurecerClave, obscurecerClave) ||
                other.obscurecerClave == obscurecerClave) &&
            (identical(other.modoConfirmacion, modoConfirmacion) ||
                other.modoConfirmacion == modoConfirmacion) &&
            (identical(other.permiteEditarUsuario, permiteEditarUsuario) ||
                other.permiteEditarUsuario == permiteEditarUsuario) &&
            (identical(other.informacionValidada, informacionValidada) ||
                other.informacionValidada == informacionValidada) &&
            (identical(other.loginRespuesta, loginRespuesta) ||
                other.loginRespuesta == loginRespuesta) &&
            (identical(other.validacionOtpRespuesta, validacionOtpRespuesta) ||
                other.validacionOtpRespuesta == validacionOtpRespuesta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      estaValidado,
      obscurecerClave,
      modoConfirmacion,
      permiteEditarUsuario,
      informacionValidada,
      loginRespuesta,
      validacionOtpRespuesta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      __$$LoginStateImplCopyWithImpl<_$LoginStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginStateImplToJson(
      this,
    );
  }
}

abstract class _LoginState implements LoginState {
  factory _LoginState(
          {final bool estaValidado,
          final bool obscurecerClave,
          final bool modoConfirmacion,
          required final bool permiteEditarUsuario,
          final ValidaUsuarioRespuesta? informacionValidada,
          final LoginRespuesta? loginRespuesta,
          final ValidacionOtpAccesoRespuesta? validacionOtpRespuesta}) =
      _$LoginStateImpl;

  factory _LoginState.fromJson(Map<String, dynamic> json) =
      _$LoginStateImpl.fromJson;

  @override
  bool get estaValidado;
  @override
  bool get obscurecerClave;
  @override
  bool get modoConfirmacion;
  @override
  bool get permiteEditarUsuario;
  @override
  ValidaUsuarioRespuesta? get informacionValidada;
  @override
  LoginRespuesta? get loginRespuesta;
  @override
  ValidacionOtpAccesoRespuesta? get validacionOtpRespuesta;
  @override
  @JsonKey(ignore: true)
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RecuperarContraseniaState _$RecuperarContraseniaStateFromJson(
    Map<String, dynamic> json) {
  return _RecuperarContraseniaState.fromJson(json);
}

/// @nodoc
mixin _$RecuperarContraseniaState {
  bool get estaValidado => throw _privateConstructorUsedError;
  bool get obscurecerClave => throw _privateConstructorUsedError;
  bool get modoConfirmacion => throw _privateConstructorUsedError;
  bool get permiteEditarUsuario => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecuperarContraseniaStateCopyWith<RecuperarContraseniaState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecuperarContraseniaStateCopyWith<$Res> {
  factory $RecuperarContraseniaStateCopyWith(RecuperarContraseniaState value,
          $Res Function(RecuperarContraseniaState) then) =
      _$RecuperarContraseniaStateCopyWithImpl<$Res, RecuperarContraseniaState>;
  @useResult
  $Res call(
      {bool estaValidado,
      bool obscurecerClave,
      bool modoConfirmacion,
      bool permiteEditarUsuario});
}

/// @nodoc
class _$RecuperarContraseniaStateCopyWithImpl<$Res,
        $Val extends RecuperarContraseniaState>
    implements $RecuperarContraseniaStateCopyWith<$Res> {
  _$RecuperarContraseniaStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? estaValidado = null,
    Object? obscurecerClave = null,
    Object? modoConfirmacion = null,
    Object? permiteEditarUsuario = null,
  }) {
    return _then(_value.copyWith(
      estaValidado: null == estaValidado
          ? _value.estaValidado
          : estaValidado // ignore: cast_nullable_to_non_nullable
              as bool,
      obscurecerClave: null == obscurecerClave
          ? _value.obscurecerClave
          : obscurecerClave // ignore: cast_nullable_to_non_nullable
              as bool,
      modoConfirmacion: null == modoConfirmacion
          ? _value.modoConfirmacion
          : modoConfirmacion // ignore: cast_nullable_to_non_nullable
              as bool,
      permiteEditarUsuario: null == permiteEditarUsuario
          ? _value.permiteEditarUsuario
          : permiteEditarUsuario // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecuperarContraseniaStateImplCopyWith<$Res>
    implements $RecuperarContraseniaStateCopyWith<$Res> {
  factory _$$RecuperarContraseniaStateImplCopyWith(
          _$RecuperarContraseniaStateImpl value,
          $Res Function(_$RecuperarContraseniaStateImpl) then) =
      __$$RecuperarContraseniaStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool estaValidado,
      bool obscurecerClave,
      bool modoConfirmacion,
      bool permiteEditarUsuario});
}

/// @nodoc
class __$$RecuperarContraseniaStateImplCopyWithImpl<$Res>
    extends _$RecuperarContraseniaStateCopyWithImpl<$Res,
        _$RecuperarContraseniaStateImpl>
    implements _$$RecuperarContraseniaStateImplCopyWith<$Res> {
  __$$RecuperarContraseniaStateImplCopyWithImpl(
      _$RecuperarContraseniaStateImpl _value,
      $Res Function(_$RecuperarContraseniaStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? estaValidado = null,
    Object? obscurecerClave = null,
    Object? modoConfirmacion = null,
    Object? permiteEditarUsuario = null,
  }) {
    return _then(_$RecuperarContraseniaStateImpl(
      estaValidado: null == estaValidado
          ? _value.estaValidado
          : estaValidado // ignore: cast_nullable_to_non_nullable
              as bool,
      obscurecerClave: null == obscurecerClave
          ? _value.obscurecerClave
          : obscurecerClave // ignore: cast_nullable_to_non_nullable
              as bool,
      modoConfirmacion: null == modoConfirmacion
          ? _value.modoConfirmacion
          : modoConfirmacion // ignore: cast_nullable_to_non_nullable
              as bool,
      permiteEditarUsuario: null == permiteEditarUsuario
          ? _value.permiteEditarUsuario
          : permiteEditarUsuario // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecuperarContraseniaStateImpl implements _RecuperarContraseniaState {
  _$RecuperarContraseniaStateImpl(
      {this.estaValidado = false,
      this.obscurecerClave = false,
      this.modoConfirmacion = false,
      required this.permiteEditarUsuario});

  factory _$RecuperarContraseniaStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecuperarContraseniaStateImplFromJson(json);

  @override
  @JsonKey()
  final bool estaValidado;
  @override
  @JsonKey()
  final bool obscurecerClave;
  @override
  @JsonKey()
  final bool modoConfirmacion;
  @override
  final bool permiteEditarUsuario;

  @override
  String toString() {
    return 'RecuperarContraseniaState(estaValidado: $estaValidado, obscurecerClave: $obscurecerClave, modoConfirmacion: $modoConfirmacion, permiteEditarUsuario: $permiteEditarUsuario)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecuperarContraseniaStateImpl &&
            (identical(other.estaValidado, estaValidado) ||
                other.estaValidado == estaValidado) &&
            (identical(other.obscurecerClave, obscurecerClave) ||
                other.obscurecerClave == obscurecerClave) &&
            (identical(other.modoConfirmacion, modoConfirmacion) ||
                other.modoConfirmacion == modoConfirmacion) &&
            (identical(other.permiteEditarUsuario, permiteEditarUsuario) ||
                other.permiteEditarUsuario == permiteEditarUsuario));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, estaValidado, obscurecerClave,
      modoConfirmacion, permiteEditarUsuario);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecuperarContraseniaStateImplCopyWith<_$RecuperarContraseniaStateImpl>
      get copyWith => __$$RecuperarContraseniaStateImplCopyWithImpl<
          _$RecuperarContraseniaStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecuperarContraseniaStateImplToJson(
      this,
    );
  }
}

abstract class _RecuperarContraseniaState implements RecuperarContraseniaState {
  factory _RecuperarContraseniaState(
          {final bool estaValidado,
          final bool obscurecerClave,
          final bool modoConfirmacion,
          required final bool permiteEditarUsuario}) =
      _$RecuperarContraseniaStateImpl;

  factory _RecuperarContraseniaState.fromJson(Map<String, dynamic> json) =
      _$RecuperarContraseniaStateImpl.fromJson;

  @override
  bool get estaValidado;
  @override
  bool get obscurecerClave;
  @override
  bool get modoConfirmacion;
  @override
  bool get permiteEditarUsuario;
  @override
  @JsonKey(ignore: true)
  _$$RecuperarContraseniaStateImplCopyWith<_$RecuperarContraseniaStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RecuperarUsuarioState _$RecuperarUsuarioStateFromJson(
    Map<String, dynamic> json) {
  return _RecuperarUsuarioState.fromJson(json);
}

/// @nodoc
mixin _$RecuperarUsuarioState {
  bool get estaValidado => throw _privateConstructorUsedError;
  bool get obscurecerClave => throw _privateConstructorUsedError;
  bool get modoConfirmacion => throw _privateConstructorUsedError;
  bool get permiteEditarUsuario => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecuperarUsuarioStateCopyWith<RecuperarUsuarioState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecuperarUsuarioStateCopyWith<$Res> {
  factory $RecuperarUsuarioStateCopyWith(RecuperarUsuarioState value,
          $Res Function(RecuperarUsuarioState) then) =
      _$RecuperarUsuarioStateCopyWithImpl<$Res, RecuperarUsuarioState>;
  @useResult
  $Res call(
      {bool estaValidado,
      bool obscurecerClave,
      bool modoConfirmacion,
      bool permiteEditarUsuario});
}

/// @nodoc
class _$RecuperarUsuarioStateCopyWithImpl<$Res,
        $Val extends RecuperarUsuarioState>
    implements $RecuperarUsuarioStateCopyWith<$Res> {
  _$RecuperarUsuarioStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? estaValidado = null,
    Object? obscurecerClave = null,
    Object? modoConfirmacion = null,
    Object? permiteEditarUsuario = null,
  }) {
    return _then(_value.copyWith(
      estaValidado: null == estaValidado
          ? _value.estaValidado
          : estaValidado // ignore: cast_nullable_to_non_nullable
              as bool,
      obscurecerClave: null == obscurecerClave
          ? _value.obscurecerClave
          : obscurecerClave // ignore: cast_nullable_to_non_nullable
              as bool,
      modoConfirmacion: null == modoConfirmacion
          ? _value.modoConfirmacion
          : modoConfirmacion // ignore: cast_nullable_to_non_nullable
              as bool,
      permiteEditarUsuario: null == permiteEditarUsuario
          ? _value.permiteEditarUsuario
          : permiteEditarUsuario // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecuperarUsuarioStateImplCopyWith<$Res>
    implements $RecuperarUsuarioStateCopyWith<$Res> {
  factory _$$RecuperarUsuarioStateImplCopyWith(
          _$RecuperarUsuarioStateImpl value,
          $Res Function(_$RecuperarUsuarioStateImpl) then) =
      __$$RecuperarUsuarioStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool estaValidado,
      bool obscurecerClave,
      bool modoConfirmacion,
      bool permiteEditarUsuario});
}

/// @nodoc
class __$$RecuperarUsuarioStateImplCopyWithImpl<$Res>
    extends _$RecuperarUsuarioStateCopyWithImpl<$Res,
        _$RecuperarUsuarioStateImpl>
    implements _$$RecuperarUsuarioStateImplCopyWith<$Res> {
  __$$RecuperarUsuarioStateImplCopyWithImpl(_$RecuperarUsuarioStateImpl _value,
      $Res Function(_$RecuperarUsuarioStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? estaValidado = null,
    Object? obscurecerClave = null,
    Object? modoConfirmacion = null,
    Object? permiteEditarUsuario = null,
  }) {
    return _then(_$RecuperarUsuarioStateImpl(
      estaValidado: null == estaValidado
          ? _value.estaValidado
          : estaValidado // ignore: cast_nullable_to_non_nullable
              as bool,
      obscurecerClave: null == obscurecerClave
          ? _value.obscurecerClave
          : obscurecerClave // ignore: cast_nullable_to_non_nullable
              as bool,
      modoConfirmacion: null == modoConfirmacion
          ? _value.modoConfirmacion
          : modoConfirmacion // ignore: cast_nullable_to_non_nullable
              as bool,
      permiteEditarUsuario: null == permiteEditarUsuario
          ? _value.permiteEditarUsuario
          : permiteEditarUsuario // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecuperarUsuarioStateImpl implements _RecuperarUsuarioState {
  _$RecuperarUsuarioStateImpl(
      {this.estaValidado = false,
      this.obscurecerClave = false,
      this.modoConfirmacion = false,
      required this.permiteEditarUsuario});

  factory _$RecuperarUsuarioStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecuperarUsuarioStateImplFromJson(json);

  @override
  @JsonKey()
  final bool estaValidado;
  @override
  @JsonKey()
  final bool obscurecerClave;
  @override
  @JsonKey()
  final bool modoConfirmacion;
  @override
  final bool permiteEditarUsuario;

  @override
  String toString() {
    return 'RecuperarUsuarioState(estaValidado: $estaValidado, obscurecerClave: $obscurecerClave, modoConfirmacion: $modoConfirmacion, permiteEditarUsuario: $permiteEditarUsuario)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecuperarUsuarioStateImpl &&
            (identical(other.estaValidado, estaValidado) ||
                other.estaValidado == estaValidado) &&
            (identical(other.obscurecerClave, obscurecerClave) ||
                other.obscurecerClave == obscurecerClave) &&
            (identical(other.modoConfirmacion, modoConfirmacion) ||
                other.modoConfirmacion == modoConfirmacion) &&
            (identical(other.permiteEditarUsuario, permiteEditarUsuario) ||
                other.permiteEditarUsuario == permiteEditarUsuario));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, estaValidado, obscurecerClave,
      modoConfirmacion, permiteEditarUsuario);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecuperarUsuarioStateImplCopyWith<_$RecuperarUsuarioStateImpl>
      get copyWith => __$$RecuperarUsuarioStateImplCopyWithImpl<
          _$RecuperarUsuarioStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecuperarUsuarioStateImplToJson(
      this,
    );
  }
}

abstract class _RecuperarUsuarioState implements RecuperarUsuarioState {
  factory _RecuperarUsuarioState(
      {final bool estaValidado,
      final bool obscurecerClave,
      final bool modoConfirmacion,
      required final bool permiteEditarUsuario}) = _$RecuperarUsuarioStateImpl;

  factory _RecuperarUsuarioState.fromJson(Map<String, dynamic> json) =
      _$RecuperarUsuarioStateImpl.fromJson;

  @override
  bool get estaValidado;
  @override
  bool get obscurecerClave;
  @override
  bool get modoConfirmacion;
  @override
  bool get permiteEditarUsuario;
  @override
  @JsonKey(ignore: true)
  _$$RecuperarUsuarioStateImplCopyWith<_$RecuperarUsuarioStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ActivaCuentaState _$ActivaCuentaStateFromJson(Map<String, dynamic> json) {
  return _ActivaCuentaState.fromJson(json);
}

/// @nodoc
mixin _$ActivaCuentaState {
  bool get estaValidado => throw _privateConstructorUsedError;
  bool get obscurecerClave => throw _privateConstructorUsedError;
  bool get modoConfirmacion => throw _privateConstructorUsedError;
  bool get permiteEditarUsuario => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActivaCuentaStateCopyWith<ActivaCuentaState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivaCuentaStateCopyWith<$Res> {
  factory $ActivaCuentaStateCopyWith(
          ActivaCuentaState value, $Res Function(ActivaCuentaState) then) =
      _$ActivaCuentaStateCopyWithImpl<$Res, ActivaCuentaState>;
  @useResult
  $Res call(
      {bool estaValidado,
      bool obscurecerClave,
      bool modoConfirmacion,
      bool permiteEditarUsuario});
}

/// @nodoc
class _$ActivaCuentaStateCopyWithImpl<$Res, $Val extends ActivaCuentaState>
    implements $ActivaCuentaStateCopyWith<$Res> {
  _$ActivaCuentaStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? estaValidado = null,
    Object? obscurecerClave = null,
    Object? modoConfirmacion = null,
    Object? permiteEditarUsuario = null,
  }) {
    return _then(_value.copyWith(
      estaValidado: null == estaValidado
          ? _value.estaValidado
          : estaValidado // ignore: cast_nullable_to_non_nullable
              as bool,
      obscurecerClave: null == obscurecerClave
          ? _value.obscurecerClave
          : obscurecerClave // ignore: cast_nullable_to_non_nullable
              as bool,
      modoConfirmacion: null == modoConfirmacion
          ? _value.modoConfirmacion
          : modoConfirmacion // ignore: cast_nullable_to_non_nullable
              as bool,
      permiteEditarUsuario: null == permiteEditarUsuario
          ? _value.permiteEditarUsuario
          : permiteEditarUsuario // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActivaCuentaStateImplCopyWith<$Res>
    implements $ActivaCuentaStateCopyWith<$Res> {
  factory _$$ActivaCuentaStateImplCopyWith(_$ActivaCuentaStateImpl value,
          $Res Function(_$ActivaCuentaStateImpl) then) =
      __$$ActivaCuentaStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool estaValidado,
      bool obscurecerClave,
      bool modoConfirmacion,
      bool permiteEditarUsuario});
}

/// @nodoc
class __$$ActivaCuentaStateImplCopyWithImpl<$Res>
    extends _$ActivaCuentaStateCopyWithImpl<$Res, _$ActivaCuentaStateImpl>
    implements _$$ActivaCuentaStateImplCopyWith<$Res> {
  __$$ActivaCuentaStateImplCopyWithImpl(_$ActivaCuentaStateImpl _value,
      $Res Function(_$ActivaCuentaStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? estaValidado = null,
    Object? obscurecerClave = null,
    Object? modoConfirmacion = null,
    Object? permiteEditarUsuario = null,
  }) {
    return _then(_$ActivaCuentaStateImpl(
      estaValidado: null == estaValidado
          ? _value.estaValidado
          : estaValidado // ignore: cast_nullable_to_non_nullable
              as bool,
      obscurecerClave: null == obscurecerClave
          ? _value.obscurecerClave
          : obscurecerClave // ignore: cast_nullable_to_non_nullable
              as bool,
      modoConfirmacion: null == modoConfirmacion
          ? _value.modoConfirmacion
          : modoConfirmacion // ignore: cast_nullable_to_non_nullable
              as bool,
      permiteEditarUsuario: null == permiteEditarUsuario
          ? _value.permiteEditarUsuario
          : permiteEditarUsuario // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActivaCuentaStateImpl implements _ActivaCuentaState {
  _$ActivaCuentaStateImpl(
      {this.estaValidado = false,
      this.obscurecerClave = false,
      this.modoConfirmacion = false,
      required this.permiteEditarUsuario});

  factory _$ActivaCuentaStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActivaCuentaStateImplFromJson(json);

  @override
  @JsonKey()
  final bool estaValidado;
  @override
  @JsonKey()
  final bool obscurecerClave;
  @override
  @JsonKey()
  final bool modoConfirmacion;
  @override
  final bool permiteEditarUsuario;

  @override
  String toString() {
    return 'ActivaCuentaState(estaValidado: $estaValidado, obscurecerClave: $obscurecerClave, modoConfirmacion: $modoConfirmacion, permiteEditarUsuario: $permiteEditarUsuario)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivaCuentaStateImpl &&
            (identical(other.estaValidado, estaValidado) ||
                other.estaValidado == estaValidado) &&
            (identical(other.obscurecerClave, obscurecerClave) ||
                other.obscurecerClave == obscurecerClave) &&
            (identical(other.modoConfirmacion, modoConfirmacion) ||
                other.modoConfirmacion == modoConfirmacion) &&
            (identical(other.permiteEditarUsuario, permiteEditarUsuario) ||
                other.permiteEditarUsuario == permiteEditarUsuario));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, estaValidado, obscurecerClave,
      modoConfirmacion, permiteEditarUsuario);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivaCuentaStateImplCopyWith<_$ActivaCuentaStateImpl> get copyWith =>
      __$$ActivaCuentaStateImplCopyWithImpl<_$ActivaCuentaStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActivaCuentaStateImplToJson(
      this,
    );
  }
}

abstract class _ActivaCuentaState implements ActivaCuentaState {
  factory _ActivaCuentaState(
      {final bool estaValidado,
      final bool obscurecerClave,
      final bool modoConfirmacion,
      required final bool permiteEditarUsuario}) = _$ActivaCuentaStateImpl;

  factory _ActivaCuentaState.fromJson(Map<String, dynamic> json) =
      _$ActivaCuentaStateImpl.fromJson;

  @override
  bool get estaValidado;
  @override
  bool get obscurecerClave;
  @override
  bool get modoConfirmacion;
  @override
  bool get permiteEditarUsuario;
  @override
  @JsonKey(ignore: true)
  _$$ActivaCuentaStateImplCopyWith<_$ActivaCuentaStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CambiarContraseniaState _$CambiarContraseniaStateFromJson(
    Map<String, dynamic> json) {
  return _CambiarContraseniaState.fromJson(json);
}

/// @nodoc
mixin _$CambiarContraseniaState {
  bool get modoConfirmacion => throw _privateConstructorUsedError;
  bool get obscurecerClave => throw _privateConstructorUsedError;
  bool get permiteEditarUsuario => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CambiarContraseniaStateCopyWith<CambiarContraseniaState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CambiarContraseniaStateCopyWith<$Res> {
  factory $CambiarContraseniaStateCopyWith(CambiarContraseniaState value,
          $Res Function(CambiarContraseniaState) then) =
      _$CambiarContraseniaStateCopyWithImpl<$Res, CambiarContraseniaState>;
  @useResult
  $Res call(
      {bool modoConfirmacion, bool obscurecerClave, bool permiteEditarUsuario});
}

/// @nodoc
class _$CambiarContraseniaStateCopyWithImpl<$Res,
        $Val extends CambiarContraseniaState>
    implements $CambiarContraseniaStateCopyWith<$Res> {
  _$CambiarContraseniaStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modoConfirmacion = null,
    Object? obscurecerClave = null,
    Object? permiteEditarUsuario = null,
  }) {
    return _then(_value.copyWith(
      modoConfirmacion: null == modoConfirmacion
          ? _value.modoConfirmacion
          : modoConfirmacion // ignore: cast_nullable_to_non_nullable
              as bool,
      obscurecerClave: null == obscurecerClave
          ? _value.obscurecerClave
          : obscurecerClave // ignore: cast_nullable_to_non_nullable
              as bool,
      permiteEditarUsuario: null == permiteEditarUsuario
          ? _value.permiteEditarUsuario
          : permiteEditarUsuario // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CambiarContraseniaStateImplCopyWith<$Res>
    implements $CambiarContraseniaStateCopyWith<$Res> {
  factory _$$CambiarContraseniaStateImplCopyWith(
          _$CambiarContraseniaStateImpl value,
          $Res Function(_$CambiarContraseniaStateImpl) then) =
      __$$CambiarContraseniaStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool modoConfirmacion, bool obscurecerClave, bool permiteEditarUsuario});
}

/// @nodoc
class __$$CambiarContraseniaStateImplCopyWithImpl<$Res>
    extends _$CambiarContraseniaStateCopyWithImpl<$Res,
        _$CambiarContraseniaStateImpl>
    implements _$$CambiarContraseniaStateImplCopyWith<$Res> {
  __$$CambiarContraseniaStateImplCopyWithImpl(
      _$CambiarContraseniaStateImpl _value,
      $Res Function(_$CambiarContraseniaStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modoConfirmacion = null,
    Object? obscurecerClave = null,
    Object? permiteEditarUsuario = null,
  }) {
    return _then(_$CambiarContraseniaStateImpl(
      modoConfirmacion: null == modoConfirmacion
          ? _value.modoConfirmacion
          : modoConfirmacion // ignore: cast_nullable_to_non_nullable
              as bool,
      obscurecerClave: null == obscurecerClave
          ? _value.obscurecerClave
          : obscurecerClave // ignore: cast_nullable_to_non_nullable
              as bool,
      permiteEditarUsuario: null == permiteEditarUsuario
          ? _value.permiteEditarUsuario
          : permiteEditarUsuario // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CambiarContraseniaStateImpl implements _CambiarContraseniaState {
  _$CambiarContraseniaStateImpl(
      {this.modoConfirmacion = false,
      this.obscurecerClave = false,
      required this.permiteEditarUsuario});

  factory _$CambiarContraseniaStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$CambiarContraseniaStateImplFromJson(json);

  @override
  @JsonKey()
  final bool modoConfirmacion;
  @override
  @JsonKey()
  final bool obscurecerClave;
  @override
  final bool permiteEditarUsuario;

  @override
  String toString() {
    return 'CambiarContraseniaState(modoConfirmacion: $modoConfirmacion, obscurecerClave: $obscurecerClave, permiteEditarUsuario: $permiteEditarUsuario)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CambiarContraseniaStateImpl &&
            (identical(other.modoConfirmacion, modoConfirmacion) ||
                other.modoConfirmacion == modoConfirmacion) &&
            (identical(other.obscurecerClave, obscurecerClave) ||
                other.obscurecerClave == obscurecerClave) &&
            (identical(other.permiteEditarUsuario, permiteEditarUsuario) ||
                other.permiteEditarUsuario == permiteEditarUsuario));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, modoConfirmacion, obscurecerClave, permiteEditarUsuario);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CambiarContraseniaStateImplCopyWith<_$CambiarContraseniaStateImpl>
      get copyWith => __$$CambiarContraseniaStateImplCopyWithImpl<
          _$CambiarContraseniaStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CambiarContraseniaStateImplToJson(
      this,
    );
  }
}

abstract class _CambiarContraseniaState implements CambiarContraseniaState {
  factory _CambiarContraseniaState(
          {final bool modoConfirmacion,
          final bool obscurecerClave,
          required final bool permiteEditarUsuario}) =
      _$CambiarContraseniaStateImpl;

  factory _CambiarContraseniaState.fromJson(Map<String, dynamic> json) =
      _$CambiarContraseniaStateImpl.fromJson;

  @override
  bool get modoConfirmacion;
  @override
  bool get obscurecerClave;
  @override
  bool get permiteEditarUsuario;
  @override
  @JsonKey(ignore: true)
  _$$CambiarContraseniaStateImplCopyWith<_$CambiarContraseniaStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CambiarContraseniaLoginState _$CambiarContraseniaLoginStateFromJson(
    Map<String, dynamic> json) {
  return _CambiarContraseniaLoginState.fromJson(json);
}

/// @nodoc
mixin _$CambiarContraseniaLoginState {
  bool get modoConfirmacion => throw _privateConstructorUsedError;
  bool get obscurecerClave => throw _privateConstructorUsedError;
  bool get permiteEditarUsuario => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CambiarContraseniaLoginStateCopyWith<CambiarContraseniaLoginState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CambiarContraseniaLoginStateCopyWith<$Res> {
  factory $CambiarContraseniaLoginStateCopyWith(
          CambiarContraseniaLoginState value,
          $Res Function(CambiarContraseniaLoginState) then) =
      _$CambiarContraseniaLoginStateCopyWithImpl<$Res,
          CambiarContraseniaLoginState>;
  @useResult
  $Res call(
      {bool modoConfirmacion, bool obscurecerClave, bool permiteEditarUsuario});
}

/// @nodoc
class _$CambiarContraseniaLoginStateCopyWithImpl<$Res,
        $Val extends CambiarContraseniaLoginState>
    implements $CambiarContraseniaLoginStateCopyWith<$Res> {
  _$CambiarContraseniaLoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modoConfirmacion = null,
    Object? obscurecerClave = null,
    Object? permiteEditarUsuario = null,
  }) {
    return _then(_value.copyWith(
      modoConfirmacion: null == modoConfirmacion
          ? _value.modoConfirmacion
          : modoConfirmacion // ignore: cast_nullable_to_non_nullable
              as bool,
      obscurecerClave: null == obscurecerClave
          ? _value.obscurecerClave
          : obscurecerClave // ignore: cast_nullable_to_non_nullable
              as bool,
      permiteEditarUsuario: null == permiteEditarUsuario
          ? _value.permiteEditarUsuario
          : permiteEditarUsuario // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CambiarContraseniaLoginStateImplCopyWith<$Res>
    implements $CambiarContraseniaLoginStateCopyWith<$Res> {
  factory _$$CambiarContraseniaLoginStateImplCopyWith(
          _$CambiarContraseniaLoginStateImpl value,
          $Res Function(_$CambiarContraseniaLoginStateImpl) then) =
      __$$CambiarContraseniaLoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool modoConfirmacion, bool obscurecerClave, bool permiteEditarUsuario});
}

/// @nodoc
class __$$CambiarContraseniaLoginStateImplCopyWithImpl<$Res>
    extends _$CambiarContraseniaLoginStateCopyWithImpl<$Res,
        _$CambiarContraseniaLoginStateImpl>
    implements _$$CambiarContraseniaLoginStateImplCopyWith<$Res> {
  __$$CambiarContraseniaLoginStateImplCopyWithImpl(
      _$CambiarContraseniaLoginStateImpl _value,
      $Res Function(_$CambiarContraseniaLoginStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modoConfirmacion = null,
    Object? obscurecerClave = null,
    Object? permiteEditarUsuario = null,
  }) {
    return _then(_$CambiarContraseniaLoginStateImpl(
      modoConfirmacion: null == modoConfirmacion
          ? _value.modoConfirmacion
          : modoConfirmacion // ignore: cast_nullable_to_non_nullable
              as bool,
      obscurecerClave: null == obscurecerClave
          ? _value.obscurecerClave
          : obscurecerClave // ignore: cast_nullable_to_non_nullable
              as bool,
      permiteEditarUsuario: null == permiteEditarUsuario
          ? _value.permiteEditarUsuario
          : permiteEditarUsuario // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CambiarContraseniaLoginStateImpl
    implements _CambiarContraseniaLoginState {
  _$CambiarContraseniaLoginStateImpl(
      {this.modoConfirmacion = false,
      this.obscurecerClave = false,
      required this.permiteEditarUsuario});

  factory _$CambiarContraseniaLoginStateImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CambiarContraseniaLoginStateImplFromJson(json);

  @override
  @JsonKey()
  final bool modoConfirmacion;
  @override
  @JsonKey()
  final bool obscurecerClave;
  @override
  final bool permiteEditarUsuario;

  @override
  String toString() {
    return 'CambiarContraseniaLoginState(modoConfirmacion: $modoConfirmacion, obscurecerClave: $obscurecerClave, permiteEditarUsuario: $permiteEditarUsuario)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CambiarContraseniaLoginStateImpl &&
            (identical(other.modoConfirmacion, modoConfirmacion) ||
                other.modoConfirmacion == modoConfirmacion) &&
            (identical(other.obscurecerClave, obscurecerClave) ||
                other.obscurecerClave == obscurecerClave) &&
            (identical(other.permiteEditarUsuario, permiteEditarUsuario) ||
                other.permiteEditarUsuario == permiteEditarUsuario));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, modoConfirmacion, obscurecerClave, permiteEditarUsuario);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CambiarContraseniaLoginStateImplCopyWith<
          _$CambiarContraseniaLoginStateImpl>
      get copyWith => __$$CambiarContraseniaLoginStateImplCopyWithImpl<
          _$CambiarContraseniaLoginStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CambiarContraseniaLoginStateImplToJson(
      this,
    );
  }
}

abstract class _CambiarContraseniaLoginState
    implements CambiarContraseniaLoginState {
  factory _CambiarContraseniaLoginState(
          {final bool modoConfirmacion,
          final bool obscurecerClave,
          required final bool permiteEditarUsuario}) =
      _$CambiarContraseniaLoginStateImpl;

  factory _CambiarContraseniaLoginState.fromJson(Map<String, dynamic> json) =
      _$CambiarContraseniaLoginStateImpl.fromJson;

  @override
  bool get modoConfirmacion;
  @override
  bool get obscurecerClave;
  @override
  bool get permiteEditarUsuario;
  @override
  @JsonKey(ignore: true)
  _$$CambiarContraseniaLoginStateImplCopyWith<
          _$CambiarContraseniaLoginStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PersonaModel _$PersonaModelFromJson(Map<String, dynamic> json) {
  return _PersonaModel.fromJson(json);
}

/// @nodoc
mixin _$PersonaModel {
  String get identificacion => throw _privateConstructorUsedError;
  String get nombre => throw _privateConstructorUsedError;
  String get estadoCivil => throw _privateConstructorUsedError;
  String get direccion => throw _privateConstructorUsedError;
  String get telefono => throw _privateConstructorUsedError;
  DateTime? get fechaNacimiento => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonaModelCopyWith<PersonaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonaModelCopyWith<$Res> {
  factory $PersonaModelCopyWith(
          PersonaModel value, $Res Function(PersonaModel) then) =
      _$PersonaModelCopyWithImpl<$Res, PersonaModel>;
  @useResult
  $Res call(
      {String identificacion,
      String nombre,
      String estadoCivil,
      String direccion,
      String telefono,
      DateTime? fechaNacimiento,
      String email});
}

/// @nodoc
class _$PersonaModelCopyWithImpl<$Res, $Val extends PersonaModel>
    implements $PersonaModelCopyWith<$Res> {
  _$PersonaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identificacion = null,
    Object? nombre = null,
    Object? estadoCivil = null,
    Object? direccion = null,
    Object? telefono = null,
    Object? fechaNacimiento = freezed,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      identificacion: null == identificacion
          ? _value.identificacion
          : identificacion // ignore: cast_nullable_to_non_nullable
              as String,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      estadoCivil: null == estadoCivil
          ? _value.estadoCivil
          : estadoCivil // ignore: cast_nullable_to_non_nullable
              as String,
      direccion: null == direccion
          ? _value.direccion
          : direccion // ignore: cast_nullable_to_non_nullable
              as String,
      telefono: null == telefono
          ? _value.telefono
          : telefono // ignore: cast_nullable_to_non_nullable
              as String,
      fechaNacimiento: freezed == fechaNacimiento
          ? _value.fechaNacimiento
          : fechaNacimiento // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PersonaModelImplCopyWith<$Res>
    implements $PersonaModelCopyWith<$Res> {
  factory _$$PersonaModelImplCopyWith(
          _$PersonaModelImpl value, $Res Function(_$PersonaModelImpl) then) =
      __$$PersonaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String identificacion,
      String nombre,
      String estadoCivil,
      String direccion,
      String telefono,
      DateTime? fechaNacimiento,
      String email});
}

/// @nodoc
class __$$PersonaModelImplCopyWithImpl<$Res>
    extends _$PersonaModelCopyWithImpl<$Res, _$PersonaModelImpl>
    implements _$$PersonaModelImplCopyWith<$Res> {
  __$$PersonaModelImplCopyWithImpl(
      _$PersonaModelImpl _value, $Res Function(_$PersonaModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identificacion = null,
    Object? nombre = null,
    Object? estadoCivil = null,
    Object? direccion = null,
    Object? telefono = null,
    Object? fechaNacimiento = freezed,
    Object? email = null,
  }) {
    return _then(_$PersonaModelImpl(
      identificacion: null == identificacion
          ? _value.identificacion
          : identificacion // ignore: cast_nullable_to_non_nullable
              as String,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      estadoCivil: null == estadoCivil
          ? _value.estadoCivil
          : estadoCivil // ignore: cast_nullable_to_non_nullable
              as String,
      direccion: null == direccion
          ? _value.direccion
          : direccion // ignore: cast_nullable_to_non_nullable
              as String,
      telefono: null == telefono
          ? _value.telefono
          : telefono // ignore: cast_nullable_to_non_nullable
              as String,
      fechaNacimiento: freezed == fechaNacimiento
          ? _value.fechaNacimiento
          : fechaNacimiento // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonaModelImpl implements _PersonaModel {
  _$PersonaModelImpl(
      {this.identificacion = '',
      this.nombre = '',
      this.estadoCivil = '',
      this.direccion = '',
      this.telefono = '',
      this.fechaNacimiento,
      this.email = ''});

  factory _$PersonaModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersonaModelImplFromJson(json);

  @override
  @JsonKey()
  final String identificacion;
  @override
  @JsonKey()
  final String nombre;
  @override
  @JsonKey()
  final String estadoCivil;
  @override
  @JsonKey()
  final String direccion;
  @override
  @JsonKey()
  final String telefono;
  @override
  final DateTime? fechaNacimiento;
  @override
  @JsonKey()
  final String email;

  @override
  String toString() {
    return 'PersonaModel(identificacion: $identificacion, nombre: $nombre, estadoCivil: $estadoCivil, direccion: $direccion, telefono: $telefono, fechaNacimiento: $fechaNacimiento, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonaModelImpl &&
            (identical(other.identificacion, identificacion) ||
                other.identificacion == identificacion) &&
            (identical(other.nombre, nombre) || other.nombre == nombre) &&
            (identical(other.estadoCivil, estadoCivil) ||
                other.estadoCivil == estadoCivil) &&
            (identical(other.direccion, direccion) ||
                other.direccion == direccion) &&
            (identical(other.telefono, telefono) ||
                other.telefono == telefono) &&
            (identical(other.fechaNacimiento, fechaNacimiento) ||
                other.fechaNacimiento == fechaNacimiento) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, identificacion, nombre,
      estadoCivil, direccion, telefono, fechaNacimiento, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonaModelImplCopyWith<_$PersonaModelImpl> get copyWith =>
      __$$PersonaModelImplCopyWithImpl<_$PersonaModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonaModelImplToJson(
      this,
    );
  }
}

abstract class _PersonaModel implements PersonaModel {
  factory _PersonaModel(
      {final String identificacion,
      final String nombre,
      final String estadoCivil,
      final String direccion,
      final String telefono,
      final DateTime? fechaNacimiento,
      final String email}) = _$PersonaModelImpl;

  factory _PersonaModel.fromJson(Map<String, dynamic> json) =
      _$PersonaModelImpl.fromJson;

  @override
  String get identificacion;
  @override
  String get nombre;
  @override
  String get estadoCivil;
  @override
  String get direccion;
  @override
  String get telefono;
  @override
  DateTime? get fechaNacimiento;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$PersonaModelImplCopyWith<_$PersonaModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PosicionConsolidadaRespuesta _$PosicionConsolidadaRespuestaFromJson(
    Map<String, dynamic> json) {
  return _PosicionConsolidadaRespuesta.fromJson(json);
}

/// @nodoc
mixin _$PosicionConsolidadaRespuesta {
  List<CuentaModel> get cuentas => throw _privateConstructorUsedError;
  List<InversionModel> get inversiones => throw _privateConstructorUsedError;
  List<PrestamoModel> get prestamos => throw _privateConstructorUsedError;
  PersonaModel? get persona => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PosicionConsolidadaRespuestaCopyWith<PosicionConsolidadaRespuesta>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PosicionConsolidadaRespuestaCopyWith<$Res> {
  factory $PosicionConsolidadaRespuestaCopyWith(
          PosicionConsolidadaRespuesta value,
          $Res Function(PosicionConsolidadaRespuesta) then) =
      _$PosicionConsolidadaRespuestaCopyWithImpl<$Res,
          PosicionConsolidadaRespuesta>;
  @useResult
  $Res call(
      {List<CuentaModel> cuentas,
      List<InversionModel> inversiones,
      List<PrestamoModel> prestamos,
      PersonaModel? persona});

  $PersonaModelCopyWith<$Res>? get persona;
}

/// @nodoc
class _$PosicionConsolidadaRespuestaCopyWithImpl<$Res,
        $Val extends PosicionConsolidadaRespuesta>
    implements $PosicionConsolidadaRespuestaCopyWith<$Res> {
  _$PosicionConsolidadaRespuestaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cuentas = null,
    Object? inversiones = null,
    Object? prestamos = null,
    Object? persona = freezed,
  }) {
    return _then(_value.copyWith(
      cuentas: null == cuentas
          ? _value.cuentas
          : cuentas // ignore: cast_nullable_to_non_nullable
              as List<CuentaModel>,
      inversiones: null == inversiones
          ? _value.inversiones
          : inversiones // ignore: cast_nullable_to_non_nullable
              as List<InversionModel>,
      prestamos: null == prestamos
          ? _value.prestamos
          : prestamos // ignore: cast_nullable_to_non_nullable
              as List<PrestamoModel>,
      persona: freezed == persona
          ? _value.persona
          : persona // ignore: cast_nullable_to_non_nullable
              as PersonaModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PersonaModelCopyWith<$Res>? get persona {
    if (_value.persona == null) {
      return null;
    }

    return $PersonaModelCopyWith<$Res>(_value.persona!, (value) {
      return _then(_value.copyWith(persona: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PosicionConsolidadaRespuestaImplCopyWith<$Res>
    implements $PosicionConsolidadaRespuestaCopyWith<$Res> {
  factory _$$PosicionConsolidadaRespuestaImplCopyWith(
          _$PosicionConsolidadaRespuestaImpl value,
          $Res Function(_$PosicionConsolidadaRespuestaImpl) then) =
      __$$PosicionConsolidadaRespuestaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CuentaModel> cuentas,
      List<InversionModel> inversiones,
      List<PrestamoModel> prestamos,
      PersonaModel? persona});

  @override
  $PersonaModelCopyWith<$Res>? get persona;
}

/// @nodoc
class __$$PosicionConsolidadaRespuestaImplCopyWithImpl<$Res>
    extends _$PosicionConsolidadaRespuestaCopyWithImpl<$Res,
        _$PosicionConsolidadaRespuestaImpl>
    implements _$$PosicionConsolidadaRespuestaImplCopyWith<$Res> {
  __$$PosicionConsolidadaRespuestaImplCopyWithImpl(
      _$PosicionConsolidadaRespuestaImpl _value,
      $Res Function(_$PosicionConsolidadaRespuestaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cuentas = null,
    Object? inversiones = null,
    Object? prestamos = null,
    Object? persona = freezed,
  }) {
    return _then(_$PosicionConsolidadaRespuestaImpl(
      cuentas: null == cuentas
          ? _value._cuentas
          : cuentas // ignore: cast_nullable_to_non_nullable
              as List<CuentaModel>,
      inversiones: null == inversiones
          ? _value._inversiones
          : inversiones // ignore: cast_nullable_to_non_nullable
              as List<InversionModel>,
      prestamos: null == prestamos
          ? _value._prestamos
          : prestamos // ignore: cast_nullable_to_non_nullable
              as List<PrestamoModel>,
      persona: freezed == persona
          ? _value.persona
          : persona // ignore: cast_nullable_to_non_nullable
              as PersonaModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PosicionConsolidadaRespuestaImpl
    implements _PosicionConsolidadaRespuesta {
  _$PosicionConsolidadaRespuestaImpl(
      {final List<CuentaModel> cuentas = const [],
      final List<InversionModel> inversiones = const [],
      final List<PrestamoModel> prestamos = const [],
      this.persona})
      : _cuentas = cuentas,
        _inversiones = inversiones,
        _prestamos = prestamos;

  factory _$PosicionConsolidadaRespuestaImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PosicionConsolidadaRespuestaImplFromJson(json);

  final List<CuentaModel> _cuentas;
  @override
  @JsonKey()
  List<CuentaModel> get cuentas {
    if (_cuentas is EqualUnmodifiableListView) return _cuentas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cuentas);
  }

  final List<InversionModel> _inversiones;
  @override
  @JsonKey()
  List<InversionModel> get inversiones {
    if (_inversiones is EqualUnmodifiableListView) return _inversiones;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_inversiones);
  }

  final List<PrestamoModel> _prestamos;
  @override
  @JsonKey()
  List<PrestamoModel> get prestamos {
    if (_prestamos is EqualUnmodifiableListView) return _prestamos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prestamos);
  }

  @override
  final PersonaModel? persona;

  @override
  String toString() {
    return 'PosicionConsolidadaRespuesta(cuentas: $cuentas, inversiones: $inversiones, prestamos: $prestamos, persona: $persona)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PosicionConsolidadaRespuestaImpl &&
            const DeepCollectionEquality().equals(other._cuentas, _cuentas) &&
            const DeepCollectionEquality()
                .equals(other._inversiones, _inversiones) &&
            const DeepCollectionEquality()
                .equals(other._prestamos, _prestamos) &&
            (identical(other.persona, persona) || other.persona == persona));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_cuentas),
      const DeepCollectionEquality().hash(_inversiones),
      const DeepCollectionEquality().hash(_prestamos),
      persona);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PosicionConsolidadaRespuestaImplCopyWith<
          _$PosicionConsolidadaRespuestaImpl>
      get copyWith => __$$PosicionConsolidadaRespuestaImplCopyWithImpl<
          _$PosicionConsolidadaRespuestaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PosicionConsolidadaRespuestaImplToJson(
      this,
    );
  }
}

abstract class _PosicionConsolidadaRespuesta
    implements PosicionConsolidadaRespuesta {
  factory _PosicionConsolidadaRespuesta(
      {final List<CuentaModel> cuentas,
      final List<InversionModel> inversiones,
      final List<PrestamoModel> prestamos,
      final PersonaModel? persona}) = _$PosicionConsolidadaRespuestaImpl;

  factory _PosicionConsolidadaRespuesta.fromJson(Map<String, dynamic> json) =
      _$PosicionConsolidadaRespuestaImpl.fromJson;

  @override
  List<CuentaModel> get cuentas;
  @override
  List<InversionModel> get inversiones;
  @override
  List<PrestamoModel> get prestamos;
  @override
  PersonaModel? get persona;
  @override
  @JsonKey(ignore: true)
  _$$PosicionConsolidadaRespuestaImplCopyWith<
          _$PosicionConsolidadaRespuestaImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CuentaModel _$CuentaModelFromJson(Map<String, dynamic> json) {
  return _CuentaModel.fromJson(json);
}

/// @nodoc
mixin _$CuentaModel {
  String get codigo => throw _privateConstructorUsedError;
  String get nombre => throw _privateConstructorUsedError;
  String get tipo => throw _privateConstructorUsedError;
  double get saldo => throw _privateConstructorUsedError;
  double get saldoContable => throw _privateConstructorUsedError;
  String get estado => throw _privateConstructorUsedError;
  String get oficina => throw _privateConstructorUsedError;
  bool get permiteUsoBancaElectronica => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CuentaModelCopyWith<CuentaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CuentaModelCopyWith<$Res> {
  factory $CuentaModelCopyWith(
          CuentaModel value, $Res Function(CuentaModel) then) =
      _$CuentaModelCopyWithImpl<$Res, CuentaModel>;
  @useResult
  $Res call(
      {String codigo,
      String nombre,
      String tipo,
      double saldo,
      double saldoContable,
      String estado,
      String oficina,
      bool permiteUsoBancaElectronica});
}

/// @nodoc
class _$CuentaModelCopyWithImpl<$Res, $Val extends CuentaModel>
    implements $CuentaModelCopyWith<$Res> {
  _$CuentaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codigo = null,
    Object? nombre = null,
    Object? tipo = null,
    Object? saldo = null,
    Object? saldoContable = null,
    Object? estado = null,
    Object? oficina = null,
    Object? permiteUsoBancaElectronica = null,
  }) {
    return _then(_value.copyWith(
      codigo: null == codigo
          ? _value.codigo
          : codigo // ignore: cast_nullable_to_non_nullable
              as String,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      tipo: null == tipo
          ? _value.tipo
          : tipo // ignore: cast_nullable_to_non_nullable
              as String,
      saldo: null == saldo
          ? _value.saldo
          : saldo // ignore: cast_nullable_to_non_nullable
              as double,
      saldoContable: null == saldoContable
          ? _value.saldoContable
          : saldoContable // ignore: cast_nullable_to_non_nullable
              as double,
      estado: null == estado
          ? _value.estado
          : estado // ignore: cast_nullable_to_non_nullable
              as String,
      oficina: null == oficina
          ? _value.oficina
          : oficina // ignore: cast_nullable_to_non_nullable
              as String,
      permiteUsoBancaElectronica: null == permiteUsoBancaElectronica
          ? _value.permiteUsoBancaElectronica
          : permiteUsoBancaElectronica // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CuentaModelImplCopyWith<$Res>
    implements $CuentaModelCopyWith<$Res> {
  factory _$$CuentaModelImplCopyWith(
          _$CuentaModelImpl value, $Res Function(_$CuentaModelImpl) then) =
      __$$CuentaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String codigo,
      String nombre,
      String tipo,
      double saldo,
      double saldoContable,
      String estado,
      String oficina,
      bool permiteUsoBancaElectronica});
}

/// @nodoc
class __$$CuentaModelImplCopyWithImpl<$Res>
    extends _$CuentaModelCopyWithImpl<$Res, _$CuentaModelImpl>
    implements _$$CuentaModelImplCopyWith<$Res> {
  __$$CuentaModelImplCopyWithImpl(
      _$CuentaModelImpl _value, $Res Function(_$CuentaModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codigo = null,
    Object? nombre = null,
    Object? tipo = null,
    Object? saldo = null,
    Object? saldoContable = null,
    Object? estado = null,
    Object? oficina = null,
    Object? permiteUsoBancaElectronica = null,
  }) {
    return _then(_$CuentaModelImpl(
      codigo: null == codigo
          ? _value.codigo
          : codigo // ignore: cast_nullable_to_non_nullable
              as String,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      tipo: null == tipo
          ? _value.tipo
          : tipo // ignore: cast_nullable_to_non_nullable
              as String,
      saldo: null == saldo
          ? _value.saldo
          : saldo // ignore: cast_nullable_to_non_nullable
              as double,
      saldoContable: null == saldoContable
          ? _value.saldoContable
          : saldoContable // ignore: cast_nullable_to_non_nullable
              as double,
      estado: null == estado
          ? _value.estado
          : estado // ignore: cast_nullable_to_non_nullable
              as String,
      oficina: null == oficina
          ? _value.oficina
          : oficina // ignore: cast_nullable_to_non_nullable
              as String,
      permiteUsoBancaElectronica: null == permiteUsoBancaElectronica
          ? _value.permiteUsoBancaElectronica
          : permiteUsoBancaElectronica // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CuentaModelImpl implements _CuentaModel {
  _$CuentaModelImpl(
      {this.codigo = '',
      this.nombre = '',
      this.tipo = '',
      this.saldo = 0.00,
      this.saldoContable = 0.00,
      this.estado = '',
      this.oficina = '',
      this.permiteUsoBancaElectronica = false});

  factory _$CuentaModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CuentaModelImplFromJson(json);

  @override
  @JsonKey()
  final String codigo;
  @override
  @JsonKey()
  final String nombre;
  @override
  @JsonKey()
  final String tipo;
  @override
  @JsonKey()
  final double saldo;
  @override
  @JsonKey()
  final double saldoContable;
  @override
  @JsonKey()
  final String estado;
  @override
  @JsonKey()
  final String oficina;
  @override
  @JsonKey()
  final bool permiteUsoBancaElectronica;

  @override
  String toString() {
    return 'CuentaModel(codigo: $codigo, nombre: $nombre, tipo: $tipo, saldo: $saldo, saldoContable: $saldoContable, estado: $estado, oficina: $oficina, permiteUsoBancaElectronica: $permiteUsoBancaElectronica)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CuentaModelImpl &&
            (identical(other.codigo, codigo) || other.codigo == codigo) &&
            (identical(other.nombre, nombre) || other.nombre == nombre) &&
            (identical(other.tipo, tipo) || other.tipo == tipo) &&
            (identical(other.saldo, saldo) || other.saldo == saldo) &&
            (identical(other.saldoContable, saldoContable) ||
                other.saldoContable == saldoContable) &&
            (identical(other.estado, estado) || other.estado == estado) &&
            (identical(other.oficina, oficina) || other.oficina == oficina) &&
            (identical(other.permiteUsoBancaElectronica,
                    permiteUsoBancaElectronica) ||
                other.permiteUsoBancaElectronica ==
                    permiteUsoBancaElectronica));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, codigo, nombre, tipo, saldo,
      saldoContable, estado, oficina, permiteUsoBancaElectronica);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CuentaModelImplCopyWith<_$CuentaModelImpl> get copyWith =>
      __$$CuentaModelImplCopyWithImpl<_$CuentaModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CuentaModelImplToJson(
      this,
    );
  }
}

abstract class _CuentaModel implements CuentaModel {
  factory _CuentaModel(
      {final String codigo,
      final String nombre,
      final String tipo,
      final double saldo,
      final double saldoContable,
      final String estado,
      final String oficina,
      final bool permiteUsoBancaElectronica}) = _$CuentaModelImpl;

  factory _CuentaModel.fromJson(Map<String, dynamic> json) =
      _$CuentaModelImpl.fromJson;

  @override
  String get codigo;
  @override
  String get nombre;
  @override
  String get tipo;
  @override
  double get saldo;
  @override
  double get saldoContable;
  @override
  String get estado;
  @override
  String get oficina;
  @override
  bool get permiteUsoBancaElectronica;
  @override
  @JsonKey(ignore: true)
  _$$CuentaModelImplCopyWith<_$CuentaModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InversionModel _$InversionModelFromJson(Map<String, dynamic> json) {
  return _InversionModel.fromJson(json);
}

/// @nodoc
mixin _$InversionModel {
  String get codigo => throw _privateConstructorUsedError;
  String get nombre => throw _privateConstructorUsedError;
  String get tipo => throw _privateConstructorUsedError;
  double get monto => throw _privateConstructorUsedError;
  int get plazo => throw _privateConstructorUsedError;
  DateTime? get fechaVencimiento => throw _privateConstructorUsedError;
  String get estado => throw _privateConstructorUsedError;
  double get totalRecibir => throw _privateConstructorUsedError;
  String get oficina => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InversionModelCopyWith<InversionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InversionModelCopyWith<$Res> {
  factory $InversionModelCopyWith(
          InversionModel value, $Res Function(InversionModel) then) =
      _$InversionModelCopyWithImpl<$Res, InversionModel>;
  @useResult
  $Res call(
      {String codigo,
      String nombre,
      String tipo,
      double monto,
      int plazo,
      DateTime? fechaVencimiento,
      String estado,
      double totalRecibir,
      String oficina});
}

/// @nodoc
class _$InversionModelCopyWithImpl<$Res, $Val extends InversionModel>
    implements $InversionModelCopyWith<$Res> {
  _$InversionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codigo = null,
    Object? nombre = null,
    Object? tipo = null,
    Object? monto = null,
    Object? plazo = null,
    Object? fechaVencimiento = freezed,
    Object? estado = null,
    Object? totalRecibir = null,
    Object? oficina = null,
  }) {
    return _then(_value.copyWith(
      codigo: null == codigo
          ? _value.codigo
          : codigo // ignore: cast_nullable_to_non_nullable
              as String,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      tipo: null == tipo
          ? _value.tipo
          : tipo // ignore: cast_nullable_to_non_nullable
              as String,
      monto: null == monto
          ? _value.monto
          : monto // ignore: cast_nullable_to_non_nullable
              as double,
      plazo: null == plazo
          ? _value.plazo
          : plazo // ignore: cast_nullable_to_non_nullable
              as int,
      fechaVencimiento: freezed == fechaVencimiento
          ? _value.fechaVencimiento
          : fechaVencimiento // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      estado: null == estado
          ? _value.estado
          : estado // ignore: cast_nullable_to_non_nullable
              as String,
      totalRecibir: null == totalRecibir
          ? _value.totalRecibir
          : totalRecibir // ignore: cast_nullable_to_non_nullable
              as double,
      oficina: null == oficina
          ? _value.oficina
          : oficina // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InversionModelImplCopyWith<$Res>
    implements $InversionModelCopyWith<$Res> {
  factory _$$InversionModelImplCopyWith(_$InversionModelImpl value,
          $Res Function(_$InversionModelImpl) then) =
      __$$InversionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String codigo,
      String nombre,
      String tipo,
      double monto,
      int plazo,
      DateTime? fechaVencimiento,
      String estado,
      double totalRecibir,
      String oficina});
}

/// @nodoc
class __$$InversionModelImplCopyWithImpl<$Res>
    extends _$InversionModelCopyWithImpl<$Res, _$InversionModelImpl>
    implements _$$InversionModelImplCopyWith<$Res> {
  __$$InversionModelImplCopyWithImpl(
      _$InversionModelImpl _value, $Res Function(_$InversionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codigo = null,
    Object? nombre = null,
    Object? tipo = null,
    Object? monto = null,
    Object? plazo = null,
    Object? fechaVencimiento = freezed,
    Object? estado = null,
    Object? totalRecibir = null,
    Object? oficina = null,
  }) {
    return _then(_$InversionModelImpl(
      codigo: null == codigo
          ? _value.codigo
          : codigo // ignore: cast_nullable_to_non_nullable
              as String,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      tipo: null == tipo
          ? _value.tipo
          : tipo // ignore: cast_nullable_to_non_nullable
              as String,
      monto: null == monto
          ? _value.monto
          : monto // ignore: cast_nullable_to_non_nullable
              as double,
      plazo: null == plazo
          ? _value.plazo
          : plazo // ignore: cast_nullable_to_non_nullable
              as int,
      fechaVencimiento: freezed == fechaVencimiento
          ? _value.fechaVencimiento
          : fechaVencimiento // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      estado: null == estado
          ? _value.estado
          : estado // ignore: cast_nullable_to_non_nullable
              as String,
      totalRecibir: null == totalRecibir
          ? _value.totalRecibir
          : totalRecibir // ignore: cast_nullable_to_non_nullable
              as double,
      oficina: null == oficina
          ? _value.oficina
          : oficina // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InversionModelImpl implements _InversionModel {
  _$InversionModelImpl(
      {this.codigo = '',
      this.nombre = '',
      this.tipo = '',
      this.monto = 0.00,
      this.plazo = 0,
      this.fechaVencimiento,
      this.estado = '',
      this.totalRecibir = 0.00,
      this.oficina = ''});

  factory _$InversionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InversionModelImplFromJson(json);

  @override
  @JsonKey()
  final String codigo;
  @override
  @JsonKey()
  final String nombre;
  @override
  @JsonKey()
  final String tipo;
  @override
  @JsonKey()
  final double monto;
  @override
  @JsonKey()
  final int plazo;
  @override
  final DateTime? fechaVencimiento;
  @override
  @JsonKey()
  final String estado;
  @override
  @JsonKey()
  final double totalRecibir;
  @override
  @JsonKey()
  final String oficina;

  @override
  String toString() {
    return 'InversionModel(codigo: $codigo, nombre: $nombre, tipo: $tipo, monto: $monto, plazo: $plazo, fechaVencimiento: $fechaVencimiento, estado: $estado, totalRecibir: $totalRecibir, oficina: $oficina)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InversionModelImpl &&
            (identical(other.codigo, codigo) || other.codigo == codigo) &&
            (identical(other.nombre, nombre) || other.nombre == nombre) &&
            (identical(other.tipo, tipo) || other.tipo == tipo) &&
            (identical(other.monto, monto) || other.monto == monto) &&
            (identical(other.plazo, plazo) || other.plazo == plazo) &&
            (identical(other.fechaVencimiento, fechaVencimiento) ||
                other.fechaVencimiento == fechaVencimiento) &&
            (identical(other.estado, estado) || other.estado == estado) &&
            (identical(other.totalRecibir, totalRecibir) ||
                other.totalRecibir == totalRecibir) &&
            (identical(other.oficina, oficina) || other.oficina == oficina));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, codigo, nombre, tipo, monto,
      plazo, fechaVencimiento, estado, totalRecibir, oficina);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InversionModelImplCopyWith<_$InversionModelImpl> get copyWith =>
      __$$InversionModelImplCopyWithImpl<_$InversionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InversionModelImplToJson(
      this,
    );
  }
}

abstract class _InversionModel implements InversionModel {
  factory _InversionModel(
      {final String codigo,
      final String nombre,
      final String tipo,
      final double monto,
      final int plazo,
      final DateTime? fechaVencimiento,
      final String estado,
      final double totalRecibir,
      final String oficina}) = _$InversionModelImpl;

  factory _InversionModel.fromJson(Map<String, dynamic> json) =
      _$InversionModelImpl.fromJson;

  @override
  String get codigo;
  @override
  String get nombre;
  @override
  String get tipo;
  @override
  double get monto;
  @override
  int get plazo;
  @override
  DateTime? get fechaVencimiento;
  @override
  String get estado;
  @override
  double get totalRecibir;
  @override
  String get oficina;
  @override
  @JsonKey(ignore: true)
  _$$InversionModelImplCopyWith<_$InversionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PrestamoModel _$PrestamoModelFromJson(Map<String, dynamic> json) {
  return _PrestamoModel.fromJson(json);
}

/// @nodoc
mixin _$PrestamoModel {
  String get codigo => throw _privateConstructorUsedError;
  String get tipo => throw _privateConstructorUsedError;
  double get deudaInicial => throw _privateConstructorUsedError;
  double get saldo => throw _privateConstructorUsedError;
  DateTime? get fechaAdjudicacion => throw _privateConstructorUsedError;
  String get estado => throw _privateConstructorUsedError;
  String get oficina => throw _privateConstructorUsedError;
  double get valorParaEstarAlDia => throw _privateConstructorUsedError;
  double get valorCuota => throw _privateConstructorUsedError;
  double get valorCancelarPrestamo => throw _privateConstructorUsedError;
  DateTime? get fechaProximoPago => throw _privateConstructorUsedError;
  String get cuotasCanceladas => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrestamoModelCopyWith<PrestamoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrestamoModelCopyWith<$Res> {
  factory $PrestamoModelCopyWith(
          PrestamoModel value, $Res Function(PrestamoModel) then) =
      _$PrestamoModelCopyWithImpl<$Res, PrestamoModel>;
  @useResult
  $Res call(
      {String codigo,
      String tipo,
      double deudaInicial,
      double saldo,
      DateTime? fechaAdjudicacion,
      String estado,
      String oficina,
      double valorParaEstarAlDia,
      double valorCuota,
      double valorCancelarPrestamo,
      DateTime? fechaProximoPago,
      String cuotasCanceladas});
}

/// @nodoc
class _$PrestamoModelCopyWithImpl<$Res, $Val extends PrestamoModel>
    implements $PrestamoModelCopyWith<$Res> {
  _$PrestamoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codigo = null,
    Object? tipo = null,
    Object? deudaInicial = null,
    Object? saldo = null,
    Object? fechaAdjudicacion = freezed,
    Object? estado = null,
    Object? oficina = null,
    Object? valorParaEstarAlDia = null,
    Object? valorCuota = null,
    Object? valorCancelarPrestamo = null,
    Object? fechaProximoPago = freezed,
    Object? cuotasCanceladas = null,
  }) {
    return _then(_value.copyWith(
      codigo: null == codigo
          ? _value.codigo
          : codigo // ignore: cast_nullable_to_non_nullable
              as String,
      tipo: null == tipo
          ? _value.tipo
          : tipo // ignore: cast_nullable_to_non_nullable
              as String,
      deudaInicial: null == deudaInicial
          ? _value.deudaInicial
          : deudaInicial // ignore: cast_nullable_to_non_nullable
              as double,
      saldo: null == saldo
          ? _value.saldo
          : saldo // ignore: cast_nullable_to_non_nullable
              as double,
      fechaAdjudicacion: freezed == fechaAdjudicacion
          ? _value.fechaAdjudicacion
          : fechaAdjudicacion // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      estado: null == estado
          ? _value.estado
          : estado // ignore: cast_nullable_to_non_nullable
              as String,
      oficina: null == oficina
          ? _value.oficina
          : oficina // ignore: cast_nullable_to_non_nullable
              as String,
      valorParaEstarAlDia: null == valorParaEstarAlDia
          ? _value.valorParaEstarAlDia
          : valorParaEstarAlDia // ignore: cast_nullable_to_non_nullable
              as double,
      valorCuota: null == valorCuota
          ? _value.valorCuota
          : valorCuota // ignore: cast_nullable_to_non_nullable
              as double,
      valorCancelarPrestamo: null == valorCancelarPrestamo
          ? _value.valorCancelarPrestamo
          : valorCancelarPrestamo // ignore: cast_nullable_to_non_nullable
              as double,
      fechaProximoPago: freezed == fechaProximoPago
          ? _value.fechaProximoPago
          : fechaProximoPago // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cuotasCanceladas: null == cuotasCanceladas
          ? _value.cuotasCanceladas
          : cuotasCanceladas // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrestamoModelImplCopyWith<$Res>
    implements $PrestamoModelCopyWith<$Res> {
  factory _$$PrestamoModelImplCopyWith(
          _$PrestamoModelImpl value, $Res Function(_$PrestamoModelImpl) then) =
      __$$PrestamoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String codigo,
      String tipo,
      double deudaInicial,
      double saldo,
      DateTime? fechaAdjudicacion,
      String estado,
      String oficina,
      double valorParaEstarAlDia,
      double valorCuota,
      double valorCancelarPrestamo,
      DateTime? fechaProximoPago,
      String cuotasCanceladas});
}

/// @nodoc
class __$$PrestamoModelImplCopyWithImpl<$Res>
    extends _$PrestamoModelCopyWithImpl<$Res, _$PrestamoModelImpl>
    implements _$$PrestamoModelImplCopyWith<$Res> {
  __$$PrestamoModelImplCopyWithImpl(
      _$PrestamoModelImpl _value, $Res Function(_$PrestamoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codigo = null,
    Object? tipo = null,
    Object? deudaInicial = null,
    Object? saldo = null,
    Object? fechaAdjudicacion = freezed,
    Object? estado = null,
    Object? oficina = null,
    Object? valorParaEstarAlDia = null,
    Object? valorCuota = null,
    Object? valorCancelarPrestamo = null,
    Object? fechaProximoPago = freezed,
    Object? cuotasCanceladas = null,
  }) {
    return _then(_$PrestamoModelImpl(
      codigo: null == codigo
          ? _value.codigo
          : codigo // ignore: cast_nullable_to_non_nullable
              as String,
      tipo: null == tipo
          ? _value.tipo
          : tipo // ignore: cast_nullable_to_non_nullable
              as String,
      deudaInicial: null == deudaInicial
          ? _value.deudaInicial
          : deudaInicial // ignore: cast_nullable_to_non_nullable
              as double,
      saldo: null == saldo
          ? _value.saldo
          : saldo // ignore: cast_nullable_to_non_nullable
              as double,
      fechaAdjudicacion: freezed == fechaAdjudicacion
          ? _value.fechaAdjudicacion
          : fechaAdjudicacion // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      estado: null == estado
          ? _value.estado
          : estado // ignore: cast_nullable_to_non_nullable
              as String,
      oficina: null == oficina
          ? _value.oficina
          : oficina // ignore: cast_nullable_to_non_nullable
              as String,
      valorParaEstarAlDia: null == valorParaEstarAlDia
          ? _value.valorParaEstarAlDia
          : valorParaEstarAlDia // ignore: cast_nullable_to_non_nullable
              as double,
      valorCuota: null == valorCuota
          ? _value.valorCuota
          : valorCuota // ignore: cast_nullable_to_non_nullable
              as double,
      valorCancelarPrestamo: null == valorCancelarPrestamo
          ? _value.valorCancelarPrestamo
          : valorCancelarPrestamo // ignore: cast_nullable_to_non_nullable
              as double,
      fechaProximoPago: freezed == fechaProximoPago
          ? _value.fechaProximoPago
          : fechaProximoPago // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cuotasCanceladas: null == cuotasCanceladas
          ? _value.cuotasCanceladas
          : cuotasCanceladas // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrestamoModelImpl implements _PrestamoModel {
  _$PrestamoModelImpl(
      {this.codigo = '',
      this.tipo = '',
      this.deudaInicial = 0.00,
      this.saldo = 0.00,
      this.fechaAdjudicacion,
      this.estado = '',
      this.oficina = '',
      this.valorParaEstarAlDia = 0.00,
      this.valorCuota = 0.00,
      this.valorCancelarPrestamo = 0.00,
      this.fechaProximoPago,
      this.cuotasCanceladas = ''});

  factory _$PrestamoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrestamoModelImplFromJson(json);

  @override
  @JsonKey()
  final String codigo;
  @override
  @JsonKey()
  final String tipo;
  @override
  @JsonKey()
  final double deudaInicial;
  @override
  @JsonKey()
  final double saldo;
  @override
  final DateTime? fechaAdjudicacion;
  @override
  @JsonKey()
  final String estado;
  @override
  @JsonKey()
  final String oficina;
  @override
  @JsonKey()
  final double valorParaEstarAlDia;
  @override
  @JsonKey()
  final double valorCuota;
  @override
  @JsonKey()
  final double valorCancelarPrestamo;
  @override
  final DateTime? fechaProximoPago;
  @override
  @JsonKey()
  final String cuotasCanceladas;

  @override
  String toString() {
    return 'PrestamoModel(codigo: $codigo, tipo: $tipo, deudaInicial: $deudaInicial, saldo: $saldo, fechaAdjudicacion: $fechaAdjudicacion, estado: $estado, oficina: $oficina, valorParaEstarAlDia: $valorParaEstarAlDia, valorCuota: $valorCuota, valorCancelarPrestamo: $valorCancelarPrestamo, fechaProximoPago: $fechaProximoPago, cuotasCanceladas: $cuotasCanceladas)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrestamoModelImpl &&
            (identical(other.codigo, codigo) || other.codigo == codigo) &&
            (identical(other.tipo, tipo) || other.tipo == tipo) &&
            (identical(other.deudaInicial, deudaInicial) ||
                other.deudaInicial == deudaInicial) &&
            (identical(other.saldo, saldo) || other.saldo == saldo) &&
            (identical(other.fechaAdjudicacion, fechaAdjudicacion) ||
                other.fechaAdjudicacion == fechaAdjudicacion) &&
            (identical(other.estado, estado) || other.estado == estado) &&
            (identical(other.oficina, oficina) || other.oficina == oficina) &&
            (identical(other.valorParaEstarAlDia, valorParaEstarAlDia) ||
                other.valorParaEstarAlDia == valorParaEstarAlDia) &&
            (identical(other.valorCuota, valorCuota) ||
                other.valorCuota == valorCuota) &&
            (identical(other.valorCancelarPrestamo, valorCancelarPrestamo) ||
                other.valorCancelarPrestamo == valorCancelarPrestamo) &&
            (identical(other.fechaProximoPago, fechaProximoPago) ||
                other.fechaProximoPago == fechaProximoPago) &&
            (identical(other.cuotasCanceladas, cuotasCanceladas) ||
                other.cuotasCanceladas == cuotasCanceladas));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      codigo,
      tipo,
      deudaInicial,
      saldo,
      fechaAdjudicacion,
      estado,
      oficina,
      valorParaEstarAlDia,
      valorCuota,
      valorCancelarPrestamo,
      fechaProximoPago,
      cuotasCanceladas);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrestamoModelImplCopyWith<_$PrestamoModelImpl> get copyWith =>
      __$$PrestamoModelImplCopyWithImpl<_$PrestamoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrestamoModelImplToJson(
      this,
    );
  }
}

abstract class _PrestamoModel implements PrestamoModel {
  factory _PrestamoModel(
      {final String codigo,
      final String tipo,
      final double deudaInicial,
      final double saldo,
      final DateTime? fechaAdjudicacion,
      final String estado,
      final String oficina,
      final double valorParaEstarAlDia,
      final double valorCuota,
      final double valorCancelarPrestamo,
      final DateTime? fechaProximoPago,
      final String cuotasCanceladas}) = _$PrestamoModelImpl;

  factory _PrestamoModel.fromJson(Map<String, dynamic> json) =
      _$PrestamoModelImpl.fromJson;

  @override
  String get codigo;
  @override
  String get tipo;
  @override
  double get deudaInicial;
  @override
  double get saldo;
  @override
  DateTime? get fechaAdjudicacion;
  @override
  String get estado;
  @override
  String get oficina;
  @override
  double get valorParaEstarAlDia;
  @override
  double get valorCuota;
  @override
  double get valorCancelarPrestamo;
  @override
  DateTime? get fechaProximoPago;
  @override
  String get cuotasCanceladas;
  @override
  @JsonKey(ignore: true)
  _$$PrestamoModelImplCopyWith<_$PrestamoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PosicionConsolidadaState _$PosicionConsolidadaStateFromJson(
    Map<String, dynamic> json) {
  return _PosicionConsolidadaState.fromJson(json);
}

/// @nodoc
mixin _$PosicionConsolidadaState {
  bool get isLoading => throw _privateConstructorUsedError;
  PosicionConsolidadaRespuesta? get posicionConsolidada =>
      throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PosicionConsolidadaStateCopyWith<PosicionConsolidadaState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PosicionConsolidadaStateCopyWith<$Res> {
  factory $PosicionConsolidadaStateCopyWith(PosicionConsolidadaState value,
          $Res Function(PosicionConsolidadaState) then) =
      _$PosicionConsolidadaStateCopyWithImpl<$Res, PosicionConsolidadaState>;
  @useResult
  $Res call(
      {bool isLoading,
      PosicionConsolidadaRespuesta? posicionConsolidada,
      String? errorMessage});

  $PosicionConsolidadaRespuestaCopyWith<$Res>? get posicionConsolidada;
}

/// @nodoc
class _$PosicionConsolidadaStateCopyWithImpl<$Res,
        $Val extends PosicionConsolidadaState>
    implements $PosicionConsolidadaStateCopyWith<$Res> {
  _$PosicionConsolidadaStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? posicionConsolidada = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      posicionConsolidada: freezed == posicionConsolidada
          ? _value.posicionConsolidada
          : posicionConsolidada // ignore: cast_nullable_to_non_nullable
              as PosicionConsolidadaRespuesta?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PosicionConsolidadaRespuestaCopyWith<$Res>? get posicionConsolidada {
    if (_value.posicionConsolidada == null) {
      return null;
    }

    return $PosicionConsolidadaRespuestaCopyWith<$Res>(
        _value.posicionConsolidada!, (value) {
      return _then(_value.copyWith(posicionConsolidada: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PosicionConsolidadaStateImplCopyWith<$Res>
    implements $PosicionConsolidadaStateCopyWith<$Res> {
  factory _$$PosicionConsolidadaStateImplCopyWith(
          _$PosicionConsolidadaStateImpl value,
          $Res Function(_$PosicionConsolidadaStateImpl) then) =
      __$$PosicionConsolidadaStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      PosicionConsolidadaRespuesta? posicionConsolidada,
      String? errorMessage});

  @override
  $PosicionConsolidadaRespuestaCopyWith<$Res>? get posicionConsolidada;
}

/// @nodoc
class __$$PosicionConsolidadaStateImplCopyWithImpl<$Res>
    extends _$PosicionConsolidadaStateCopyWithImpl<$Res,
        _$PosicionConsolidadaStateImpl>
    implements _$$PosicionConsolidadaStateImplCopyWith<$Res> {
  __$$PosicionConsolidadaStateImplCopyWithImpl(
      _$PosicionConsolidadaStateImpl _value,
      $Res Function(_$PosicionConsolidadaStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? posicionConsolidada = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$PosicionConsolidadaStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      posicionConsolidada: freezed == posicionConsolidada
          ? _value.posicionConsolidada
          : posicionConsolidada // ignore: cast_nullable_to_non_nullable
              as PosicionConsolidadaRespuesta?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PosicionConsolidadaStateImpl implements _PosicionConsolidadaState {
  const _$PosicionConsolidadaStateImpl(
      {this.isLoading = true, this.posicionConsolidada, this.errorMessage});

  factory _$PosicionConsolidadaStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$PosicionConsolidadaStateImplFromJson(json);

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final PosicionConsolidadaRespuesta? posicionConsolidada;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'PosicionConsolidadaState(isLoading: $isLoading, posicionConsolidada: $posicionConsolidada, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PosicionConsolidadaStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.posicionConsolidada, posicionConsolidada) ||
                other.posicionConsolidada == posicionConsolidada) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, posicionConsolidada, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PosicionConsolidadaStateImplCopyWith<_$PosicionConsolidadaStateImpl>
      get copyWith => __$$PosicionConsolidadaStateImplCopyWithImpl<
          _$PosicionConsolidadaStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PosicionConsolidadaStateImplToJson(
      this,
    );
  }
}

abstract class _PosicionConsolidadaState implements PosicionConsolidadaState {
  const factory _PosicionConsolidadaState(
      {final bool isLoading,
      final PosicionConsolidadaRespuesta? posicionConsolidada,
      final String? errorMessage}) = _$PosicionConsolidadaStateImpl;

  factory _PosicionConsolidadaState.fromJson(Map<String, dynamic> json) =
      _$PosicionConsolidadaStateImpl.fromJson;

  @override
  bool get isLoading;
  @override
  PosicionConsolidadaRespuesta? get posicionConsolidada;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$PosicionConsolidadaStateImplCopyWith<_$PosicionConsolidadaStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CuentaDetalleState _$CuentaDetalleStateFromJson(Map<String, dynamic> json) {
  return _CuentaDetalleState.fromJson(json);
}

/// @nodoc
mixin _$CuentaDetalleState {
  CuentaModel? get cuenta => throw _privateConstructorUsedError;
  ConsultaMovimientosCuentaRespuesta? get respuestaMovimientos =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CuentaDetalleStateCopyWith<CuentaDetalleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CuentaDetalleStateCopyWith<$Res> {
  factory $CuentaDetalleStateCopyWith(
          CuentaDetalleState value, $Res Function(CuentaDetalleState) then) =
      _$CuentaDetalleStateCopyWithImpl<$Res, CuentaDetalleState>;
  @useResult
  $Res call(
      {CuentaModel? cuenta,
      ConsultaMovimientosCuentaRespuesta? respuestaMovimientos});

  $CuentaModelCopyWith<$Res>? get cuenta;
  $ConsultaMovimientosCuentaRespuestaCopyWith<$Res>? get respuestaMovimientos;
}

/// @nodoc
class _$CuentaDetalleStateCopyWithImpl<$Res, $Val extends CuentaDetalleState>
    implements $CuentaDetalleStateCopyWith<$Res> {
  _$CuentaDetalleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cuenta = freezed,
    Object? respuestaMovimientos = freezed,
  }) {
    return _then(_value.copyWith(
      cuenta: freezed == cuenta
          ? _value.cuenta
          : cuenta // ignore: cast_nullable_to_non_nullable
              as CuentaModel?,
      respuestaMovimientos: freezed == respuestaMovimientos
          ? _value.respuestaMovimientos
          : respuestaMovimientos // ignore: cast_nullable_to_non_nullable
              as ConsultaMovimientosCuentaRespuesta?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CuentaModelCopyWith<$Res>? get cuenta {
    if (_value.cuenta == null) {
      return null;
    }

    return $CuentaModelCopyWith<$Res>(_value.cuenta!, (value) {
      return _then(_value.copyWith(cuenta: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ConsultaMovimientosCuentaRespuestaCopyWith<$Res>? get respuestaMovimientos {
    if (_value.respuestaMovimientos == null) {
      return null;
    }

    return $ConsultaMovimientosCuentaRespuestaCopyWith<$Res>(
        _value.respuestaMovimientos!, (value) {
      return _then(_value.copyWith(respuestaMovimientos: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CuentaDetalleStateImplCopyWith<$Res>
    implements $CuentaDetalleStateCopyWith<$Res> {
  factory _$$CuentaDetalleStateImplCopyWith(_$CuentaDetalleStateImpl value,
          $Res Function(_$CuentaDetalleStateImpl) then) =
      __$$CuentaDetalleStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CuentaModel? cuenta,
      ConsultaMovimientosCuentaRespuesta? respuestaMovimientos});

  @override
  $CuentaModelCopyWith<$Res>? get cuenta;
  @override
  $ConsultaMovimientosCuentaRespuestaCopyWith<$Res>? get respuestaMovimientos;
}

/// @nodoc
class __$$CuentaDetalleStateImplCopyWithImpl<$Res>
    extends _$CuentaDetalleStateCopyWithImpl<$Res, _$CuentaDetalleStateImpl>
    implements _$$CuentaDetalleStateImplCopyWith<$Res> {
  __$$CuentaDetalleStateImplCopyWithImpl(_$CuentaDetalleStateImpl _value,
      $Res Function(_$CuentaDetalleStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cuenta = freezed,
    Object? respuestaMovimientos = freezed,
  }) {
    return _then(_$CuentaDetalleStateImpl(
      cuenta: freezed == cuenta
          ? _value.cuenta
          : cuenta // ignore: cast_nullable_to_non_nullable
              as CuentaModel?,
      respuestaMovimientos: freezed == respuestaMovimientos
          ? _value.respuestaMovimientos
          : respuestaMovimientos // ignore: cast_nullable_to_non_nullable
              as ConsultaMovimientosCuentaRespuesta?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CuentaDetalleStateImpl implements _CuentaDetalleState {
  _$CuentaDetalleStateImpl({this.cuenta, this.respuestaMovimientos});

  factory _$CuentaDetalleStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$CuentaDetalleStateImplFromJson(json);

  @override
  final CuentaModel? cuenta;
  @override
  final ConsultaMovimientosCuentaRespuesta? respuestaMovimientos;

  @override
  String toString() {
    return 'CuentaDetalleState(cuenta: $cuenta, respuestaMovimientos: $respuestaMovimientos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CuentaDetalleStateImpl &&
            (identical(other.cuenta, cuenta) || other.cuenta == cuenta) &&
            (identical(other.respuestaMovimientos, respuestaMovimientos) ||
                other.respuestaMovimientos == respuestaMovimientos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cuenta, respuestaMovimientos);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CuentaDetalleStateImplCopyWith<_$CuentaDetalleStateImpl> get copyWith =>
      __$$CuentaDetalleStateImplCopyWithImpl<_$CuentaDetalleStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CuentaDetalleStateImplToJson(
      this,
    );
  }
}

abstract class _CuentaDetalleState implements CuentaDetalleState {
  factory _CuentaDetalleState(
          {final CuentaModel? cuenta,
          final ConsultaMovimientosCuentaRespuesta? respuestaMovimientos}) =
      _$CuentaDetalleStateImpl;

  factory _CuentaDetalleState.fromJson(Map<String, dynamic> json) =
      _$CuentaDetalleStateImpl.fromJson;

  @override
  CuentaModel? get cuenta;
  @override
  ConsultaMovimientosCuentaRespuesta? get respuestaMovimientos;
  @override
  @JsonKey(ignore: true)
  _$$CuentaDetalleStateImplCopyWith<_$CuentaDetalleStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ConsultaMovimientosCuentaRequerimiento
    _$ConsultaMovimientosCuentaRequerimientoFromJson(
        Map<String, dynamic> json) {
  return _ConsultaMovimientosCuentaRequerimiento.fromJson(json);
}

/// @nodoc
mixin _$ConsultaMovimientosCuentaRequerimiento {
  int get idUsuario => throw _privateConstructorUsedError;
  String get codigoCuenta => throw _privateConstructorUsedError;
  int get numeroRegistros => throw _privateConstructorUsedError;
  DateTime? get fechaDesde => throw _privateConstructorUsedError;
  DateTime? get fechaHasta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConsultaMovimientosCuentaRequerimientoCopyWith<
          ConsultaMovimientosCuentaRequerimiento>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultaMovimientosCuentaRequerimientoCopyWith<$Res> {
  factory $ConsultaMovimientosCuentaRequerimientoCopyWith(
          ConsultaMovimientosCuentaRequerimiento value,
          $Res Function(ConsultaMovimientosCuentaRequerimiento) then) =
      _$ConsultaMovimientosCuentaRequerimientoCopyWithImpl<$Res,
          ConsultaMovimientosCuentaRequerimiento>;
  @useResult
  $Res call(
      {int idUsuario,
      String codigoCuenta,
      int numeroRegistros,
      DateTime? fechaDesde,
      DateTime? fechaHasta});
}

/// @nodoc
class _$ConsultaMovimientosCuentaRequerimientoCopyWithImpl<$Res,
        $Val extends ConsultaMovimientosCuentaRequerimiento>
    implements $ConsultaMovimientosCuentaRequerimientoCopyWith<$Res> {
  _$ConsultaMovimientosCuentaRequerimientoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idUsuario = null,
    Object? codigoCuenta = null,
    Object? numeroRegistros = null,
    Object? fechaDesde = freezed,
    Object? fechaHasta = freezed,
  }) {
    return _then(_value.copyWith(
      idUsuario: null == idUsuario
          ? _value.idUsuario
          : idUsuario // ignore: cast_nullable_to_non_nullable
              as int,
      codigoCuenta: null == codigoCuenta
          ? _value.codigoCuenta
          : codigoCuenta // ignore: cast_nullable_to_non_nullable
              as String,
      numeroRegistros: null == numeroRegistros
          ? _value.numeroRegistros
          : numeroRegistros // ignore: cast_nullable_to_non_nullable
              as int,
      fechaDesde: freezed == fechaDesde
          ? _value.fechaDesde
          : fechaDesde // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fechaHasta: freezed == fechaHasta
          ? _value.fechaHasta
          : fechaHasta // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConsultaMovimientosCuentaRequerimientoImplCopyWith<$Res>
    implements $ConsultaMovimientosCuentaRequerimientoCopyWith<$Res> {
  factory _$$ConsultaMovimientosCuentaRequerimientoImplCopyWith(
          _$ConsultaMovimientosCuentaRequerimientoImpl value,
          $Res Function(_$ConsultaMovimientosCuentaRequerimientoImpl) then) =
      __$$ConsultaMovimientosCuentaRequerimientoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int idUsuario,
      String codigoCuenta,
      int numeroRegistros,
      DateTime? fechaDesde,
      DateTime? fechaHasta});
}

/// @nodoc
class __$$ConsultaMovimientosCuentaRequerimientoImplCopyWithImpl<$Res>
    extends _$ConsultaMovimientosCuentaRequerimientoCopyWithImpl<$Res,
        _$ConsultaMovimientosCuentaRequerimientoImpl>
    implements _$$ConsultaMovimientosCuentaRequerimientoImplCopyWith<$Res> {
  __$$ConsultaMovimientosCuentaRequerimientoImplCopyWithImpl(
      _$ConsultaMovimientosCuentaRequerimientoImpl _value,
      $Res Function(_$ConsultaMovimientosCuentaRequerimientoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idUsuario = null,
    Object? codigoCuenta = null,
    Object? numeroRegistros = null,
    Object? fechaDesde = freezed,
    Object? fechaHasta = freezed,
  }) {
    return _then(_$ConsultaMovimientosCuentaRequerimientoImpl(
      idUsuario: null == idUsuario
          ? _value.idUsuario
          : idUsuario // ignore: cast_nullable_to_non_nullable
              as int,
      codigoCuenta: null == codigoCuenta
          ? _value.codigoCuenta
          : codigoCuenta // ignore: cast_nullable_to_non_nullable
              as String,
      numeroRegistros: null == numeroRegistros
          ? _value.numeroRegistros
          : numeroRegistros // ignore: cast_nullable_to_non_nullable
              as int,
      fechaDesde: freezed == fechaDesde
          ? _value.fechaDesde
          : fechaDesde // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fechaHasta: freezed == fechaHasta
          ? _value.fechaHasta
          : fechaHasta // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultaMovimientosCuentaRequerimientoImpl
    implements _ConsultaMovimientosCuentaRequerimiento {
  _$ConsultaMovimientosCuentaRequerimientoImpl(
      {this.idUsuario = 0,
      this.codigoCuenta = '',
      this.numeroRegistros = 0,
      this.fechaDesde,
      this.fechaHasta});

  factory _$ConsultaMovimientosCuentaRequerimientoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultaMovimientosCuentaRequerimientoImplFromJson(json);

  @override
  @JsonKey()
  final int idUsuario;
  @override
  @JsonKey()
  final String codigoCuenta;
  @override
  @JsonKey()
  final int numeroRegistros;
  @override
  final DateTime? fechaDesde;
  @override
  final DateTime? fechaHasta;

  @override
  String toString() {
    return 'ConsultaMovimientosCuentaRequerimiento(idUsuario: $idUsuario, codigoCuenta: $codigoCuenta, numeroRegistros: $numeroRegistros, fechaDesde: $fechaDesde, fechaHasta: $fechaHasta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultaMovimientosCuentaRequerimientoImpl &&
            (identical(other.idUsuario, idUsuario) ||
                other.idUsuario == idUsuario) &&
            (identical(other.codigoCuenta, codigoCuenta) ||
                other.codigoCuenta == codigoCuenta) &&
            (identical(other.numeroRegistros, numeroRegistros) ||
                other.numeroRegistros == numeroRegistros) &&
            (identical(other.fechaDesde, fechaDesde) ||
                other.fechaDesde == fechaDesde) &&
            (identical(other.fechaHasta, fechaHasta) ||
                other.fechaHasta == fechaHasta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, idUsuario, codigoCuenta,
      numeroRegistros, fechaDesde, fechaHasta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultaMovimientosCuentaRequerimientoImplCopyWith<
          _$ConsultaMovimientosCuentaRequerimientoImpl>
      get copyWith =>
          __$$ConsultaMovimientosCuentaRequerimientoImplCopyWithImpl<
              _$ConsultaMovimientosCuentaRequerimientoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultaMovimientosCuentaRequerimientoImplToJson(
      this,
    );
  }
}

abstract class _ConsultaMovimientosCuentaRequerimiento
    implements ConsultaMovimientosCuentaRequerimiento {
  factory _ConsultaMovimientosCuentaRequerimiento(
          {final int idUsuario,
          final String codigoCuenta,
          final int numeroRegistros,
          final DateTime? fechaDesde,
          final DateTime? fechaHasta}) =
      _$ConsultaMovimientosCuentaRequerimientoImpl;

  factory _ConsultaMovimientosCuentaRequerimiento.fromJson(
          Map<String, dynamic> json) =
      _$ConsultaMovimientosCuentaRequerimientoImpl.fromJson;

  @override
  int get idUsuario;
  @override
  String get codigoCuenta;
  @override
  int get numeroRegistros;
  @override
  DateTime? get fechaDesde;
  @override
  DateTime? get fechaHasta;
  @override
  @JsonKey(ignore: true)
  _$$ConsultaMovimientosCuentaRequerimientoImplCopyWith<
          _$ConsultaMovimientosCuentaRequerimientoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultaMovimientosCuentaRespuesta _$ConsultaMovimientosCuentaRespuestaFromJson(
    Map<String, dynamic> json) {
  return _ConsultaMovimientosCuentaRespuesta.fromJson(json);
}

/// @nodoc
mixin _$ConsultaMovimientosCuentaRespuesta {
  List<MovimientoModel> get movimientos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConsultaMovimientosCuentaRespuestaCopyWith<
          ConsultaMovimientosCuentaRespuesta>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultaMovimientosCuentaRespuestaCopyWith<$Res> {
  factory $ConsultaMovimientosCuentaRespuestaCopyWith(
          ConsultaMovimientosCuentaRespuesta value,
          $Res Function(ConsultaMovimientosCuentaRespuesta) then) =
      _$ConsultaMovimientosCuentaRespuestaCopyWithImpl<$Res,
          ConsultaMovimientosCuentaRespuesta>;
  @useResult
  $Res call({List<MovimientoModel> movimientos});
}

/// @nodoc
class _$ConsultaMovimientosCuentaRespuestaCopyWithImpl<$Res,
        $Val extends ConsultaMovimientosCuentaRespuesta>
    implements $ConsultaMovimientosCuentaRespuestaCopyWith<$Res> {
  _$ConsultaMovimientosCuentaRespuestaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movimientos = null,
  }) {
    return _then(_value.copyWith(
      movimientos: null == movimientos
          ? _value.movimientos
          : movimientos // ignore: cast_nullable_to_non_nullable
              as List<MovimientoModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConsultaMovimientosCuentaRespuestaImplCopyWith<$Res>
    implements $ConsultaMovimientosCuentaRespuestaCopyWith<$Res> {
  factory _$$ConsultaMovimientosCuentaRespuestaImplCopyWith(
          _$ConsultaMovimientosCuentaRespuestaImpl value,
          $Res Function(_$ConsultaMovimientosCuentaRespuestaImpl) then) =
      __$$ConsultaMovimientosCuentaRespuestaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MovimientoModel> movimientos});
}

/// @nodoc
class __$$ConsultaMovimientosCuentaRespuestaImplCopyWithImpl<$Res>
    extends _$ConsultaMovimientosCuentaRespuestaCopyWithImpl<$Res,
        _$ConsultaMovimientosCuentaRespuestaImpl>
    implements _$$ConsultaMovimientosCuentaRespuestaImplCopyWith<$Res> {
  __$$ConsultaMovimientosCuentaRespuestaImplCopyWithImpl(
      _$ConsultaMovimientosCuentaRespuestaImpl _value,
      $Res Function(_$ConsultaMovimientosCuentaRespuestaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movimientos = null,
  }) {
    return _then(_$ConsultaMovimientosCuentaRespuestaImpl(
      movimientos: null == movimientos
          ? _value._movimientos
          : movimientos // ignore: cast_nullable_to_non_nullable
              as List<MovimientoModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultaMovimientosCuentaRespuestaImpl
    implements _ConsultaMovimientosCuentaRespuesta {
  _$ConsultaMovimientosCuentaRespuestaImpl(
      {final List<MovimientoModel> movimientos = const []})
      : _movimientos = movimientos;

  factory _$ConsultaMovimientosCuentaRespuestaImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultaMovimientosCuentaRespuestaImplFromJson(json);

  final List<MovimientoModel> _movimientos;
  @override
  @JsonKey()
  List<MovimientoModel> get movimientos {
    if (_movimientos is EqualUnmodifiableListView) return _movimientos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movimientos);
  }

  @override
  String toString() {
    return 'ConsultaMovimientosCuentaRespuesta(movimientos: $movimientos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultaMovimientosCuentaRespuestaImpl &&
            const DeepCollectionEquality()
                .equals(other._movimientos, _movimientos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_movimientos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultaMovimientosCuentaRespuestaImplCopyWith<
          _$ConsultaMovimientosCuentaRespuestaImpl>
      get copyWith => __$$ConsultaMovimientosCuentaRespuestaImplCopyWithImpl<
          _$ConsultaMovimientosCuentaRespuestaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultaMovimientosCuentaRespuestaImplToJson(
      this,
    );
  }
}

abstract class _ConsultaMovimientosCuentaRespuesta
    implements ConsultaMovimientosCuentaRespuesta {
  factory _ConsultaMovimientosCuentaRespuesta(
          {final List<MovimientoModel> movimientos}) =
      _$ConsultaMovimientosCuentaRespuestaImpl;

  factory _ConsultaMovimientosCuentaRespuesta.fromJson(
          Map<String, dynamic> json) =
      _$ConsultaMovimientosCuentaRespuestaImpl.fromJson;

  @override
  List<MovimientoModel> get movimientos;
  @override
  @JsonKey(ignore: true)
  _$$ConsultaMovimientosCuentaRespuestaImplCopyWith<
          _$ConsultaMovimientosCuentaRespuestaImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MovimientoModel _$MovimientoModelFromJson(Map<String, dynamic> json) {
  return _MovimientoModel.fromJson(json);
}

/// @nodoc
mixin _$MovimientoModel {
  int get id => throw _privateConstructorUsedError;
  DateTime? get fecha => throw _privateConstructorUsedError;
  String get transaccion => throw _privateConstructorUsedError;
  String get cheque => throw _privateConstructorUsedError;
  double get deposito => throw _privateConstructorUsedError;
  double get retiro => throw _privateConstructorUsedError;
  double get saldo => throw _privateConstructorUsedError;
  String get oficina => throw _privateConstructorUsedError;
  String get documento => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovimientoModelCopyWith<MovimientoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovimientoModelCopyWith<$Res> {
  factory $MovimientoModelCopyWith(
          MovimientoModel value, $Res Function(MovimientoModel) then) =
      _$MovimientoModelCopyWithImpl<$Res, MovimientoModel>;
  @useResult
  $Res call(
      {int id,
      DateTime? fecha,
      String transaccion,
      String cheque,
      double deposito,
      double retiro,
      double saldo,
      String oficina,
      String documento});
}

/// @nodoc
class _$MovimientoModelCopyWithImpl<$Res, $Val extends MovimientoModel>
    implements $MovimientoModelCopyWith<$Res> {
  _$MovimientoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fecha = freezed,
    Object? transaccion = null,
    Object? cheque = null,
    Object? deposito = null,
    Object? retiro = null,
    Object? saldo = null,
    Object? oficina = null,
    Object? documento = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fecha: freezed == fecha
          ? _value.fecha
          : fecha // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      transaccion: null == transaccion
          ? _value.transaccion
          : transaccion // ignore: cast_nullable_to_non_nullable
              as String,
      cheque: null == cheque
          ? _value.cheque
          : cheque // ignore: cast_nullable_to_non_nullable
              as String,
      deposito: null == deposito
          ? _value.deposito
          : deposito // ignore: cast_nullable_to_non_nullable
              as double,
      retiro: null == retiro
          ? _value.retiro
          : retiro // ignore: cast_nullable_to_non_nullable
              as double,
      saldo: null == saldo
          ? _value.saldo
          : saldo // ignore: cast_nullable_to_non_nullable
              as double,
      oficina: null == oficina
          ? _value.oficina
          : oficina // ignore: cast_nullable_to_non_nullable
              as String,
      documento: null == documento
          ? _value.documento
          : documento // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovimientoModelImplCopyWith<$Res>
    implements $MovimientoModelCopyWith<$Res> {
  factory _$$MovimientoModelImplCopyWith(_$MovimientoModelImpl value,
          $Res Function(_$MovimientoModelImpl) then) =
      __$$MovimientoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      DateTime? fecha,
      String transaccion,
      String cheque,
      double deposito,
      double retiro,
      double saldo,
      String oficina,
      String documento});
}

/// @nodoc
class __$$MovimientoModelImplCopyWithImpl<$Res>
    extends _$MovimientoModelCopyWithImpl<$Res, _$MovimientoModelImpl>
    implements _$$MovimientoModelImplCopyWith<$Res> {
  __$$MovimientoModelImplCopyWithImpl(
      _$MovimientoModelImpl _value, $Res Function(_$MovimientoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fecha = freezed,
    Object? transaccion = null,
    Object? cheque = null,
    Object? deposito = null,
    Object? retiro = null,
    Object? saldo = null,
    Object? oficina = null,
    Object? documento = null,
  }) {
    return _then(_$MovimientoModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fecha: freezed == fecha
          ? _value.fecha
          : fecha // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      transaccion: null == transaccion
          ? _value.transaccion
          : transaccion // ignore: cast_nullable_to_non_nullable
              as String,
      cheque: null == cheque
          ? _value.cheque
          : cheque // ignore: cast_nullable_to_non_nullable
              as String,
      deposito: null == deposito
          ? _value.deposito
          : deposito // ignore: cast_nullable_to_non_nullable
              as double,
      retiro: null == retiro
          ? _value.retiro
          : retiro // ignore: cast_nullable_to_non_nullable
              as double,
      saldo: null == saldo
          ? _value.saldo
          : saldo // ignore: cast_nullable_to_non_nullable
              as double,
      oficina: null == oficina
          ? _value.oficina
          : oficina // ignore: cast_nullable_to_non_nullable
              as String,
      documento: null == documento
          ? _value.documento
          : documento // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovimientoModelImpl implements _MovimientoModel {
  _$MovimientoModelImpl(
      {this.id = 0,
      this.fecha,
      this.transaccion = '',
      this.cheque = '',
      this.deposito = 0.00,
      this.retiro = 0.00,
      this.saldo = 0.00,
      this.oficina = '',
      this.documento = ''});

  factory _$MovimientoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovimientoModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  final DateTime? fecha;
  @override
  @JsonKey()
  final String transaccion;
  @override
  @JsonKey()
  final String cheque;
  @override
  @JsonKey()
  final double deposito;
  @override
  @JsonKey()
  final double retiro;
  @override
  @JsonKey()
  final double saldo;
  @override
  @JsonKey()
  final String oficina;
  @override
  @JsonKey()
  final String documento;

  @override
  String toString() {
    return 'MovimientoModel(id: $id, fecha: $fecha, transaccion: $transaccion, cheque: $cheque, deposito: $deposito, retiro: $retiro, saldo: $saldo, oficina: $oficina, documento: $documento)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovimientoModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fecha, fecha) || other.fecha == fecha) &&
            (identical(other.transaccion, transaccion) ||
                other.transaccion == transaccion) &&
            (identical(other.cheque, cheque) || other.cheque == cheque) &&
            (identical(other.deposito, deposito) ||
                other.deposito == deposito) &&
            (identical(other.retiro, retiro) || other.retiro == retiro) &&
            (identical(other.saldo, saldo) || other.saldo == saldo) &&
            (identical(other.oficina, oficina) || other.oficina == oficina) &&
            (identical(other.documento, documento) ||
                other.documento == documento));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, fecha, transaccion, cheque,
      deposito, retiro, saldo, oficina, documento);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovimientoModelImplCopyWith<_$MovimientoModelImpl> get copyWith =>
      __$$MovimientoModelImplCopyWithImpl<_$MovimientoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovimientoModelImplToJson(
      this,
    );
  }
}

abstract class _MovimientoModel implements MovimientoModel {
  factory _MovimientoModel(
      {final int id,
      final DateTime? fecha,
      final String transaccion,
      final String cheque,
      final double deposito,
      final double retiro,
      final double saldo,
      final String oficina,
      final String documento}) = _$MovimientoModelImpl;

  factory _MovimientoModel.fromJson(Map<String, dynamic> json) =
      _$MovimientoModelImpl.fromJson;

  @override
  int get id;
  @override
  DateTime? get fecha;
  @override
  String get transaccion;
  @override
  String get cheque;
  @override
  double get deposito;
  @override
  double get retiro;
  @override
  double get saldo;
  @override
  String get oficina;
  @override
  String get documento;
  @override
  @JsonKey(ignore: true)
  _$$MovimientoModelImplCopyWith<_$MovimientoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ConsultaMovimientosInversionRequerimiento
    _$ConsultaMovimientosInversionRequerimientoFromJson(
        Map<String, dynamic> json) {
  return _ConsultaMovimientosInversionRequerimiento.fromJson(json);
}

/// @nodoc
mixin _$ConsultaMovimientosInversionRequerimiento {
  String get codigoCuenta => throw _privateConstructorUsedError;
  int get idUsuario => throw _privateConstructorUsedError;
  int get numeroRegistros => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConsultaMovimientosInversionRequerimientoCopyWith<
          ConsultaMovimientosInversionRequerimiento>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultaMovimientosInversionRequerimientoCopyWith<$Res> {
  factory $ConsultaMovimientosInversionRequerimientoCopyWith(
          ConsultaMovimientosInversionRequerimiento value,
          $Res Function(ConsultaMovimientosInversionRequerimiento) then) =
      _$ConsultaMovimientosInversionRequerimientoCopyWithImpl<$Res,
          ConsultaMovimientosInversionRequerimiento>;
  @useResult
  $Res call({String codigoCuenta, int idUsuario, int numeroRegistros});
}

/// @nodoc
class _$ConsultaMovimientosInversionRequerimientoCopyWithImpl<$Res,
        $Val extends ConsultaMovimientosInversionRequerimiento>
    implements $ConsultaMovimientosInversionRequerimientoCopyWith<$Res> {
  _$ConsultaMovimientosInversionRequerimientoCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codigoCuenta = null,
    Object? idUsuario = null,
    Object? numeroRegistros = null,
  }) {
    return _then(_value.copyWith(
      codigoCuenta: null == codigoCuenta
          ? _value.codigoCuenta
          : codigoCuenta // ignore: cast_nullable_to_non_nullable
              as String,
      idUsuario: null == idUsuario
          ? _value.idUsuario
          : idUsuario // ignore: cast_nullable_to_non_nullable
              as int,
      numeroRegistros: null == numeroRegistros
          ? _value.numeroRegistros
          : numeroRegistros // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConsultaMovimientosInversionRequerimientoImplCopyWith<$Res>
    implements $ConsultaMovimientosInversionRequerimientoCopyWith<$Res> {
  factory _$$ConsultaMovimientosInversionRequerimientoImplCopyWith(
          _$ConsultaMovimientosInversionRequerimientoImpl value,
          $Res Function(_$ConsultaMovimientosInversionRequerimientoImpl) then) =
      __$$ConsultaMovimientosInversionRequerimientoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String codigoCuenta, int idUsuario, int numeroRegistros});
}

/// @nodoc
class __$$ConsultaMovimientosInversionRequerimientoImplCopyWithImpl<$Res>
    extends _$ConsultaMovimientosInversionRequerimientoCopyWithImpl<$Res,
        _$ConsultaMovimientosInversionRequerimientoImpl>
    implements _$$ConsultaMovimientosInversionRequerimientoImplCopyWith<$Res> {
  __$$ConsultaMovimientosInversionRequerimientoImplCopyWithImpl(
      _$ConsultaMovimientosInversionRequerimientoImpl _value,
      $Res Function(_$ConsultaMovimientosInversionRequerimientoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codigoCuenta = null,
    Object? idUsuario = null,
    Object? numeroRegistros = null,
  }) {
    return _then(_$ConsultaMovimientosInversionRequerimientoImpl(
      codigoCuenta: null == codigoCuenta
          ? _value.codigoCuenta
          : codigoCuenta // ignore: cast_nullable_to_non_nullable
              as String,
      idUsuario: null == idUsuario
          ? _value.idUsuario
          : idUsuario // ignore: cast_nullable_to_non_nullable
              as int,
      numeroRegistros: null == numeroRegistros
          ? _value.numeroRegistros
          : numeroRegistros // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultaMovimientosInversionRequerimientoImpl
    implements _ConsultaMovimientosInversionRequerimiento {
  _$ConsultaMovimientosInversionRequerimientoImpl(
      {this.codigoCuenta = '', this.idUsuario = 0, this.numeroRegistros = 0});

  factory _$ConsultaMovimientosInversionRequerimientoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultaMovimientosInversionRequerimientoImplFromJson(json);

  @override
  @JsonKey()
  final String codigoCuenta;
  @override
  @JsonKey()
  final int idUsuario;
  @override
  @JsonKey()
  final int numeroRegistros;

  @override
  String toString() {
    return 'ConsultaMovimientosInversionRequerimiento(codigoCuenta: $codigoCuenta, idUsuario: $idUsuario, numeroRegistros: $numeroRegistros)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultaMovimientosInversionRequerimientoImpl &&
            (identical(other.codigoCuenta, codigoCuenta) ||
                other.codigoCuenta == codigoCuenta) &&
            (identical(other.idUsuario, idUsuario) ||
                other.idUsuario == idUsuario) &&
            (identical(other.numeroRegistros, numeroRegistros) ||
                other.numeroRegistros == numeroRegistros));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, codigoCuenta, idUsuario, numeroRegistros);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultaMovimientosInversionRequerimientoImplCopyWith<
          _$ConsultaMovimientosInversionRequerimientoImpl>
      get copyWith =>
          __$$ConsultaMovimientosInversionRequerimientoImplCopyWithImpl<
                  _$ConsultaMovimientosInversionRequerimientoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultaMovimientosInversionRequerimientoImplToJson(
      this,
    );
  }
}

abstract class _ConsultaMovimientosInversionRequerimiento
    implements ConsultaMovimientosInversionRequerimiento {
  factory _ConsultaMovimientosInversionRequerimiento(
          {final String codigoCuenta,
          final int idUsuario,
          final int numeroRegistros}) =
      _$ConsultaMovimientosInversionRequerimientoImpl;

  factory _ConsultaMovimientosInversionRequerimiento.fromJson(
          Map<String, dynamic> json) =
      _$ConsultaMovimientosInversionRequerimientoImpl.fromJson;

  @override
  String get codigoCuenta;
  @override
  int get idUsuario;
  @override
  int get numeroRegistros;
  @override
  @JsonKey(ignore: true)
  _$$ConsultaMovimientosInversionRequerimientoImplCopyWith<
          _$ConsultaMovimientosInversionRequerimientoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultaMovimientosPrestamoRespuesta
    _$ConsultaMovimientosPrestamoRespuestaFromJson(Map<String, dynamic> json) {
  return _ConsultaMovimientosPrestamoRespuesta.fromJson(json);
}

/// @nodoc
mixin _$ConsultaMovimientosPrestamoRespuesta {
  List<MovimientoPrestamoModel> get listaPrestamoMovimiento =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConsultaMovimientosPrestamoRespuestaCopyWith<
          ConsultaMovimientosPrestamoRespuesta>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultaMovimientosPrestamoRespuestaCopyWith<$Res> {
  factory $ConsultaMovimientosPrestamoRespuestaCopyWith(
          ConsultaMovimientosPrestamoRespuesta value,
          $Res Function(ConsultaMovimientosPrestamoRespuesta) then) =
      _$ConsultaMovimientosPrestamoRespuestaCopyWithImpl<$Res,
          ConsultaMovimientosPrestamoRespuesta>;
  @useResult
  $Res call({List<MovimientoPrestamoModel> listaPrestamoMovimiento});
}

/// @nodoc
class _$ConsultaMovimientosPrestamoRespuestaCopyWithImpl<$Res,
        $Val extends ConsultaMovimientosPrestamoRespuesta>
    implements $ConsultaMovimientosPrestamoRespuestaCopyWith<$Res> {
  _$ConsultaMovimientosPrestamoRespuestaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listaPrestamoMovimiento = null,
  }) {
    return _then(_value.copyWith(
      listaPrestamoMovimiento: null == listaPrestamoMovimiento
          ? _value.listaPrestamoMovimiento
          : listaPrestamoMovimiento // ignore: cast_nullable_to_non_nullable
              as List<MovimientoPrestamoModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConsultaMovimientosPrestamoRespuestaImplCopyWith<$Res>
    implements $ConsultaMovimientosPrestamoRespuestaCopyWith<$Res> {
  factory _$$ConsultaMovimientosPrestamoRespuestaImplCopyWith(
          _$ConsultaMovimientosPrestamoRespuestaImpl value,
          $Res Function(_$ConsultaMovimientosPrestamoRespuestaImpl) then) =
      __$$ConsultaMovimientosPrestamoRespuestaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MovimientoPrestamoModel> listaPrestamoMovimiento});
}

/// @nodoc
class __$$ConsultaMovimientosPrestamoRespuestaImplCopyWithImpl<$Res>
    extends _$ConsultaMovimientosPrestamoRespuestaCopyWithImpl<$Res,
        _$ConsultaMovimientosPrestamoRespuestaImpl>
    implements _$$ConsultaMovimientosPrestamoRespuestaImplCopyWith<$Res> {
  __$$ConsultaMovimientosPrestamoRespuestaImplCopyWithImpl(
      _$ConsultaMovimientosPrestamoRespuestaImpl _value,
      $Res Function(_$ConsultaMovimientosPrestamoRespuestaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listaPrestamoMovimiento = null,
  }) {
    return _then(_$ConsultaMovimientosPrestamoRespuestaImpl(
      listaPrestamoMovimiento: null == listaPrestamoMovimiento
          ? _value._listaPrestamoMovimiento
          : listaPrestamoMovimiento // ignore: cast_nullable_to_non_nullable
              as List<MovimientoPrestamoModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultaMovimientosPrestamoRespuestaImpl
    implements _ConsultaMovimientosPrestamoRespuesta {
  _$ConsultaMovimientosPrestamoRespuestaImpl(
      {final List<MovimientoPrestamoModel> listaPrestamoMovimiento = const []})
      : _listaPrestamoMovimiento = listaPrestamoMovimiento;

  factory _$ConsultaMovimientosPrestamoRespuestaImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultaMovimientosPrestamoRespuestaImplFromJson(json);

  final List<MovimientoPrestamoModel> _listaPrestamoMovimiento;
  @override
  @JsonKey()
  List<MovimientoPrestamoModel> get listaPrestamoMovimiento {
    if (_listaPrestamoMovimiento is EqualUnmodifiableListView)
      return _listaPrestamoMovimiento;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listaPrestamoMovimiento);
  }

  @override
  String toString() {
    return 'ConsultaMovimientosPrestamoRespuesta(listaPrestamoMovimiento: $listaPrestamoMovimiento)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultaMovimientosPrestamoRespuestaImpl &&
            const DeepCollectionEquality().equals(
                other._listaPrestamoMovimiento, _listaPrestamoMovimiento));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_listaPrestamoMovimiento));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultaMovimientosPrestamoRespuestaImplCopyWith<
          _$ConsultaMovimientosPrestamoRespuestaImpl>
      get copyWith => __$$ConsultaMovimientosPrestamoRespuestaImplCopyWithImpl<
          _$ConsultaMovimientosPrestamoRespuestaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultaMovimientosPrestamoRespuestaImplToJson(
      this,
    );
  }
}

abstract class _ConsultaMovimientosPrestamoRespuesta
    implements ConsultaMovimientosPrestamoRespuesta {
  factory _ConsultaMovimientosPrestamoRespuesta(
          {final List<MovimientoPrestamoModel> listaPrestamoMovimiento}) =
      _$ConsultaMovimientosPrestamoRespuestaImpl;

  factory _ConsultaMovimientosPrestamoRespuesta.fromJson(
          Map<String, dynamic> json) =
      _$ConsultaMovimientosPrestamoRespuestaImpl.fromJson;

  @override
  List<MovimientoPrestamoModel> get listaPrestamoMovimiento;
  @override
  @JsonKey(ignore: true)
  _$$ConsultaMovimientosPrestamoRespuestaImplCopyWith<
          _$ConsultaMovimientosPrestamoRespuestaImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MovimientoPrestamoModel _$MovimientoPrestamoModelFromJson(
    Map<String, dynamic> json) {
  return _MovimientoPrestamoModel.fromJson(json);
}

/// @nodoc
mixin _$MovimientoPrestamoModel {
  DateTime? get fechaProceso => throw _privateConstructorUsedError;
  DateTime? get fechaSistema => throw _privateConstructorUsedError;
  String get documento => throw _privateConstructorUsedError;
  String get transaccion => throw _privateConstructorUsedError;
  double get valor => throw _privateConstructorUsedError;
  double get saldo => throw _privateConstructorUsedError;
  String get tipo => throw _privateConstructorUsedError;
  String get agencia => throw _privateConstructorUsedError;
  String get usuario => throw _privateConstructorUsedError;
  List<RubroMovimientoPrestamoModel> get listaRubroMovimiento =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovimientoPrestamoModelCopyWith<MovimientoPrestamoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovimientoPrestamoModelCopyWith<$Res> {
  factory $MovimientoPrestamoModelCopyWith(MovimientoPrestamoModel value,
          $Res Function(MovimientoPrestamoModel) then) =
      _$MovimientoPrestamoModelCopyWithImpl<$Res, MovimientoPrestamoModel>;
  @useResult
  $Res call(
      {DateTime? fechaProceso,
      DateTime? fechaSistema,
      String documento,
      String transaccion,
      double valor,
      double saldo,
      String tipo,
      String agencia,
      String usuario,
      List<RubroMovimientoPrestamoModel> listaRubroMovimiento});
}

/// @nodoc
class _$MovimientoPrestamoModelCopyWithImpl<$Res,
        $Val extends MovimientoPrestamoModel>
    implements $MovimientoPrestamoModelCopyWith<$Res> {
  _$MovimientoPrestamoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fechaProceso = freezed,
    Object? fechaSistema = freezed,
    Object? documento = null,
    Object? transaccion = null,
    Object? valor = null,
    Object? saldo = null,
    Object? tipo = null,
    Object? agencia = null,
    Object? usuario = null,
    Object? listaRubroMovimiento = null,
  }) {
    return _then(_value.copyWith(
      fechaProceso: freezed == fechaProceso
          ? _value.fechaProceso
          : fechaProceso // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fechaSistema: freezed == fechaSistema
          ? _value.fechaSistema
          : fechaSistema // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      documento: null == documento
          ? _value.documento
          : documento // ignore: cast_nullable_to_non_nullable
              as String,
      transaccion: null == transaccion
          ? _value.transaccion
          : transaccion // ignore: cast_nullable_to_non_nullable
              as String,
      valor: null == valor
          ? _value.valor
          : valor // ignore: cast_nullable_to_non_nullable
              as double,
      saldo: null == saldo
          ? _value.saldo
          : saldo // ignore: cast_nullable_to_non_nullable
              as double,
      tipo: null == tipo
          ? _value.tipo
          : tipo // ignore: cast_nullable_to_non_nullable
              as String,
      agencia: null == agencia
          ? _value.agencia
          : agencia // ignore: cast_nullable_to_non_nullable
              as String,
      usuario: null == usuario
          ? _value.usuario
          : usuario // ignore: cast_nullable_to_non_nullable
              as String,
      listaRubroMovimiento: null == listaRubroMovimiento
          ? _value.listaRubroMovimiento
          : listaRubroMovimiento // ignore: cast_nullable_to_non_nullable
              as List<RubroMovimientoPrestamoModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovimientoPrestamoModelImplCopyWith<$Res>
    implements $MovimientoPrestamoModelCopyWith<$Res> {
  factory _$$MovimientoPrestamoModelImplCopyWith(
          _$MovimientoPrestamoModelImpl value,
          $Res Function(_$MovimientoPrestamoModelImpl) then) =
      __$$MovimientoPrestamoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? fechaProceso,
      DateTime? fechaSistema,
      String documento,
      String transaccion,
      double valor,
      double saldo,
      String tipo,
      String agencia,
      String usuario,
      List<RubroMovimientoPrestamoModel> listaRubroMovimiento});
}

/// @nodoc
class __$$MovimientoPrestamoModelImplCopyWithImpl<$Res>
    extends _$MovimientoPrestamoModelCopyWithImpl<$Res,
        _$MovimientoPrestamoModelImpl>
    implements _$$MovimientoPrestamoModelImplCopyWith<$Res> {
  __$$MovimientoPrestamoModelImplCopyWithImpl(
      _$MovimientoPrestamoModelImpl _value,
      $Res Function(_$MovimientoPrestamoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fechaProceso = freezed,
    Object? fechaSistema = freezed,
    Object? documento = null,
    Object? transaccion = null,
    Object? valor = null,
    Object? saldo = null,
    Object? tipo = null,
    Object? agencia = null,
    Object? usuario = null,
    Object? listaRubroMovimiento = null,
  }) {
    return _then(_$MovimientoPrestamoModelImpl(
      fechaProceso: freezed == fechaProceso
          ? _value.fechaProceso
          : fechaProceso // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fechaSistema: freezed == fechaSistema
          ? _value.fechaSistema
          : fechaSistema // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      documento: null == documento
          ? _value.documento
          : documento // ignore: cast_nullable_to_non_nullable
              as String,
      transaccion: null == transaccion
          ? _value.transaccion
          : transaccion // ignore: cast_nullable_to_non_nullable
              as String,
      valor: null == valor
          ? _value.valor
          : valor // ignore: cast_nullable_to_non_nullable
              as double,
      saldo: null == saldo
          ? _value.saldo
          : saldo // ignore: cast_nullable_to_non_nullable
              as double,
      tipo: null == tipo
          ? _value.tipo
          : tipo // ignore: cast_nullable_to_non_nullable
              as String,
      agencia: null == agencia
          ? _value.agencia
          : agencia // ignore: cast_nullable_to_non_nullable
              as String,
      usuario: null == usuario
          ? _value.usuario
          : usuario // ignore: cast_nullable_to_non_nullable
              as String,
      listaRubroMovimiento: null == listaRubroMovimiento
          ? _value._listaRubroMovimiento
          : listaRubroMovimiento // ignore: cast_nullable_to_non_nullable
              as List<RubroMovimientoPrestamoModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovimientoPrestamoModelImpl implements _MovimientoPrestamoModel {
  _$MovimientoPrestamoModelImpl(
      {this.fechaProceso,
      this.fechaSistema,
      this.documento = '',
      this.transaccion = '',
      this.valor = 0.00,
      this.saldo = 0.00,
      this.tipo = '',
      this.agencia = '',
      this.usuario = '',
      final List<RubroMovimientoPrestamoModel> listaRubroMovimiento = const []})
      : _listaRubroMovimiento = listaRubroMovimiento;

  factory _$MovimientoPrestamoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovimientoPrestamoModelImplFromJson(json);

  @override
  final DateTime? fechaProceso;
  @override
  final DateTime? fechaSistema;
  @override
  @JsonKey()
  final String documento;
  @override
  @JsonKey()
  final String transaccion;
  @override
  @JsonKey()
  final double valor;
  @override
  @JsonKey()
  final double saldo;
  @override
  @JsonKey()
  final String tipo;
  @override
  @JsonKey()
  final String agencia;
  @override
  @JsonKey()
  final String usuario;
  final List<RubroMovimientoPrestamoModel> _listaRubroMovimiento;
  @override
  @JsonKey()
  List<RubroMovimientoPrestamoModel> get listaRubroMovimiento {
    if (_listaRubroMovimiento is EqualUnmodifiableListView)
      return _listaRubroMovimiento;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listaRubroMovimiento);
  }

  @override
  String toString() {
    return 'MovimientoPrestamoModel(fechaProceso: $fechaProceso, fechaSistema: $fechaSistema, documento: $documento, transaccion: $transaccion, valor: $valor, saldo: $saldo, tipo: $tipo, agencia: $agencia, usuario: $usuario, listaRubroMovimiento: $listaRubroMovimiento)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovimientoPrestamoModelImpl &&
            (identical(other.fechaProceso, fechaProceso) ||
                other.fechaProceso == fechaProceso) &&
            (identical(other.fechaSistema, fechaSistema) ||
                other.fechaSistema == fechaSistema) &&
            (identical(other.documento, documento) ||
                other.documento == documento) &&
            (identical(other.transaccion, transaccion) ||
                other.transaccion == transaccion) &&
            (identical(other.valor, valor) || other.valor == valor) &&
            (identical(other.saldo, saldo) || other.saldo == saldo) &&
            (identical(other.tipo, tipo) || other.tipo == tipo) &&
            (identical(other.agencia, agencia) || other.agencia == agencia) &&
            (identical(other.usuario, usuario) || other.usuario == usuario) &&
            const DeepCollectionEquality()
                .equals(other._listaRubroMovimiento, _listaRubroMovimiento));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      fechaProceso,
      fechaSistema,
      documento,
      transaccion,
      valor,
      saldo,
      tipo,
      agencia,
      usuario,
      const DeepCollectionEquality().hash(_listaRubroMovimiento));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovimientoPrestamoModelImplCopyWith<_$MovimientoPrestamoModelImpl>
      get copyWith => __$$MovimientoPrestamoModelImplCopyWithImpl<
          _$MovimientoPrestamoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovimientoPrestamoModelImplToJson(
      this,
    );
  }
}

abstract class _MovimientoPrestamoModel implements MovimientoPrestamoModel {
  factory _MovimientoPrestamoModel(
          {final DateTime? fechaProceso,
          final DateTime? fechaSistema,
          final String documento,
          final String transaccion,
          final double valor,
          final double saldo,
          final String tipo,
          final String agencia,
          final String usuario,
          final List<RubroMovimientoPrestamoModel> listaRubroMovimiento}) =
      _$MovimientoPrestamoModelImpl;

  factory _MovimientoPrestamoModel.fromJson(Map<String, dynamic> json) =
      _$MovimientoPrestamoModelImpl.fromJson;

  @override
  DateTime? get fechaProceso;
  @override
  DateTime? get fechaSistema;
  @override
  String get documento;
  @override
  String get transaccion;
  @override
  double get valor;
  @override
  double get saldo;
  @override
  String get tipo;
  @override
  String get agencia;
  @override
  String get usuario;
  @override
  List<RubroMovimientoPrestamoModel> get listaRubroMovimiento;
  @override
  @JsonKey(ignore: true)
  _$$MovimientoPrestamoModelImplCopyWith<_$MovimientoPrestamoModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RubroMovimientoPrestamoModel _$RubroMovimientoPrestamoModelFromJson(
    Map<String, dynamic> json) {
  return _RubroMovimientoPrestamoModel.fromJson(json);
}

/// @nodoc
mixin _$RubroMovimientoPrestamoModel {
  int get indice => throw _privateConstructorUsedError;
  String get documento => throw _privateConstructorUsedError;
  int get cuota => throw _privateConstructorUsedError;
  String get rubro => throw _privateConstructorUsedError;
  double get valor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RubroMovimientoPrestamoModelCopyWith<RubroMovimientoPrestamoModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RubroMovimientoPrestamoModelCopyWith<$Res> {
  factory $RubroMovimientoPrestamoModelCopyWith(
          RubroMovimientoPrestamoModel value,
          $Res Function(RubroMovimientoPrestamoModel) then) =
      _$RubroMovimientoPrestamoModelCopyWithImpl<$Res,
          RubroMovimientoPrestamoModel>;
  @useResult
  $Res call(
      {int indice, String documento, int cuota, String rubro, double valor});
}

/// @nodoc
class _$RubroMovimientoPrestamoModelCopyWithImpl<$Res,
        $Val extends RubroMovimientoPrestamoModel>
    implements $RubroMovimientoPrestamoModelCopyWith<$Res> {
  _$RubroMovimientoPrestamoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? indice = null,
    Object? documento = null,
    Object? cuota = null,
    Object? rubro = null,
    Object? valor = null,
  }) {
    return _then(_value.copyWith(
      indice: null == indice
          ? _value.indice
          : indice // ignore: cast_nullable_to_non_nullable
              as int,
      documento: null == documento
          ? _value.documento
          : documento // ignore: cast_nullable_to_non_nullable
              as String,
      cuota: null == cuota
          ? _value.cuota
          : cuota // ignore: cast_nullable_to_non_nullable
              as int,
      rubro: null == rubro
          ? _value.rubro
          : rubro // ignore: cast_nullable_to_non_nullable
              as String,
      valor: null == valor
          ? _value.valor
          : valor // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RubroMovimientoPrestamoModelImplCopyWith<$Res>
    implements $RubroMovimientoPrestamoModelCopyWith<$Res> {
  factory _$$RubroMovimientoPrestamoModelImplCopyWith(
          _$RubroMovimientoPrestamoModelImpl value,
          $Res Function(_$RubroMovimientoPrestamoModelImpl) then) =
      __$$RubroMovimientoPrestamoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int indice, String documento, int cuota, String rubro, double valor});
}

/// @nodoc
class __$$RubroMovimientoPrestamoModelImplCopyWithImpl<$Res>
    extends _$RubroMovimientoPrestamoModelCopyWithImpl<$Res,
        _$RubroMovimientoPrestamoModelImpl>
    implements _$$RubroMovimientoPrestamoModelImplCopyWith<$Res> {
  __$$RubroMovimientoPrestamoModelImplCopyWithImpl(
      _$RubroMovimientoPrestamoModelImpl _value,
      $Res Function(_$RubroMovimientoPrestamoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? indice = null,
    Object? documento = null,
    Object? cuota = null,
    Object? rubro = null,
    Object? valor = null,
  }) {
    return _then(_$RubroMovimientoPrestamoModelImpl(
      indice: null == indice
          ? _value.indice
          : indice // ignore: cast_nullable_to_non_nullable
              as int,
      documento: null == documento
          ? _value.documento
          : documento // ignore: cast_nullable_to_non_nullable
              as String,
      cuota: null == cuota
          ? _value.cuota
          : cuota // ignore: cast_nullable_to_non_nullable
              as int,
      rubro: null == rubro
          ? _value.rubro
          : rubro // ignore: cast_nullable_to_non_nullable
              as String,
      valor: null == valor
          ? _value.valor
          : valor // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RubroMovimientoPrestamoModelImpl
    implements _RubroMovimientoPrestamoModel {
  _$RubroMovimientoPrestamoModelImpl(
      {this.indice = 0,
      this.documento = '',
      this.cuota = 0,
      this.rubro = '',
      this.valor = 0.00});

  factory _$RubroMovimientoPrestamoModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RubroMovimientoPrestamoModelImplFromJson(json);

  @override
  @JsonKey()
  final int indice;
  @override
  @JsonKey()
  final String documento;
  @override
  @JsonKey()
  final int cuota;
  @override
  @JsonKey()
  final String rubro;
  @override
  @JsonKey()
  final double valor;

  @override
  String toString() {
    return 'RubroMovimientoPrestamoModel(indice: $indice, documento: $documento, cuota: $cuota, rubro: $rubro, valor: $valor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RubroMovimientoPrestamoModelImpl &&
            (identical(other.indice, indice) || other.indice == indice) &&
            (identical(other.documento, documento) ||
                other.documento == documento) &&
            (identical(other.cuota, cuota) || other.cuota == cuota) &&
            (identical(other.rubro, rubro) || other.rubro == rubro) &&
            (identical(other.valor, valor) || other.valor == valor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, indice, documento, cuota, rubro, valor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RubroMovimientoPrestamoModelImplCopyWith<
          _$RubroMovimientoPrestamoModelImpl>
      get copyWith => __$$RubroMovimientoPrestamoModelImplCopyWithImpl<
          _$RubroMovimientoPrestamoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RubroMovimientoPrestamoModelImplToJson(
      this,
    );
  }
}

abstract class _RubroMovimientoPrestamoModel
    implements RubroMovimientoPrestamoModel {
  factory _RubroMovimientoPrestamoModel(
      {final int indice,
      final String documento,
      final int cuota,
      final String rubro,
      final double valor}) = _$RubroMovimientoPrestamoModelImpl;

  factory _RubroMovimientoPrestamoModel.fromJson(Map<String, dynamic> json) =
      _$RubroMovimientoPrestamoModelImpl.fromJson;

  @override
  int get indice;
  @override
  String get documento;
  @override
  int get cuota;
  @override
  String get rubro;
  @override
  double get valor;
  @override
  @JsonKey(ignore: true)
  _$$RubroMovimientoPrestamoModelImplCopyWith<
          _$RubroMovimientoPrestamoModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultaMovimientosInversionRespuesta
    _$ConsultaMovimientosInversionRespuestaFromJson(Map<String, dynamic> json) {
  return _ConsultaMovimientosInversionRespuesta.fromJson(json);
}

/// @nodoc
mixin _$ConsultaMovimientosInversionRespuesta {
  List<MovimientoInversionModel> get movimientos =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConsultaMovimientosInversionRespuestaCopyWith<
          ConsultaMovimientosInversionRespuesta>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultaMovimientosInversionRespuestaCopyWith<$Res> {
  factory $ConsultaMovimientosInversionRespuestaCopyWith(
          ConsultaMovimientosInversionRespuesta value,
          $Res Function(ConsultaMovimientosInversionRespuesta) then) =
      _$ConsultaMovimientosInversionRespuestaCopyWithImpl<$Res,
          ConsultaMovimientosInversionRespuesta>;
  @useResult
  $Res call({List<MovimientoInversionModel> movimientos});
}

/// @nodoc
class _$ConsultaMovimientosInversionRespuestaCopyWithImpl<$Res,
        $Val extends ConsultaMovimientosInversionRespuesta>
    implements $ConsultaMovimientosInversionRespuestaCopyWith<$Res> {
  _$ConsultaMovimientosInversionRespuestaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movimientos = null,
  }) {
    return _then(_value.copyWith(
      movimientos: null == movimientos
          ? _value.movimientos
          : movimientos // ignore: cast_nullable_to_non_nullable
              as List<MovimientoInversionModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConsultaMovimientosInversionRespuestaImplCopyWith<$Res>
    implements $ConsultaMovimientosInversionRespuestaCopyWith<$Res> {
  factory _$$ConsultaMovimientosInversionRespuestaImplCopyWith(
          _$ConsultaMovimientosInversionRespuestaImpl value,
          $Res Function(_$ConsultaMovimientosInversionRespuestaImpl) then) =
      __$$ConsultaMovimientosInversionRespuestaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MovimientoInversionModel> movimientos});
}

/// @nodoc
class __$$ConsultaMovimientosInversionRespuestaImplCopyWithImpl<$Res>
    extends _$ConsultaMovimientosInversionRespuestaCopyWithImpl<$Res,
        _$ConsultaMovimientosInversionRespuestaImpl>
    implements _$$ConsultaMovimientosInversionRespuestaImplCopyWith<$Res> {
  __$$ConsultaMovimientosInversionRespuestaImplCopyWithImpl(
      _$ConsultaMovimientosInversionRespuestaImpl _value,
      $Res Function(_$ConsultaMovimientosInversionRespuestaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movimientos = null,
  }) {
    return _then(_$ConsultaMovimientosInversionRespuestaImpl(
      movimientos: null == movimientos
          ? _value._movimientos
          : movimientos // ignore: cast_nullable_to_non_nullable
              as List<MovimientoInversionModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultaMovimientosInversionRespuestaImpl
    implements _ConsultaMovimientosInversionRespuesta {
  _$ConsultaMovimientosInversionRespuestaImpl(
      {final List<MovimientoInversionModel> movimientos = const []})
      : _movimientos = movimientos;

  factory _$ConsultaMovimientosInversionRespuestaImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultaMovimientosInversionRespuestaImplFromJson(json);

  final List<MovimientoInversionModel> _movimientos;
  @override
  @JsonKey()
  List<MovimientoInversionModel> get movimientos {
    if (_movimientos is EqualUnmodifiableListView) return _movimientos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movimientos);
  }

  @override
  String toString() {
    return 'ConsultaMovimientosInversionRespuesta(movimientos: $movimientos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultaMovimientosInversionRespuestaImpl &&
            const DeepCollectionEquality()
                .equals(other._movimientos, _movimientos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_movimientos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultaMovimientosInversionRespuestaImplCopyWith<
          _$ConsultaMovimientosInversionRespuestaImpl>
      get copyWith => __$$ConsultaMovimientosInversionRespuestaImplCopyWithImpl<
          _$ConsultaMovimientosInversionRespuestaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultaMovimientosInversionRespuestaImplToJson(
      this,
    );
  }
}

abstract class _ConsultaMovimientosInversionRespuesta
    implements ConsultaMovimientosInversionRespuesta {
  factory _ConsultaMovimientosInversionRespuesta(
          {final List<MovimientoInversionModel> movimientos}) =
      _$ConsultaMovimientosInversionRespuestaImpl;

  factory _ConsultaMovimientosInversionRespuesta.fromJson(
          Map<String, dynamic> json) =
      _$ConsultaMovimientosInversionRespuestaImpl.fromJson;

  @override
  List<MovimientoInversionModel> get movimientos;
  @override
  @JsonKey(ignore: true)
  _$$ConsultaMovimientosInversionRespuestaImplCopyWith<
          _$ConsultaMovimientosInversionRespuestaImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MovimientoInversionModel _$MovimientoInversionModelFromJson(
    Map<String, dynamic> json) {
  return _MovimientoInversionModel.fromJson(json);
}

/// @nodoc
mixin _$MovimientoInversionModel {
  DateTime? get fecha => throw _privateConstructorUsedError;
  String get transaccion => throw _privateConstructorUsedError;
  double get valor => throw _privateConstructorUsedError;
  double get saldo => throw _privateConstructorUsedError;
  String get oficina => throw _privateConstructorUsedError;
  String get documento => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovimientoInversionModelCopyWith<MovimientoInversionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovimientoInversionModelCopyWith<$Res> {
  factory $MovimientoInversionModelCopyWith(MovimientoInversionModel value,
          $Res Function(MovimientoInversionModel) then) =
      _$MovimientoInversionModelCopyWithImpl<$Res, MovimientoInversionModel>;
  @useResult
  $Res call(
      {DateTime? fecha,
      String transaccion,
      double valor,
      double saldo,
      String oficina,
      String documento});
}

/// @nodoc
class _$MovimientoInversionModelCopyWithImpl<$Res,
        $Val extends MovimientoInversionModel>
    implements $MovimientoInversionModelCopyWith<$Res> {
  _$MovimientoInversionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fecha = freezed,
    Object? transaccion = null,
    Object? valor = null,
    Object? saldo = null,
    Object? oficina = null,
    Object? documento = null,
  }) {
    return _then(_value.copyWith(
      fecha: freezed == fecha
          ? _value.fecha
          : fecha // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      transaccion: null == transaccion
          ? _value.transaccion
          : transaccion // ignore: cast_nullable_to_non_nullable
              as String,
      valor: null == valor
          ? _value.valor
          : valor // ignore: cast_nullable_to_non_nullable
              as double,
      saldo: null == saldo
          ? _value.saldo
          : saldo // ignore: cast_nullable_to_non_nullable
              as double,
      oficina: null == oficina
          ? _value.oficina
          : oficina // ignore: cast_nullable_to_non_nullable
              as String,
      documento: null == documento
          ? _value.documento
          : documento // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovimientoInversionModelImplCopyWith<$Res>
    implements $MovimientoInversionModelCopyWith<$Res> {
  factory _$$MovimientoInversionModelImplCopyWith(
          _$MovimientoInversionModelImpl value,
          $Res Function(_$MovimientoInversionModelImpl) then) =
      __$$MovimientoInversionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? fecha,
      String transaccion,
      double valor,
      double saldo,
      String oficina,
      String documento});
}

/// @nodoc
class __$$MovimientoInversionModelImplCopyWithImpl<$Res>
    extends _$MovimientoInversionModelCopyWithImpl<$Res,
        _$MovimientoInversionModelImpl>
    implements _$$MovimientoInversionModelImplCopyWith<$Res> {
  __$$MovimientoInversionModelImplCopyWithImpl(
      _$MovimientoInversionModelImpl _value,
      $Res Function(_$MovimientoInversionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fecha = freezed,
    Object? transaccion = null,
    Object? valor = null,
    Object? saldo = null,
    Object? oficina = null,
    Object? documento = null,
  }) {
    return _then(_$MovimientoInversionModelImpl(
      fecha: freezed == fecha
          ? _value.fecha
          : fecha // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      transaccion: null == transaccion
          ? _value.transaccion
          : transaccion // ignore: cast_nullable_to_non_nullable
              as String,
      valor: null == valor
          ? _value.valor
          : valor // ignore: cast_nullable_to_non_nullable
              as double,
      saldo: null == saldo
          ? _value.saldo
          : saldo // ignore: cast_nullable_to_non_nullable
              as double,
      oficina: null == oficina
          ? _value.oficina
          : oficina // ignore: cast_nullable_to_non_nullable
              as String,
      documento: null == documento
          ? _value.documento
          : documento // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovimientoInversionModelImpl implements _MovimientoInversionModel {
  _$MovimientoInversionModelImpl(
      {this.fecha,
      this.transaccion = '',
      this.valor = 0.00,
      this.saldo = 0.00,
      this.oficina = '',
      this.documento = ''});

  factory _$MovimientoInversionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovimientoInversionModelImplFromJson(json);

  @override
  final DateTime? fecha;
  @override
  @JsonKey()
  final String transaccion;
  @override
  @JsonKey()
  final double valor;
  @override
  @JsonKey()
  final double saldo;
  @override
  @JsonKey()
  final String oficina;
  @override
  @JsonKey()
  final String documento;

  @override
  String toString() {
    return 'MovimientoInversionModel(fecha: $fecha, transaccion: $transaccion, valor: $valor, saldo: $saldo, oficina: $oficina, documento: $documento)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovimientoInversionModelImpl &&
            (identical(other.fecha, fecha) || other.fecha == fecha) &&
            (identical(other.transaccion, transaccion) ||
                other.transaccion == transaccion) &&
            (identical(other.valor, valor) || other.valor == valor) &&
            (identical(other.saldo, saldo) || other.saldo == saldo) &&
            (identical(other.oficina, oficina) || other.oficina == oficina) &&
            (identical(other.documento, documento) ||
                other.documento == documento));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, fecha, transaccion, valor, saldo, oficina, documento);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovimientoInversionModelImplCopyWith<_$MovimientoInversionModelImpl>
      get copyWith => __$$MovimientoInversionModelImplCopyWithImpl<
          _$MovimientoInversionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovimientoInversionModelImplToJson(
      this,
    );
  }
}

abstract class _MovimientoInversionModel implements MovimientoInversionModel {
  factory _MovimientoInversionModel(
      {final DateTime? fecha,
      final String transaccion,
      final double valor,
      final double saldo,
      final String oficina,
      final String documento}) = _$MovimientoInversionModelImpl;

  factory _MovimientoInversionModel.fromJson(Map<String, dynamic> json) =
      _$MovimientoInversionModelImpl.fromJson;

  @override
  DateTime? get fecha;
  @override
  String get transaccion;
  @override
  double get valor;
  @override
  double get saldo;
  @override
  String get oficina;
  @override
  String get documento;
  @override
  @JsonKey(ignore: true)
  _$$MovimientoInversionModelImplCopyWith<_$MovimientoInversionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultaDetallePrestamoRequerimiento
    _$ConsultaDetallePrestamoRequerimientoFromJson(Map<String, dynamic> json) {
  return _ConsultaDetallePrestamoRequerimiento.fromJson(json);
}

/// @nodoc
mixin _$ConsultaDetallePrestamoRequerimiento {
  String get codigoPrestamo => throw _privateConstructorUsedError;
  int get idUsuario => throw _privateConstructorUsedError;
  DateTime? get fechaInicio => throw _privateConstructorUsedError;
  DateTime? get fechaFin => throw _privateConstructorUsedError;
  int get numeroRegistros => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConsultaDetallePrestamoRequerimientoCopyWith<
          ConsultaDetallePrestamoRequerimiento>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultaDetallePrestamoRequerimientoCopyWith<$Res> {
  factory $ConsultaDetallePrestamoRequerimientoCopyWith(
          ConsultaDetallePrestamoRequerimiento value,
          $Res Function(ConsultaDetallePrestamoRequerimiento) then) =
      _$ConsultaDetallePrestamoRequerimientoCopyWithImpl<$Res,
          ConsultaDetallePrestamoRequerimiento>;
  @useResult
  $Res call(
      {String codigoPrestamo,
      int idUsuario,
      DateTime? fechaInicio,
      DateTime? fechaFin,
      int numeroRegistros});
}

/// @nodoc
class _$ConsultaDetallePrestamoRequerimientoCopyWithImpl<$Res,
        $Val extends ConsultaDetallePrestamoRequerimiento>
    implements $ConsultaDetallePrestamoRequerimientoCopyWith<$Res> {
  _$ConsultaDetallePrestamoRequerimientoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codigoPrestamo = null,
    Object? idUsuario = null,
    Object? fechaInicio = freezed,
    Object? fechaFin = freezed,
    Object? numeroRegistros = null,
  }) {
    return _then(_value.copyWith(
      codigoPrestamo: null == codigoPrestamo
          ? _value.codigoPrestamo
          : codigoPrestamo // ignore: cast_nullable_to_non_nullable
              as String,
      idUsuario: null == idUsuario
          ? _value.idUsuario
          : idUsuario // ignore: cast_nullable_to_non_nullable
              as int,
      fechaInicio: freezed == fechaInicio
          ? _value.fechaInicio
          : fechaInicio // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fechaFin: freezed == fechaFin
          ? _value.fechaFin
          : fechaFin // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      numeroRegistros: null == numeroRegistros
          ? _value.numeroRegistros
          : numeroRegistros // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConsultaDetallePrestamoRequerimientoImplCopyWith<$Res>
    implements $ConsultaDetallePrestamoRequerimientoCopyWith<$Res> {
  factory _$$ConsultaDetallePrestamoRequerimientoImplCopyWith(
          _$ConsultaDetallePrestamoRequerimientoImpl value,
          $Res Function(_$ConsultaDetallePrestamoRequerimientoImpl) then) =
      __$$ConsultaDetallePrestamoRequerimientoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String codigoPrestamo,
      int idUsuario,
      DateTime? fechaInicio,
      DateTime? fechaFin,
      int numeroRegistros});
}

/// @nodoc
class __$$ConsultaDetallePrestamoRequerimientoImplCopyWithImpl<$Res>
    extends _$ConsultaDetallePrestamoRequerimientoCopyWithImpl<$Res,
        _$ConsultaDetallePrestamoRequerimientoImpl>
    implements _$$ConsultaDetallePrestamoRequerimientoImplCopyWith<$Res> {
  __$$ConsultaDetallePrestamoRequerimientoImplCopyWithImpl(
      _$ConsultaDetallePrestamoRequerimientoImpl _value,
      $Res Function(_$ConsultaDetallePrestamoRequerimientoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codigoPrestamo = null,
    Object? idUsuario = null,
    Object? fechaInicio = freezed,
    Object? fechaFin = freezed,
    Object? numeroRegistros = null,
  }) {
    return _then(_$ConsultaDetallePrestamoRequerimientoImpl(
      codigoPrestamo: null == codigoPrestamo
          ? _value.codigoPrestamo
          : codigoPrestamo // ignore: cast_nullable_to_non_nullable
              as String,
      idUsuario: null == idUsuario
          ? _value.idUsuario
          : idUsuario // ignore: cast_nullable_to_non_nullable
              as int,
      fechaInicio: freezed == fechaInicio
          ? _value.fechaInicio
          : fechaInicio // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fechaFin: freezed == fechaFin
          ? _value.fechaFin
          : fechaFin // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      numeroRegistros: null == numeroRegistros
          ? _value.numeroRegistros
          : numeroRegistros // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultaDetallePrestamoRequerimientoImpl
    implements _ConsultaDetallePrestamoRequerimiento {
  _$ConsultaDetallePrestamoRequerimientoImpl(
      {this.codigoPrestamo = '',
      this.idUsuario = 0,
      this.fechaInicio,
      this.fechaFin,
      this.numeroRegistros = 0});

  factory _$ConsultaDetallePrestamoRequerimientoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultaDetallePrestamoRequerimientoImplFromJson(json);

  @override
  @JsonKey()
  final String codigoPrestamo;
  @override
  @JsonKey()
  final int idUsuario;
  @override
  final DateTime? fechaInicio;
  @override
  final DateTime? fechaFin;
  @override
  @JsonKey()
  final int numeroRegistros;

  @override
  String toString() {
    return 'ConsultaDetallePrestamoRequerimiento(codigoPrestamo: $codigoPrestamo, idUsuario: $idUsuario, fechaInicio: $fechaInicio, fechaFin: $fechaFin, numeroRegistros: $numeroRegistros)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultaDetallePrestamoRequerimientoImpl &&
            (identical(other.codigoPrestamo, codigoPrestamo) ||
                other.codigoPrestamo == codigoPrestamo) &&
            (identical(other.idUsuario, idUsuario) ||
                other.idUsuario == idUsuario) &&
            (identical(other.fechaInicio, fechaInicio) ||
                other.fechaInicio == fechaInicio) &&
            (identical(other.fechaFin, fechaFin) ||
                other.fechaFin == fechaFin) &&
            (identical(other.numeroRegistros, numeroRegistros) ||
                other.numeroRegistros == numeroRegistros));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, codigoPrestamo, idUsuario,
      fechaInicio, fechaFin, numeroRegistros);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultaDetallePrestamoRequerimientoImplCopyWith<
          _$ConsultaDetallePrestamoRequerimientoImpl>
      get copyWith => __$$ConsultaDetallePrestamoRequerimientoImplCopyWithImpl<
          _$ConsultaDetallePrestamoRequerimientoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultaDetallePrestamoRequerimientoImplToJson(
      this,
    );
  }
}

abstract class _ConsultaDetallePrestamoRequerimiento
    implements ConsultaDetallePrestamoRequerimiento {
  factory _ConsultaDetallePrestamoRequerimiento(
      {final String codigoPrestamo,
      final int idUsuario,
      final DateTime? fechaInicio,
      final DateTime? fechaFin,
      final int numeroRegistros}) = _$ConsultaDetallePrestamoRequerimientoImpl;

  factory _ConsultaDetallePrestamoRequerimiento.fromJson(
          Map<String, dynamic> json) =
      _$ConsultaDetallePrestamoRequerimientoImpl.fromJson;

  @override
  String get codigoPrestamo;
  @override
  int get idUsuario;
  @override
  DateTime? get fechaInicio;
  @override
  DateTime? get fechaFin;
  @override
  int get numeroRegistros;
  @override
  @JsonKey(ignore: true)
  _$$ConsultaDetallePrestamoRequerimientoImplCopyWith<
          _$ConsultaDetallePrestamoRequerimientoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultaDetalePrestamoRespuesta _$ConsultaDetalePrestamoRespuestaFromJson(
    Map<String, dynamic> json) {
  return _ConsultaDetalePrestamoRespuesta.fromJson(json);
}

/// @nodoc
mixin _$ConsultaDetalePrestamoRespuesta {
  InformacionPrestamo? get informacionPrestamo =>
      throw _privateConstructorUsedError;
  List<DetallePrestamo> get detalles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConsultaDetalePrestamoRespuestaCopyWith<ConsultaDetalePrestamoRespuesta>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultaDetalePrestamoRespuestaCopyWith<$Res> {
  factory $ConsultaDetalePrestamoRespuestaCopyWith(
          ConsultaDetalePrestamoRespuesta value,
          $Res Function(ConsultaDetalePrestamoRespuesta) then) =
      _$ConsultaDetalePrestamoRespuestaCopyWithImpl<$Res,
          ConsultaDetalePrestamoRespuesta>;
  @useResult
  $Res call(
      {InformacionPrestamo? informacionPrestamo,
      List<DetallePrestamo> detalles});

  $InformacionPrestamoCopyWith<$Res>? get informacionPrestamo;
}

/// @nodoc
class _$ConsultaDetalePrestamoRespuestaCopyWithImpl<$Res,
        $Val extends ConsultaDetalePrestamoRespuesta>
    implements $ConsultaDetalePrestamoRespuestaCopyWith<$Res> {
  _$ConsultaDetalePrestamoRespuestaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? informacionPrestamo = freezed,
    Object? detalles = null,
  }) {
    return _then(_value.copyWith(
      informacionPrestamo: freezed == informacionPrestamo
          ? _value.informacionPrestamo
          : informacionPrestamo // ignore: cast_nullable_to_non_nullable
              as InformacionPrestamo?,
      detalles: null == detalles
          ? _value.detalles
          : detalles // ignore: cast_nullable_to_non_nullable
              as List<DetallePrestamo>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InformacionPrestamoCopyWith<$Res>? get informacionPrestamo {
    if (_value.informacionPrestamo == null) {
      return null;
    }

    return $InformacionPrestamoCopyWith<$Res>(_value.informacionPrestamo!,
        (value) {
      return _then(_value.copyWith(informacionPrestamo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConsultaDetalePrestamoRespuestaImplCopyWith<$Res>
    implements $ConsultaDetalePrestamoRespuestaCopyWith<$Res> {
  factory _$$ConsultaDetalePrestamoRespuestaImplCopyWith(
          _$ConsultaDetalePrestamoRespuestaImpl value,
          $Res Function(_$ConsultaDetalePrestamoRespuestaImpl) then) =
      __$$ConsultaDetalePrestamoRespuestaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {InformacionPrestamo? informacionPrestamo,
      List<DetallePrestamo> detalles});

  @override
  $InformacionPrestamoCopyWith<$Res>? get informacionPrestamo;
}

/// @nodoc
class __$$ConsultaDetalePrestamoRespuestaImplCopyWithImpl<$Res>
    extends _$ConsultaDetalePrestamoRespuestaCopyWithImpl<$Res,
        _$ConsultaDetalePrestamoRespuestaImpl>
    implements _$$ConsultaDetalePrestamoRespuestaImplCopyWith<$Res> {
  __$$ConsultaDetalePrestamoRespuestaImplCopyWithImpl(
      _$ConsultaDetalePrestamoRespuestaImpl _value,
      $Res Function(_$ConsultaDetalePrestamoRespuestaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? informacionPrestamo = freezed,
    Object? detalles = null,
  }) {
    return _then(_$ConsultaDetalePrestamoRespuestaImpl(
      informacionPrestamo: freezed == informacionPrestamo
          ? _value.informacionPrestamo
          : informacionPrestamo // ignore: cast_nullable_to_non_nullable
              as InformacionPrestamo?,
      detalles: null == detalles
          ? _value._detalles
          : detalles // ignore: cast_nullable_to_non_nullable
              as List<DetallePrestamo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultaDetalePrestamoRespuestaImpl
    implements _ConsultaDetalePrestamoRespuesta {
  _$ConsultaDetalePrestamoRespuestaImpl(
      {this.informacionPrestamo,
      final List<DetallePrestamo> detalles = const []})
      : _detalles = detalles;

  factory _$ConsultaDetalePrestamoRespuestaImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultaDetalePrestamoRespuestaImplFromJson(json);

  @override
  final InformacionPrestamo? informacionPrestamo;
  final List<DetallePrestamo> _detalles;
  @override
  @JsonKey()
  List<DetallePrestamo> get detalles {
    if (_detalles is EqualUnmodifiableListView) return _detalles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_detalles);
  }

  @override
  String toString() {
    return 'ConsultaDetalePrestamoRespuesta(informacionPrestamo: $informacionPrestamo, detalles: $detalles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultaDetalePrestamoRespuestaImpl &&
            (identical(other.informacionPrestamo, informacionPrestamo) ||
                other.informacionPrestamo == informacionPrestamo) &&
            const DeepCollectionEquality().equals(other._detalles, _detalles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, informacionPrestamo,
      const DeepCollectionEquality().hash(_detalles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultaDetalePrestamoRespuestaImplCopyWith<
          _$ConsultaDetalePrestamoRespuestaImpl>
      get copyWith => __$$ConsultaDetalePrestamoRespuestaImplCopyWithImpl<
          _$ConsultaDetalePrestamoRespuestaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultaDetalePrestamoRespuestaImplToJson(
      this,
    );
  }
}

abstract class _ConsultaDetalePrestamoRespuesta
    implements ConsultaDetalePrestamoRespuesta {
  factory _ConsultaDetalePrestamoRespuesta(
          {final InformacionPrestamo? informacionPrestamo,
          final List<DetallePrestamo> detalles}) =
      _$ConsultaDetalePrestamoRespuestaImpl;

  factory _ConsultaDetalePrestamoRespuesta.fromJson(Map<String, dynamic> json) =
      _$ConsultaDetalePrestamoRespuestaImpl.fromJson;

  @override
  InformacionPrestamo? get informacionPrestamo;
  @override
  List<DetallePrestamo> get detalles;
  @override
  @JsonKey(ignore: true)
  _$$ConsultaDetalePrestamoRespuestaImplCopyWith<
          _$ConsultaDetalePrestamoRespuestaImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InformacionPrestamo _$InformacionPrestamoFromJson(Map<String, dynamic> json) {
  return _InformacionPrestamo.fromJson(json);
}

/// @nodoc
mixin _$InformacionPrestamo {
  double get deudaInicial => throw _privateConstructorUsedError;
  double get saldo => throw _privateConstructorUsedError;
  double get valorDia => throw _privateConstructorUsedError;
  double get valorCuota => throw _privateConstructorUsedError;
  double get valorHastaCuota => throw _privateConstructorUsedError;
  double get valorCancelarPrestamo => throw _privateConstructorUsedError;
  DateTime? get fechaAdjudicacion => throw _privateConstructorUsedError;
  int get cuotasVencidas => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InformacionPrestamoCopyWith<InformacionPrestamo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InformacionPrestamoCopyWith<$Res> {
  factory $InformacionPrestamoCopyWith(
          InformacionPrestamo value, $Res Function(InformacionPrestamo) then) =
      _$InformacionPrestamoCopyWithImpl<$Res, InformacionPrestamo>;
  @useResult
  $Res call(
      {double deudaInicial,
      double saldo,
      double valorDia,
      double valorCuota,
      double valorHastaCuota,
      double valorCancelarPrestamo,
      DateTime? fechaAdjudicacion,
      int cuotasVencidas});
}

/// @nodoc
class _$InformacionPrestamoCopyWithImpl<$Res, $Val extends InformacionPrestamo>
    implements $InformacionPrestamoCopyWith<$Res> {
  _$InformacionPrestamoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deudaInicial = null,
    Object? saldo = null,
    Object? valorDia = null,
    Object? valorCuota = null,
    Object? valorHastaCuota = null,
    Object? valorCancelarPrestamo = null,
    Object? fechaAdjudicacion = freezed,
    Object? cuotasVencidas = null,
  }) {
    return _then(_value.copyWith(
      deudaInicial: null == deudaInicial
          ? _value.deudaInicial
          : deudaInicial // ignore: cast_nullable_to_non_nullable
              as double,
      saldo: null == saldo
          ? _value.saldo
          : saldo // ignore: cast_nullable_to_non_nullable
              as double,
      valorDia: null == valorDia
          ? _value.valorDia
          : valorDia // ignore: cast_nullable_to_non_nullable
              as double,
      valorCuota: null == valorCuota
          ? _value.valorCuota
          : valorCuota // ignore: cast_nullable_to_non_nullable
              as double,
      valorHastaCuota: null == valorHastaCuota
          ? _value.valorHastaCuota
          : valorHastaCuota // ignore: cast_nullable_to_non_nullable
              as double,
      valorCancelarPrestamo: null == valorCancelarPrestamo
          ? _value.valorCancelarPrestamo
          : valorCancelarPrestamo // ignore: cast_nullable_to_non_nullable
              as double,
      fechaAdjudicacion: freezed == fechaAdjudicacion
          ? _value.fechaAdjudicacion
          : fechaAdjudicacion // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cuotasVencidas: null == cuotasVencidas
          ? _value.cuotasVencidas
          : cuotasVencidas // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InformacionPrestamoImplCopyWith<$Res>
    implements $InformacionPrestamoCopyWith<$Res> {
  factory _$$InformacionPrestamoImplCopyWith(_$InformacionPrestamoImpl value,
          $Res Function(_$InformacionPrestamoImpl) then) =
      __$$InformacionPrestamoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double deudaInicial,
      double saldo,
      double valorDia,
      double valorCuota,
      double valorHastaCuota,
      double valorCancelarPrestamo,
      DateTime? fechaAdjudicacion,
      int cuotasVencidas});
}

/// @nodoc
class __$$InformacionPrestamoImplCopyWithImpl<$Res>
    extends _$InformacionPrestamoCopyWithImpl<$Res, _$InformacionPrestamoImpl>
    implements _$$InformacionPrestamoImplCopyWith<$Res> {
  __$$InformacionPrestamoImplCopyWithImpl(_$InformacionPrestamoImpl _value,
      $Res Function(_$InformacionPrestamoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deudaInicial = null,
    Object? saldo = null,
    Object? valorDia = null,
    Object? valorCuota = null,
    Object? valorHastaCuota = null,
    Object? valorCancelarPrestamo = null,
    Object? fechaAdjudicacion = freezed,
    Object? cuotasVencidas = null,
  }) {
    return _then(_$InformacionPrestamoImpl(
      deudaInicial: null == deudaInicial
          ? _value.deudaInicial
          : deudaInicial // ignore: cast_nullable_to_non_nullable
              as double,
      saldo: null == saldo
          ? _value.saldo
          : saldo // ignore: cast_nullable_to_non_nullable
              as double,
      valorDia: null == valorDia
          ? _value.valorDia
          : valorDia // ignore: cast_nullable_to_non_nullable
              as double,
      valorCuota: null == valorCuota
          ? _value.valorCuota
          : valorCuota // ignore: cast_nullable_to_non_nullable
              as double,
      valorHastaCuota: null == valorHastaCuota
          ? _value.valorHastaCuota
          : valorHastaCuota // ignore: cast_nullable_to_non_nullable
              as double,
      valorCancelarPrestamo: null == valorCancelarPrestamo
          ? _value.valorCancelarPrestamo
          : valorCancelarPrestamo // ignore: cast_nullable_to_non_nullable
              as double,
      fechaAdjudicacion: freezed == fechaAdjudicacion
          ? _value.fechaAdjudicacion
          : fechaAdjudicacion // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cuotasVencidas: null == cuotasVencidas
          ? _value.cuotasVencidas
          : cuotasVencidas // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InformacionPrestamoImpl implements _InformacionPrestamo {
  _$InformacionPrestamoImpl(
      {this.deudaInicial = 0.00,
      this.saldo = 0.00,
      this.valorDia = 0.00,
      this.valorCuota = 0.00,
      this.valorHastaCuota = 0.00,
      this.valorCancelarPrestamo = 0.00,
      this.fechaAdjudicacion,
      this.cuotasVencidas = 0});

  factory _$InformacionPrestamoImpl.fromJson(Map<String, dynamic> json) =>
      _$$InformacionPrestamoImplFromJson(json);

  @override
  @JsonKey()
  final double deudaInicial;
  @override
  @JsonKey()
  final double saldo;
  @override
  @JsonKey()
  final double valorDia;
  @override
  @JsonKey()
  final double valorCuota;
  @override
  @JsonKey()
  final double valorHastaCuota;
  @override
  @JsonKey()
  final double valorCancelarPrestamo;
  @override
  final DateTime? fechaAdjudicacion;
  @override
  @JsonKey()
  final int cuotasVencidas;

  @override
  String toString() {
    return 'InformacionPrestamo(deudaInicial: $deudaInicial, saldo: $saldo, valorDia: $valorDia, valorCuota: $valorCuota, valorHastaCuota: $valorHastaCuota, valorCancelarPrestamo: $valorCancelarPrestamo, fechaAdjudicacion: $fechaAdjudicacion, cuotasVencidas: $cuotasVencidas)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InformacionPrestamoImpl &&
            (identical(other.deudaInicial, deudaInicial) ||
                other.deudaInicial == deudaInicial) &&
            (identical(other.saldo, saldo) || other.saldo == saldo) &&
            (identical(other.valorDia, valorDia) ||
                other.valorDia == valorDia) &&
            (identical(other.valorCuota, valorCuota) ||
                other.valorCuota == valorCuota) &&
            (identical(other.valorHastaCuota, valorHastaCuota) ||
                other.valorHastaCuota == valorHastaCuota) &&
            (identical(other.valorCancelarPrestamo, valorCancelarPrestamo) ||
                other.valorCancelarPrestamo == valorCancelarPrestamo) &&
            (identical(other.fechaAdjudicacion, fechaAdjudicacion) ||
                other.fechaAdjudicacion == fechaAdjudicacion) &&
            (identical(other.cuotasVencidas, cuotasVencidas) ||
                other.cuotasVencidas == cuotasVencidas));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      deudaInicial,
      saldo,
      valorDia,
      valorCuota,
      valorHastaCuota,
      valorCancelarPrestamo,
      fechaAdjudicacion,
      cuotasVencidas);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InformacionPrestamoImplCopyWith<_$InformacionPrestamoImpl> get copyWith =>
      __$$InformacionPrestamoImplCopyWithImpl<_$InformacionPrestamoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InformacionPrestamoImplToJson(
      this,
    );
  }
}

abstract class _InformacionPrestamo implements InformacionPrestamo {
  factory _InformacionPrestamo(
      {final double deudaInicial,
      final double saldo,
      final double valorDia,
      final double valorCuota,
      final double valorHastaCuota,
      final double valorCancelarPrestamo,
      final DateTime? fechaAdjudicacion,
      final int cuotasVencidas}) = _$InformacionPrestamoImpl;

  factory _InformacionPrestamo.fromJson(Map<String, dynamic> json) =
      _$InformacionPrestamoImpl.fromJson;

  @override
  double get deudaInicial;
  @override
  double get saldo;
  @override
  double get valorDia;
  @override
  double get valorCuota;
  @override
  double get valorHastaCuota;
  @override
  double get valorCancelarPrestamo;
  @override
  DateTime? get fechaAdjudicacion;
  @override
  int get cuotasVencidas;
  @override
  @JsonKey(ignore: true)
  _$$InformacionPrestamoImplCopyWith<_$InformacionPrestamoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DetallePrestamo _$DetallePrestamoFromJson(Map<String, dynamic> json) {
  return _DetallePrestamo.fromJson(json);
}

/// @nodoc
mixin _$DetallePrestamo {
  DateTime? get fechaVencimiento => throw _privateConstructorUsedError;
  int get numeroCuota => throw _privateConstructorUsedError;
  double get saldoAdeudado => throw _privateConstructorUsedError;
  double get capital => throw _privateConstructorUsedError;
  double get interes => throw _privateConstructorUsedError;
  double get mora => throw _privateConstructorUsedError;
  double get extrajudicial => throw _privateConstructorUsedError;
  double get judicial => throw _privateConstructorUsedError;
  double get otros => throw _privateConstructorUsedError;
  double get total => throw _privateConstructorUsedError;
  String get fechaPago => throw _privateConstructorUsedError;
  double get diasMora => throw _privateConstructorUsedError;
  String get estado => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetallePrestamoCopyWith<DetallePrestamo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetallePrestamoCopyWith<$Res> {
  factory $DetallePrestamoCopyWith(
          DetallePrestamo value, $Res Function(DetallePrestamo) then) =
      _$DetallePrestamoCopyWithImpl<$Res, DetallePrestamo>;
  @useResult
  $Res call(
      {DateTime? fechaVencimiento,
      int numeroCuota,
      double saldoAdeudado,
      double capital,
      double interes,
      double mora,
      double extrajudicial,
      double judicial,
      double otros,
      double total,
      String fechaPago,
      double diasMora,
      String estado});
}

/// @nodoc
class _$DetallePrestamoCopyWithImpl<$Res, $Val extends DetallePrestamo>
    implements $DetallePrestamoCopyWith<$Res> {
  _$DetallePrestamoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fechaVencimiento = freezed,
    Object? numeroCuota = null,
    Object? saldoAdeudado = null,
    Object? capital = null,
    Object? interes = null,
    Object? mora = null,
    Object? extrajudicial = null,
    Object? judicial = null,
    Object? otros = null,
    Object? total = null,
    Object? fechaPago = null,
    Object? diasMora = null,
    Object? estado = null,
  }) {
    return _then(_value.copyWith(
      fechaVencimiento: freezed == fechaVencimiento
          ? _value.fechaVencimiento
          : fechaVencimiento // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      numeroCuota: null == numeroCuota
          ? _value.numeroCuota
          : numeroCuota // ignore: cast_nullable_to_non_nullable
              as int,
      saldoAdeudado: null == saldoAdeudado
          ? _value.saldoAdeudado
          : saldoAdeudado // ignore: cast_nullable_to_non_nullable
              as double,
      capital: null == capital
          ? _value.capital
          : capital // ignore: cast_nullable_to_non_nullable
              as double,
      interes: null == interes
          ? _value.interes
          : interes // ignore: cast_nullable_to_non_nullable
              as double,
      mora: null == mora
          ? _value.mora
          : mora // ignore: cast_nullable_to_non_nullable
              as double,
      extrajudicial: null == extrajudicial
          ? _value.extrajudicial
          : extrajudicial // ignore: cast_nullable_to_non_nullable
              as double,
      judicial: null == judicial
          ? _value.judicial
          : judicial // ignore: cast_nullable_to_non_nullable
              as double,
      otros: null == otros
          ? _value.otros
          : otros // ignore: cast_nullable_to_non_nullable
              as double,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      fechaPago: null == fechaPago
          ? _value.fechaPago
          : fechaPago // ignore: cast_nullable_to_non_nullable
              as String,
      diasMora: null == diasMora
          ? _value.diasMora
          : diasMora // ignore: cast_nullable_to_non_nullable
              as double,
      estado: null == estado
          ? _value.estado
          : estado // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetallePrestamoImplCopyWith<$Res>
    implements $DetallePrestamoCopyWith<$Res> {
  factory _$$DetallePrestamoImplCopyWith(_$DetallePrestamoImpl value,
          $Res Function(_$DetallePrestamoImpl) then) =
      __$$DetallePrestamoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? fechaVencimiento,
      int numeroCuota,
      double saldoAdeudado,
      double capital,
      double interes,
      double mora,
      double extrajudicial,
      double judicial,
      double otros,
      double total,
      String fechaPago,
      double diasMora,
      String estado});
}

/// @nodoc
class __$$DetallePrestamoImplCopyWithImpl<$Res>
    extends _$DetallePrestamoCopyWithImpl<$Res, _$DetallePrestamoImpl>
    implements _$$DetallePrestamoImplCopyWith<$Res> {
  __$$DetallePrestamoImplCopyWithImpl(
      _$DetallePrestamoImpl _value, $Res Function(_$DetallePrestamoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fechaVencimiento = freezed,
    Object? numeroCuota = null,
    Object? saldoAdeudado = null,
    Object? capital = null,
    Object? interes = null,
    Object? mora = null,
    Object? extrajudicial = null,
    Object? judicial = null,
    Object? otros = null,
    Object? total = null,
    Object? fechaPago = null,
    Object? diasMora = null,
    Object? estado = null,
  }) {
    return _then(_$DetallePrestamoImpl(
      fechaVencimiento: freezed == fechaVencimiento
          ? _value.fechaVencimiento
          : fechaVencimiento // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      numeroCuota: null == numeroCuota
          ? _value.numeroCuota
          : numeroCuota // ignore: cast_nullable_to_non_nullable
              as int,
      saldoAdeudado: null == saldoAdeudado
          ? _value.saldoAdeudado
          : saldoAdeudado // ignore: cast_nullable_to_non_nullable
              as double,
      capital: null == capital
          ? _value.capital
          : capital // ignore: cast_nullable_to_non_nullable
              as double,
      interes: null == interes
          ? _value.interes
          : interes // ignore: cast_nullable_to_non_nullable
              as double,
      mora: null == mora
          ? _value.mora
          : mora // ignore: cast_nullable_to_non_nullable
              as double,
      extrajudicial: null == extrajudicial
          ? _value.extrajudicial
          : extrajudicial // ignore: cast_nullable_to_non_nullable
              as double,
      judicial: null == judicial
          ? _value.judicial
          : judicial // ignore: cast_nullable_to_non_nullable
              as double,
      otros: null == otros
          ? _value.otros
          : otros // ignore: cast_nullable_to_non_nullable
              as double,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      fechaPago: null == fechaPago
          ? _value.fechaPago
          : fechaPago // ignore: cast_nullable_to_non_nullable
              as String,
      diasMora: null == diasMora
          ? _value.diasMora
          : diasMora // ignore: cast_nullable_to_non_nullable
              as double,
      estado: null == estado
          ? _value.estado
          : estado // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetallePrestamoImpl implements _DetallePrestamo {
  _$DetallePrestamoImpl(
      {this.fechaVencimiento,
      this.numeroCuota = 0,
      this.saldoAdeudado = 0.00,
      this.capital = 0.00,
      this.interes = 0.00,
      this.mora = 0.00,
      this.extrajudicial = 0.00,
      this.judicial = 0.00,
      this.otros = 0.00,
      this.total = 0.00,
      this.fechaPago = '',
      this.diasMora = 0.00,
      this.estado = ''});

  factory _$DetallePrestamoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetallePrestamoImplFromJson(json);

  @override
  final DateTime? fechaVencimiento;
  @override
  @JsonKey()
  final int numeroCuota;
  @override
  @JsonKey()
  final double saldoAdeudado;
  @override
  @JsonKey()
  final double capital;
  @override
  @JsonKey()
  final double interes;
  @override
  @JsonKey()
  final double mora;
  @override
  @JsonKey()
  final double extrajudicial;
  @override
  @JsonKey()
  final double judicial;
  @override
  @JsonKey()
  final double otros;
  @override
  @JsonKey()
  final double total;
  @override
  @JsonKey()
  final String fechaPago;
  @override
  @JsonKey()
  final double diasMora;
  @override
  @JsonKey()
  final String estado;

  @override
  String toString() {
    return 'DetallePrestamo(fechaVencimiento: $fechaVencimiento, numeroCuota: $numeroCuota, saldoAdeudado: $saldoAdeudado, capital: $capital, interes: $interes, mora: $mora, extrajudicial: $extrajudicial, judicial: $judicial, otros: $otros, total: $total, fechaPago: $fechaPago, diasMora: $diasMora, estado: $estado)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetallePrestamoImpl &&
            (identical(other.fechaVencimiento, fechaVencimiento) ||
                other.fechaVencimiento == fechaVencimiento) &&
            (identical(other.numeroCuota, numeroCuota) ||
                other.numeroCuota == numeroCuota) &&
            (identical(other.saldoAdeudado, saldoAdeudado) ||
                other.saldoAdeudado == saldoAdeudado) &&
            (identical(other.capital, capital) || other.capital == capital) &&
            (identical(other.interes, interes) || other.interes == interes) &&
            (identical(other.mora, mora) || other.mora == mora) &&
            (identical(other.extrajudicial, extrajudicial) ||
                other.extrajudicial == extrajudicial) &&
            (identical(other.judicial, judicial) ||
                other.judicial == judicial) &&
            (identical(other.otros, otros) || other.otros == otros) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.fechaPago, fechaPago) ||
                other.fechaPago == fechaPago) &&
            (identical(other.diasMora, diasMora) ||
                other.diasMora == diasMora) &&
            (identical(other.estado, estado) || other.estado == estado));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      fechaVencimiento,
      numeroCuota,
      saldoAdeudado,
      capital,
      interes,
      mora,
      extrajudicial,
      judicial,
      otros,
      total,
      fechaPago,
      diasMora,
      estado);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetallePrestamoImplCopyWith<_$DetallePrestamoImpl> get copyWith =>
      __$$DetallePrestamoImplCopyWithImpl<_$DetallePrestamoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetallePrestamoImplToJson(
      this,
    );
  }
}

abstract class _DetallePrestamo implements DetallePrestamo {
  factory _DetallePrestamo(
      {final DateTime? fechaVencimiento,
      final int numeroCuota,
      final double saldoAdeudado,
      final double capital,
      final double interes,
      final double mora,
      final double extrajudicial,
      final double judicial,
      final double otros,
      final double total,
      final String fechaPago,
      final double diasMora,
      final String estado}) = _$DetallePrestamoImpl;

  factory _DetallePrestamo.fromJson(Map<String, dynamic> json) =
      _$DetallePrestamoImpl.fromJson;

  @override
  DateTime? get fechaVencimiento;
  @override
  int get numeroCuota;
  @override
  double get saldoAdeudado;
  @override
  double get capital;
  @override
  double get interes;
  @override
  double get mora;
  @override
  double get extrajudicial;
  @override
  double get judicial;
  @override
  double get otros;
  @override
  double get total;
  @override
  String get fechaPago;
  @override
  double get diasMora;
  @override
  String get estado;
  @override
  @JsonKey(ignore: true)
  _$$DetallePrestamoImplCopyWith<_$DetallePrestamoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ConsultaBeneficiarioRequerimiento _$ConsultaBeneficiarioRequerimientoFromJson(
    Map<String, dynamic> json) {
  return _ConsultaBeneficiarioRequerimiento.fromJson(json);
}

/// @nodoc
mixin _$ConsultaBeneficiarioRequerimiento {
  String get numeroCuenta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConsultaBeneficiarioRequerimientoCopyWith<ConsultaBeneficiarioRequerimiento>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultaBeneficiarioRequerimientoCopyWith<$Res> {
  factory $ConsultaBeneficiarioRequerimientoCopyWith(
          ConsultaBeneficiarioRequerimiento value,
          $Res Function(ConsultaBeneficiarioRequerimiento) then) =
      _$ConsultaBeneficiarioRequerimientoCopyWithImpl<$Res,
          ConsultaBeneficiarioRequerimiento>;
  @useResult
  $Res call({String numeroCuenta});
}

/// @nodoc
class _$ConsultaBeneficiarioRequerimientoCopyWithImpl<$Res,
        $Val extends ConsultaBeneficiarioRequerimiento>
    implements $ConsultaBeneficiarioRequerimientoCopyWith<$Res> {
  _$ConsultaBeneficiarioRequerimientoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numeroCuenta = null,
  }) {
    return _then(_value.copyWith(
      numeroCuenta: null == numeroCuenta
          ? _value.numeroCuenta
          : numeroCuenta // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConsultaBeneficiarioRequerimientoImplCopyWith<$Res>
    implements $ConsultaBeneficiarioRequerimientoCopyWith<$Res> {
  factory _$$ConsultaBeneficiarioRequerimientoImplCopyWith(
          _$ConsultaBeneficiarioRequerimientoImpl value,
          $Res Function(_$ConsultaBeneficiarioRequerimientoImpl) then) =
      __$$ConsultaBeneficiarioRequerimientoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String numeroCuenta});
}

/// @nodoc
class __$$ConsultaBeneficiarioRequerimientoImplCopyWithImpl<$Res>
    extends _$ConsultaBeneficiarioRequerimientoCopyWithImpl<$Res,
        _$ConsultaBeneficiarioRequerimientoImpl>
    implements _$$ConsultaBeneficiarioRequerimientoImplCopyWith<$Res> {
  __$$ConsultaBeneficiarioRequerimientoImplCopyWithImpl(
      _$ConsultaBeneficiarioRequerimientoImpl _value,
      $Res Function(_$ConsultaBeneficiarioRequerimientoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numeroCuenta = null,
  }) {
    return _then(_$ConsultaBeneficiarioRequerimientoImpl(
      numeroCuenta: null == numeroCuenta
          ? _value.numeroCuenta
          : numeroCuenta // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultaBeneficiarioRequerimientoImpl
    implements _ConsultaBeneficiarioRequerimiento {
  _$ConsultaBeneficiarioRequerimientoImpl({this.numeroCuenta = ''});

  factory _$ConsultaBeneficiarioRequerimientoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultaBeneficiarioRequerimientoImplFromJson(json);

  @override
  @JsonKey()
  final String numeroCuenta;

  @override
  String toString() {
    return 'ConsultaBeneficiarioRequerimiento(numeroCuenta: $numeroCuenta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultaBeneficiarioRequerimientoImpl &&
            (identical(other.numeroCuenta, numeroCuenta) ||
                other.numeroCuenta == numeroCuenta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, numeroCuenta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultaBeneficiarioRequerimientoImplCopyWith<
          _$ConsultaBeneficiarioRequerimientoImpl>
      get copyWith => __$$ConsultaBeneficiarioRequerimientoImplCopyWithImpl<
          _$ConsultaBeneficiarioRequerimientoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultaBeneficiarioRequerimientoImplToJson(
      this,
    );
  }
}

abstract class _ConsultaBeneficiarioRequerimiento
    implements ConsultaBeneficiarioRequerimiento {
  factory _ConsultaBeneficiarioRequerimiento({final String numeroCuenta}) =
      _$ConsultaBeneficiarioRequerimientoImpl;

  factory _ConsultaBeneficiarioRequerimiento.fromJson(
          Map<String, dynamic> json) =
      _$ConsultaBeneficiarioRequerimientoImpl.fromJson;

  @override
  String get numeroCuenta;
  @override
  @JsonKey(ignore: true)
  _$$ConsultaBeneficiarioRequerimientoImplCopyWith<
          _$ConsultaBeneficiarioRequerimientoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BeneficiarioModel _$BeneficiarioModelFromJson(Map<String, dynamic> json) {
  return _BeneficiarioModel.fromJson(json);
}

/// @nodoc
mixin _$BeneficiarioModel {
  int get id => throw _privateConstructorUsedError;
  int get idUsuario => throw _privateConstructorUsedError;
  String get codigoTipoId => throw _privateConstructorUsedError;
  String get identificacion => throw _privateConstructorUsedError;
  String get nombre => throw _privateConstructorUsedError;
  String get apellido => throw _privateConstructorUsedError;
  String get codigoTipoInstitucion => throw _privateConstructorUsedError;
  String get tipoInstitucion => throw _privateConstructorUsedError;
  int get idInstitucion => throw _privateConstructorUsedError;
  String get institucion => throw _privateConstructorUsedError;
  String get codigoTipoCuenta => throw _privateConstructorUsedError;
  String get tipoCuenta => throw _privateConstructorUsedError;
  String get numeroCuenta => throw _privateConstructorUsedError;
  bool get esInterno => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  bool get activo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeneficiarioModelCopyWith<BeneficiarioModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeneficiarioModelCopyWith<$Res> {
  factory $BeneficiarioModelCopyWith(
          BeneficiarioModel value, $Res Function(BeneficiarioModel) then) =
      _$BeneficiarioModelCopyWithImpl<$Res, BeneficiarioModel>;
  @useResult
  $Res call(
      {int id,
      int idUsuario,
      String codigoTipoId,
      String identificacion,
      String nombre,
      String apellido,
      String codigoTipoInstitucion,
      String tipoInstitucion,
      int idInstitucion,
      String institucion,
      String codigoTipoCuenta,
      String tipoCuenta,
      String numeroCuenta,
      bool esInterno,
      String email,
      bool activo});
}

/// @nodoc
class _$BeneficiarioModelCopyWithImpl<$Res, $Val extends BeneficiarioModel>
    implements $BeneficiarioModelCopyWith<$Res> {
  _$BeneficiarioModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? idUsuario = null,
    Object? codigoTipoId = null,
    Object? identificacion = null,
    Object? nombre = null,
    Object? apellido = null,
    Object? codigoTipoInstitucion = null,
    Object? tipoInstitucion = null,
    Object? idInstitucion = null,
    Object? institucion = null,
    Object? codigoTipoCuenta = null,
    Object? tipoCuenta = null,
    Object? numeroCuenta = null,
    Object? esInterno = null,
    Object? email = null,
    Object? activo = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      idUsuario: null == idUsuario
          ? _value.idUsuario
          : idUsuario // ignore: cast_nullable_to_non_nullable
              as int,
      codigoTipoId: null == codigoTipoId
          ? _value.codigoTipoId
          : codigoTipoId // ignore: cast_nullable_to_non_nullable
              as String,
      identificacion: null == identificacion
          ? _value.identificacion
          : identificacion // ignore: cast_nullable_to_non_nullable
              as String,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      apellido: null == apellido
          ? _value.apellido
          : apellido // ignore: cast_nullable_to_non_nullable
              as String,
      codigoTipoInstitucion: null == codigoTipoInstitucion
          ? _value.codigoTipoInstitucion
          : codigoTipoInstitucion // ignore: cast_nullable_to_non_nullable
              as String,
      tipoInstitucion: null == tipoInstitucion
          ? _value.tipoInstitucion
          : tipoInstitucion // ignore: cast_nullable_to_non_nullable
              as String,
      idInstitucion: null == idInstitucion
          ? _value.idInstitucion
          : idInstitucion // ignore: cast_nullable_to_non_nullable
              as int,
      institucion: null == institucion
          ? _value.institucion
          : institucion // ignore: cast_nullable_to_non_nullable
              as String,
      codigoTipoCuenta: null == codigoTipoCuenta
          ? _value.codigoTipoCuenta
          : codigoTipoCuenta // ignore: cast_nullable_to_non_nullable
              as String,
      tipoCuenta: null == tipoCuenta
          ? _value.tipoCuenta
          : tipoCuenta // ignore: cast_nullable_to_non_nullable
              as String,
      numeroCuenta: null == numeroCuenta
          ? _value.numeroCuenta
          : numeroCuenta // ignore: cast_nullable_to_non_nullable
              as String,
      esInterno: null == esInterno
          ? _value.esInterno
          : esInterno // ignore: cast_nullable_to_non_nullable
              as bool,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      activo: null == activo
          ? _value.activo
          : activo // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BeneficiarioModelImplCopyWith<$Res>
    implements $BeneficiarioModelCopyWith<$Res> {
  factory _$$BeneficiarioModelImplCopyWith(_$BeneficiarioModelImpl value,
          $Res Function(_$BeneficiarioModelImpl) then) =
      __$$BeneficiarioModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int idUsuario,
      String codigoTipoId,
      String identificacion,
      String nombre,
      String apellido,
      String codigoTipoInstitucion,
      String tipoInstitucion,
      int idInstitucion,
      String institucion,
      String codigoTipoCuenta,
      String tipoCuenta,
      String numeroCuenta,
      bool esInterno,
      String email,
      bool activo});
}

/// @nodoc
class __$$BeneficiarioModelImplCopyWithImpl<$Res>
    extends _$BeneficiarioModelCopyWithImpl<$Res, _$BeneficiarioModelImpl>
    implements _$$BeneficiarioModelImplCopyWith<$Res> {
  __$$BeneficiarioModelImplCopyWithImpl(_$BeneficiarioModelImpl _value,
      $Res Function(_$BeneficiarioModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? idUsuario = null,
    Object? codigoTipoId = null,
    Object? identificacion = null,
    Object? nombre = null,
    Object? apellido = null,
    Object? codigoTipoInstitucion = null,
    Object? tipoInstitucion = null,
    Object? idInstitucion = null,
    Object? institucion = null,
    Object? codigoTipoCuenta = null,
    Object? tipoCuenta = null,
    Object? numeroCuenta = null,
    Object? esInterno = null,
    Object? email = null,
    Object? activo = null,
  }) {
    return _then(_$BeneficiarioModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      idUsuario: null == idUsuario
          ? _value.idUsuario
          : idUsuario // ignore: cast_nullable_to_non_nullable
              as int,
      codigoTipoId: null == codigoTipoId
          ? _value.codigoTipoId
          : codigoTipoId // ignore: cast_nullable_to_non_nullable
              as String,
      identificacion: null == identificacion
          ? _value.identificacion
          : identificacion // ignore: cast_nullable_to_non_nullable
              as String,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      apellido: null == apellido
          ? _value.apellido
          : apellido // ignore: cast_nullable_to_non_nullable
              as String,
      codigoTipoInstitucion: null == codigoTipoInstitucion
          ? _value.codigoTipoInstitucion
          : codigoTipoInstitucion // ignore: cast_nullable_to_non_nullable
              as String,
      tipoInstitucion: null == tipoInstitucion
          ? _value.tipoInstitucion
          : tipoInstitucion // ignore: cast_nullable_to_non_nullable
              as String,
      idInstitucion: null == idInstitucion
          ? _value.idInstitucion
          : idInstitucion // ignore: cast_nullable_to_non_nullable
              as int,
      institucion: null == institucion
          ? _value.institucion
          : institucion // ignore: cast_nullable_to_non_nullable
              as String,
      codigoTipoCuenta: null == codigoTipoCuenta
          ? _value.codigoTipoCuenta
          : codigoTipoCuenta // ignore: cast_nullable_to_non_nullable
              as String,
      tipoCuenta: null == tipoCuenta
          ? _value.tipoCuenta
          : tipoCuenta // ignore: cast_nullable_to_non_nullable
              as String,
      numeroCuenta: null == numeroCuenta
          ? _value.numeroCuenta
          : numeroCuenta // ignore: cast_nullable_to_non_nullable
              as String,
      esInterno: null == esInterno
          ? _value.esInterno
          : esInterno // ignore: cast_nullable_to_non_nullable
              as bool,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      activo: null == activo
          ? _value.activo
          : activo // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BeneficiarioModelImpl implements _BeneficiarioModel {
  _$BeneficiarioModelImpl(
      {this.id = 0,
      this.idUsuario = 0,
      this.codigoTipoId = '',
      this.identificacion = '',
      this.nombre = '',
      this.apellido = '',
      this.codigoTipoInstitucion = '',
      this.tipoInstitucion = '',
      this.idInstitucion = 0,
      this.institucion = '',
      this.codigoTipoCuenta = '',
      this.tipoCuenta = '',
      this.numeroCuenta = '',
      this.esInterno = false,
      this.email = '',
      this.activo = false});

  factory _$BeneficiarioModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BeneficiarioModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int idUsuario;
  @override
  @JsonKey()
  final String codigoTipoId;
  @override
  @JsonKey()
  final String identificacion;
  @override
  @JsonKey()
  final String nombre;
  @override
  @JsonKey()
  final String apellido;
  @override
  @JsonKey()
  final String codigoTipoInstitucion;
  @override
  @JsonKey()
  final String tipoInstitucion;
  @override
  @JsonKey()
  final int idInstitucion;
  @override
  @JsonKey()
  final String institucion;
  @override
  @JsonKey()
  final String codigoTipoCuenta;
  @override
  @JsonKey()
  final String tipoCuenta;
  @override
  @JsonKey()
  final String numeroCuenta;
  @override
  @JsonKey()
  final bool esInterno;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final bool activo;

  @override
  String toString() {
    return 'BeneficiarioModel(id: $id, idUsuario: $idUsuario, codigoTipoId: $codigoTipoId, identificacion: $identificacion, nombre: $nombre, apellido: $apellido, codigoTipoInstitucion: $codigoTipoInstitucion, tipoInstitucion: $tipoInstitucion, idInstitucion: $idInstitucion, institucion: $institucion, codigoTipoCuenta: $codigoTipoCuenta, tipoCuenta: $tipoCuenta, numeroCuenta: $numeroCuenta, esInterno: $esInterno, email: $email, activo: $activo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeneficiarioModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.idUsuario, idUsuario) ||
                other.idUsuario == idUsuario) &&
            (identical(other.codigoTipoId, codigoTipoId) ||
                other.codigoTipoId == codigoTipoId) &&
            (identical(other.identificacion, identificacion) ||
                other.identificacion == identificacion) &&
            (identical(other.nombre, nombre) || other.nombre == nombre) &&
            (identical(other.apellido, apellido) ||
                other.apellido == apellido) &&
            (identical(other.codigoTipoInstitucion, codigoTipoInstitucion) ||
                other.codigoTipoInstitucion == codigoTipoInstitucion) &&
            (identical(other.tipoInstitucion, tipoInstitucion) ||
                other.tipoInstitucion == tipoInstitucion) &&
            (identical(other.idInstitucion, idInstitucion) ||
                other.idInstitucion == idInstitucion) &&
            (identical(other.institucion, institucion) ||
                other.institucion == institucion) &&
            (identical(other.codigoTipoCuenta, codigoTipoCuenta) ||
                other.codigoTipoCuenta == codigoTipoCuenta) &&
            (identical(other.tipoCuenta, tipoCuenta) ||
                other.tipoCuenta == tipoCuenta) &&
            (identical(other.numeroCuenta, numeroCuenta) ||
                other.numeroCuenta == numeroCuenta) &&
            (identical(other.esInterno, esInterno) ||
                other.esInterno == esInterno) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.activo, activo) || other.activo == activo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      idUsuario,
      codigoTipoId,
      identificacion,
      nombre,
      apellido,
      codigoTipoInstitucion,
      tipoInstitucion,
      idInstitucion,
      institucion,
      codigoTipoCuenta,
      tipoCuenta,
      numeroCuenta,
      esInterno,
      email,
      activo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BeneficiarioModelImplCopyWith<_$BeneficiarioModelImpl> get copyWith =>
      __$$BeneficiarioModelImplCopyWithImpl<_$BeneficiarioModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BeneficiarioModelImplToJson(
      this,
    );
  }
}

abstract class _BeneficiarioModel implements BeneficiarioModel {
  factory _BeneficiarioModel(
      {final int id,
      final int idUsuario,
      final String codigoTipoId,
      final String identificacion,
      final String nombre,
      final String apellido,
      final String codigoTipoInstitucion,
      final String tipoInstitucion,
      final int idInstitucion,
      final String institucion,
      final String codigoTipoCuenta,
      final String tipoCuenta,
      final String numeroCuenta,
      final bool esInterno,
      final String email,
      final bool activo}) = _$BeneficiarioModelImpl;

  factory _BeneficiarioModel.fromJson(Map<String, dynamic> json) =
      _$BeneficiarioModelImpl.fromJson;

  @override
  int get id;
  @override
  int get idUsuario;
  @override
  String get codigoTipoId;
  @override
  String get identificacion;
  @override
  String get nombre;
  @override
  String get apellido;
  @override
  String get codigoTipoInstitucion;
  @override
  String get tipoInstitucion;
  @override
  int get idInstitucion;
  @override
  String get institucion;
  @override
  String get codigoTipoCuenta;
  @override
  String get tipoCuenta;
  @override
  String get numeroCuenta;
  @override
  bool get esInterno;
  @override
  String get email;
  @override
  bool get activo;
  @override
  @JsonKey(ignore: true)
  _$$BeneficiarioModelImplCopyWith<_$BeneficiarioModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ConsultaBeneficiariosRespuesta _$ConsultaBeneficiariosRespuestaFromJson(
    Map<String, dynamic> json) {
  return _ConsultaBeneficiariosRespuesta.fromJson(json);
}

/// @nodoc
mixin _$ConsultaBeneficiariosRespuesta {
  List<BeneficiarioModel> get beneficiarioLista =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConsultaBeneficiariosRespuestaCopyWith<ConsultaBeneficiariosRespuesta>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultaBeneficiariosRespuestaCopyWith<$Res> {
  factory $ConsultaBeneficiariosRespuestaCopyWith(
          ConsultaBeneficiariosRespuesta value,
          $Res Function(ConsultaBeneficiariosRespuesta) then) =
      _$ConsultaBeneficiariosRespuestaCopyWithImpl<$Res,
          ConsultaBeneficiariosRespuesta>;
  @useResult
  $Res call({List<BeneficiarioModel> beneficiarioLista});
}

/// @nodoc
class _$ConsultaBeneficiariosRespuestaCopyWithImpl<$Res,
        $Val extends ConsultaBeneficiariosRespuesta>
    implements $ConsultaBeneficiariosRespuestaCopyWith<$Res> {
  _$ConsultaBeneficiariosRespuestaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beneficiarioLista = null,
  }) {
    return _then(_value.copyWith(
      beneficiarioLista: null == beneficiarioLista
          ? _value.beneficiarioLista
          : beneficiarioLista // ignore: cast_nullable_to_non_nullable
              as List<BeneficiarioModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConsultaBeneficiariosRespuestaImplCopyWith<$Res>
    implements $ConsultaBeneficiariosRespuestaCopyWith<$Res> {
  factory _$$ConsultaBeneficiariosRespuestaImplCopyWith(
          _$ConsultaBeneficiariosRespuestaImpl value,
          $Res Function(_$ConsultaBeneficiariosRespuestaImpl) then) =
      __$$ConsultaBeneficiariosRespuestaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BeneficiarioModel> beneficiarioLista});
}

/// @nodoc
class __$$ConsultaBeneficiariosRespuestaImplCopyWithImpl<$Res>
    extends _$ConsultaBeneficiariosRespuestaCopyWithImpl<$Res,
        _$ConsultaBeneficiariosRespuestaImpl>
    implements _$$ConsultaBeneficiariosRespuestaImplCopyWith<$Res> {
  __$$ConsultaBeneficiariosRespuestaImplCopyWithImpl(
      _$ConsultaBeneficiariosRespuestaImpl _value,
      $Res Function(_$ConsultaBeneficiariosRespuestaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beneficiarioLista = null,
  }) {
    return _then(_$ConsultaBeneficiariosRespuestaImpl(
      beneficiarioLista: null == beneficiarioLista
          ? _value._beneficiarioLista
          : beneficiarioLista // ignore: cast_nullable_to_non_nullable
              as List<BeneficiarioModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultaBeneficiariosRespuestaImpl
    implements _ConsultaBeneficiariosRespuesta {
  _$ConsultaBeneficiariosRespuestaImpl(
      {final List<BeneficiarioModel> beneficiarioLista = const []})
      : _beneficiarioLista = beneficiarioLista;

  factory _$ConsultaBeneficiariosRespuestaImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultaBeneficiariosRespuestaImplFromJson(json);

  final List<BeneficiarioModel> _beneficiarioLista;
  @override
  @JsonKey()
  List<BeneficiarioModel> get beneficiarioLista {
    if (_beneficiarioLista is EqualUnmodifiableListView)
      return _beneficiarioLista;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_beneficiarioLista);
  }

  @override
  String toString() {
    return 'ConsultaBeneficiariosRespuesta(beneficiarioLista: $beneficiarioLista)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultaBeneficiariosRespuestaImpl &&
            const DeepCollectionEquality()
                .equals(other._beneficiarioLista, _beneficiarioLista));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_beneficiarioLista));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultaBeneficiariosRespuestaImplCopyWith<
          _$ConsultaBeneficiariosRespuestaImpl>
      get copyWith => __$$ConsultaBeneficiariosRespuestaImplCopyWithImpl<
          _$ConsultaBeneficiariosRespuestaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultaBeneficiariosRespuestaImplToJson(
      this,
    );
  }
}

abstract class _ConsultaBeneficiariosRespuesta
    implements ConsultaBeneficiariosRespuesta {
  factory _ConsultaBeneficiariosRespuesta(
          {final List<BeneficiarioModel> beneficiarioLista}) =
      _$ConsultaBeneficiariosRespuestaImpl;

  factory _ConsultaBeneficiariosRespuesta.fromJson(Map<String, dynamic> json) =
      _$ConsultaBeneficiariosRespuestaImpl.fromJson;

  @override
  List<BeneficiarioModel> get beneficiarioLista;
  @override
  @JsonKey(ignore: true)
  _$$ConsultaBeneficiariosRespuestaImplCopyWith<
          _$ConsultaBeneficiariosRespuestaImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultaRequisitosBeneficiarioRespuesta
    _$ConsultaRequisitosBeneficiarioRespuestaFromJson(
        Map<String, dynamic> json) {
  return _ConsultaRequisitosBeneficiarioRespuesta.fromJson(json);
}

/// @nodoc
mixin _$ConsultaRequisitosBeneficiarioRespuesta {
  List<TipoInstitucionModel> get tiposIntitucion =>
      throw _privateConstructorUsedError;
  List<InstitucionFinancieraModel> get institucionesFinancieras =>
      throw _privateConstructorUsedError;
  List<TipoCuentaModel> get tiposCuenta => throw _privateConstructorUsedError;
  List<TipoIdentificacionModel> get tiposIdentificacion =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConsultaRequisitosBeneficiarioRespuestaCopyWith<
          ConsultaRequisitosBeneficiarioRespuesta>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultaRequisitosBeneficiarioRespuestaCopyWith<$Res> {
  factory $ConsultaRequisitosBeneficiarioRespuestaCopyWith(
          ConsultaRequisitosBeneficiarioRespuesta value,
          $Res Function(ConsultaRequisitosBeneficiarioRespuesta) then) =
      _$ConsultaRequisitosBeneficiarioRespuestaCopyWithImpl<$Res,
          ConsultaRequisitosBeneficiarioRespuesta>;
  @useResult
  $Res call(
      {List<TipoInstitucionModel> tiposIntitucion,
      List<InstitucionFinancieraModel> institucionesFinancieras,
      List<TipoCuentaModel> tiposCuenta,
      List<TipoIdentificacionModel> tiposIdentificacion});
}

/// @nodoc
class _$ConsultaRequisitosBeneficiarioRespuestaCopyWithImpl<$Res,
        $Val extends ConsultaRequisitosBeneficiarioRespuesta>
    implements $ConsultaRequisitosBeneficiarioRespuestaCopyWith<$Res> {
  _$ConsultaRequisitosBeneficiarioRespuestaCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tiposIntitucion = null,
    Object? institucionesFinancieras = null,
    Object? tiposCuenta = null,
    Object? tiposIdentificacion = null,
  }) {
    return _then(_value.copyWith(
      tiposIntitucion: null == tiposIntitucion
          ? _value.tiposIntitucion
          : tiposIntitucion // ignore: cast_nullable_to_non_nullable
              as List<TipoInstitucionModel>,
      institucionesFinancieras: null == institucionesFinancieras
          ? _value.institucionesFinancieras
          : institucionesFinancieras // ignore: cast_nullable_to_non_nullable
              as List<InstitucionFinancieraModel>,
      tiposCuenta: null == tiposCuenta
          ? _value.tiposCuenta
          : tiposCuenta // ignore: cast_nullable_to_non_nullable
              as List<TipoCuentaModel>,
      tiposIdentificacion: null == tiposIdentificacion
          ? _value.tiposIdentificacion
          : tiposIdentificacion // ignore: cast_nullable_to_non_nullable
              as List<TipoIdentificacionModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConsultaRequisitosBeneficiarioRespuestaImplCopyWith<$Res>
    implements $ConsultaRequisitosBeneficiarioRespuestaCopyWith<$Res> {
  factory _$$ConsultaRequisitosBeneficiarioRespuestaImplCopyWith(
          _$ConsultaRequisitosBeneficiarioRespuestaImpl value,
          $Res Function(_$ConsultaRequisitosBeneficiarioRespuestaImpl) then) =
      __$$ConsultaRequisitosBeneficiarioRespuestaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TipoInstitucionModel> tiposIntitucion,
      List<InstitucionFinancieraModel> institucionesFinancieras,
      List<TipoCuentaModel> tiposCuenta,
      List<TipoIdentificacionModel> tiposIdentificacion});
}

/// @nodoc
class __$$ConsultaRequisitosBeneficiarioRespuestaImplCopyWithImpl<$Res>
    extends _$ConsultaRequisitosBeneficiarioRespuestaCopyWithImpl<$Res,
        _$ConsultaRequisitosBeneficiarioRespuestaImpl>
    implements _$$ConsultaRequisitosBeneficiarioRespuestaImplCopyWith<$Res> {
  __$$ConsultaRequisitosBeneficiarioRespuestaImplCopyWithImpl(
      _$ConsultaRequisitosBeneficiarioRespuestaImpl _value,
      $Res Function(_$ConsultaRequisitosBeneficiarioRespuestaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tiposIntitucion = null,
    Object? institucionesFinancieras = null,
    Object? tiposCuenta = null,
    Object? tiposIdentificacion = null,
  }) {
    return _then(_$ConsultaRequisitosBeneficiarioRespuestaImpl(
      tiposIntitucion: null == tiposIntitucion
          ? _value._tiposIntitucion
          : tiposIntitucion // ignore: cast_nullable_to_non_nullable
              as List<TipoInstitucionModel>,
      institucionesFinancieras: null == institucionesFinancieras
          ? _value._institucionesFinancieras
          : institucionesFinancieras // ignore: cast_nullable_to_non_nullable
              as List<InstitucionFinancieraModel>,
      tiposCuenta: null == tiposCuenta
          ? _value._tiposCuenta
          : tiposCuenta // ignore: cast_nullable_to_non_nullable
              as List<TipoCuentaModel>,
      tiposIdentificacion: null == tiposIdentificacion
          ? _value._tiposIdentificacion
          : tiposIdentificacion // ignore: cast_nullable_to_non_nullable
              as List<TipoIdentificacionModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultaRequisitosBeneficiarioRespuestaImpl
    implements _ConsultaRequisitosBeneficiarioRespuesta {
  _$ConsultaRequisitosBeneficiarioRespuestaImpl(
      {final List<TipoInstitucionModel> tiposIntitucion = const [],
      final List<InstitucionFinancieraModel> institucionesFinancieras =
          const [],
      final List<TipoCuentaModel> tiposCuenta = const [],
      final List<TipoIdentificacionModel> tiposIdentificacion = const []})
      : _tiposIntitucion = tiposIntitucion,
        _institucionesFinancieras = institucionesFinancieras,
        _tiposCuenta = tiposCuenta,
        _tiposIdentificacion = tiposIdentificacion;

  factory _$ConsultaRequisitosBeneficiarioRespuestaImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultaRequisitosBeneficiarioRespuestaImplFromJson(json);

  final List<TipoInstitucionModel> _tiposIntitucion;
  @override
  @JsonKey()
  List<TipoInstitucionModel> get tiposIntitucion {
    if (_tiposIntitucion is EqualUnmodifiableListView) return _tiposIntitucion;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tiposIntitucion);
  }

  final List<InstitucionFinancieraModel> _institucionesFinancieras;
  @override
  @JsonKey()
  List<InstitucionFinancieraModel> get institucionesFinancieras {
    if (_institucionesFinancieras is EqualUnmodifiableListView)
      return _institucionesFinancieras;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_institucionesFinancieras);
  }

  final List<TipoCuentaModel> _tiposCuenta;
  @override
  @JsonKey()
  List<TipoCuentaModel> get tiposCuenta {
    if (_tiposCuenta is EqualUnmodifiableListView) return _tiposCuenta;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tiposCuenta);
  }

  final List<TipoIdentificacionModel> _tiposIdentificacion;
  @override
  @JsonKey()
  List<TipoIdentificacionModel> get tiposIdentificacion {
    if (_tiposIdentificacion is EqualUnmodifiableListView)
      return _tiposIdentificacion;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tiposIdentificacion);
  }

  @override
  String toString() {
    return 'ConsultaRequisitosBeneficiarioRespuesta(tiposIntitucion: $tiposIntitucion, institucionesFinancieras: $institucionesFinancieras, tiposCuenta: $tiposCuenta, tiposIdentificacion: $tiposIdentificacion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultaRequisitosBeneficiarioRespuestaImpl &&
            const DeepCollectionEquality()
                .equals(other._tiposIntitucion, _tiposIntitucion) &&
            const DeepCollectionEquality().equals(
                other._institucionesFinancieras, _institucionesFinancieras) &&
            const DeepCollectionEquality()
                .equals(other._tiposCuenta, _tiposCuenta) &&
            const DeepCollectionEquality()
                .equals(other._tiposIdentificacion, _tiposIdentificacion));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tiposIntitucion),
      const DeepCollectionEquality().hash(_institucionesFinancieras),
      const DeepCollectionEquality().hash(_tiposCuenta),
      const DeepCollectionEquality().hash(_tiposIdentificacion));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultaRequisitosBeneficiarioRespuestaImplCopyWith<
          _$ConsultaRequisitosBeneficiarioRespuestaImpl>
      get copyWith =>
          __$$ConsultaRequisitosBeneficiarioRespuestaImplCopyWithImpl<
              _$ConsultaRequisitosBeneficiarioRespuestaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultaRequisitosBeneficiarioRespuestaImplToJson(
      this,
    );
  }
}

abstract class _ConsultaRequisitosBeneficiarioRespuesta
    implements ConsultaRequisitosBeneficiarioRespuesta {
  factory _ConsultaRequisitosBeneficiarioRespuesta(
          {final List<TipoInstitucionModel> tiposIntitucion,
          final List<InstitucionFinancieraModel> institucionesFinancieras,
          final List<TipoCuentaModel> tiposCuenta,
          final List<TipoIdentificacionModel> tiposIdentificacion}) =
      _$ConsultaRequisitosBeneficiarioRespuestaImpl;

  factory _ConsultaRequisitosBeneficiarioRespuesta.fromJson(
          Map<String, dynamic> json) =
      _$ConsultaRequisitosBeneficiarioRespuestaImpl.fromJson;

  @override
  List<TipoInstitucionModel> get tiposIntitucion;
  @override
  List<InstitucionFinancieraModel> get institucionesFinancieras;
  @override
  List<TipoCuentaModel> get tiposCuenta;
  @override
  List<TipoIdentificacionModel> get tiposIdentificacion;
  @override
  @JsonKey(ignore: true)
  _$$ConsultaRequisitosBeneficiarioRespuestaImplCopyWith<
          _$ConsultaRequisitosBeneficiarioRespuestaImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TipoInstitucionModel _$TipoInstitucionModelFromJson(Map<String, dynamic> json) {
  return _TipoInstitucionModel.fromJson(json);
}

/// @nodoc
mixin _$TipoInstitucionModel {
  String get codigo => throw _privateConstructorUsedError;
  String get nombre => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TipoInstitucionModelCopyWith<TipoInstitucionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TipoInstitucionModelCopyWith<$Res> {
  factory $TipoInstitucionModelCopyWith(TipoInstitucionModel value,
          $Res Function(TipoInstitucionModel) then) =
      _$TipoInstitucionModelCopyWithImpl<$Res, TipoInstitucionModel>;
  @useResult
  $Res call({String codigo, String nombre});
}

/// @nodoc
class _$TipoInstitucionModelCopyWithImpl<$Res,
        $Val extends TipoInstitucionModel>
    implements $TipoInstitucionModelCopyWith<$Res> {
  _$TipoInstitucionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codigo = null,
    Object? nombre = null,
  }) {
    return _then(_value.copyWith(
      codigo: null == codigo
          ? _value.codigo
          : codigo // ignore: cast_nullable_to_non_nullable
              as String,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TipoInstitucionModelImplCopyWith<$Res>
    implements $TipoInstitucionModelCopyWith<$Res> {
  factory _$$TipoInstitucionModelImplCopyWith(_$TipoInstitucionModelImpl value,
          $Res Function(_$TipoInstitucionModelImpl) then) =
      __$$TipoInstitucionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String codigo, String nombre});
}

/// @nodoc
class __$$TipoInstitucionModelImplCopyWithImpl<$Res>
    extends _$TipoInstitucionModelCopyWithImpl<$Res, _$TipoInstitucionModelImpl>
    implements _$$TipoInstitucionModelImplCopyWith<$Res> {
  __$$TipoInstitucionModelImplCopyWithImpl(_$TipoInstitucionModelImpl _value,
      $Res Function(_$TipoInstitucionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codigo = null,
    Object? nombre = null,
  }) {
    return _then(_$TipoInstitucionModelImpl(
      codigo: null == codigo
          ? _value.codigo
          : codigo // ignore: cast_nullable_to_non_nullable
              as String,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TipoInstitucionModelImpl implements _TipoInstitucionModel {
  _$TipoInstitucionModelImpl({this.codigo = '', this.nombre = ''});

  factory _$TipoInstitucionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TipoInstitucionModelImplFromJson(json);

  @override
  @JsonKey()
  final String codigo;
  @override
  @JsonKey()
  final String nombre;

  @override
  String toString() {
    return 'TipoInstitucionModel(codigo: $codigo, nombre: $nombre)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TipoInstitucionModelImpl &&
            (identical(other.codigo, codigo) || other.codigo == codigo) &&
            (identical(other.nombre, nombre) || other.nombre == nombre));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, codigo, nombre);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TipoInstitucionModelImplCopyWith<_$TipoInstitucionModelImpl>
      get copyWith =>
          __$$TipoInstitucionModelImplCopyWithImpl<_$TipoInstitucionModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TipoInstitucionModelImplToJson(
      this,
    );
  }
}

abstract class _TipoInstitucionModel implements TipoInstitucionModel {
  factory _TipoInstitucionModel({final String codigo, final String nombre}) =
      _$TipoInstitucionModelImpl;

  factory _TipoInstitucionModel.fromJson(Map<String, dynamic> json) =
      _$TipoInstitucionModelImpl.fromJson;

  @override
  String get codigo;
  @override
  String get nombre;
  @override
  @JsonKey(ignore: true)
  _$$TipoInstitucionModelImplCopyWith<_$TipoInstitucionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InstitucionFinancieraModel _$InstitucionFinancieraModelFromJson(
    Map<String, dynamic> json) {
  return _InstitucionFinancieraModel.fromJson(json);
}

/// @nodoc
mixin _$InstitucionFinancieraModel {
  int get id => throw _privateConstructorUsedError;
  String get codigoTipo => throw _privateConstructorUsedError;
  String get nombre => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InstitucionFinancieraModelCopyWith<InstitucionFinancieraModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstitucionFinancieraModelCopyWith<$Res> {
  factory $InstitucionFinancieraModelCopyWith(InstitucionFinancieraModel value,
          $Res Function(InstitucionFinancieraModel) then) =
      _$InstitucionFinancieraModelCopyWithImpl<$Res,
          InstitucionFinancieraModel>;
  @useResult
  $Res call({int id, String codigoTipo, String nombre});
}

/// @nodoc
class _$InstitucionFinancieraModelCopyWithImpl<$Res,
        $Val extends InstitucionFinancieraModel>
    implements $InstitucionFinancieraModelCopyWith<$Res> {
  _$InstitucionFinancieraModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? codigoTipo = null,
    Object? nombre = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      codigoTipo: null == codigoTipo
          ? _value.codigoTipo
          : codigoTipo // ignore: cast_nullable_to_non_nullable
              as String,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InstitucionFinancieraModelImplCopyWith<$Res>
    implements $InstitucionFinancieraModelCopyWith<$Res> {
  factory _$$InstitucionFinancieraModelImplCopyWith(
          _$InstitucionFinancieraModelImpl value,
          $Res Function(_$InstitucionFinancieraModelImpl) then) =
      __$$InstitucionFinancieraModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String codigoTipo, String nombre});
}

/// @nodoc
class __$$InstitucionFinancieraModelImplCopyWithImpl<$Res>
    extends _$InstitucionFinancieraModelCopyWithImpl<$Res,
        _$InstitucionFinancieraModelImpl>
    implements _$$InstitucionFinancieraModelImplCopyWith<$Res> {
  __$$InstitucionFinancieraModelImplCopyWithImpl(
      _$InstitucionFinancieraModelImpl _value,
      $Res Function(_$InstitucionFinancieraModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? codigoTipo = null,
    Object? nombre = null,
  }) {
    return _then(_$InstitucionFinancieraModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      codigoTipo: null == codigoTipo
          ? _value.codigoTipo
          : codigoTipo // ignore: cast_nullable_to_non_nullable
              as String,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InstitucionFinancieraModelImpl implements _InstitucionFinancieraModel {
  _$InstitucionFinancieraModelImpl(
      {this.id = 0, this.codigoTipo = '', this.nombre = ''});

  factory _$InstitucionFinancieraModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$InstitucionFinancieraModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String codigoTipo;
  @override
  @JsonKey()
  final String nombre;

  @override
  String toString() {
    return 'InstitucionFinancieraModel(id: $id, codigoTipo: $codigoTipo, nombre: $nombre)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InstitucionFinancieraModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.codigoTipo, codigoTipo) ||
                other.codigoTipo == codigoTipo) &&
            (identical(other.nombre, nombre) || other.nombre == nombre));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, codigoTipo, nombre);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InstitucionFinancieraModelImplCopyWith<_$InstitucionFinancieraModelImpl>
      get copyWith => __$$InstitucionFinancieraModelImplCopyWithImpl<
          _$InstitucionFinancieraModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InstitucionFinancieraModelImplToJson(
      this,
    );
  }
}

abstract class _InstitucionFinancieraModel
    implements InstitucionFinancieraModel {
  factory _InstitucionFinancieraModel(
      {final int id,
      final String codigoTipo,
      final String nombre}) = _$InstitucionFinancieraModelImpl;

  factory _InstitucionFinancieraModel.fromJson(Map<String, dynamic> json) =
      _$InstitucionFinancieraModelImpl.fromJson;

  @override
  int get id;
  @override
  String get codigoTipo;
  @override
  String get nombre;
  @override
  @JsonKey(ignore: true)
  _$$InstitucionFinancieraModelImplCopyWith<_$InstitucionFinancieraModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TipoCuentaModel _$TipoCuentaModelFromJson(Map<String, dynamic> json) {
  return _TipoCuentaModel.fromJson(json);
}

/// @nodoc
mixin _$TipoCuentaModel {
  String get codigo => throw _privateConstructorUsedError;
  String get nombre => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TipoCuentaModelCopyWith<TipoCuentaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TipoCuentaModelCopyWith<$Res> {
  factory $TipoCuentaModelCopyWith(
          TipoCuentaModel value, $Res Function(TipoCuentaModel) then) =
      _$TipoCuentaModelCopyWithImpl<$Res, TipoCuentaModel>;
  @useResult
  $Res call({String codigo, String nombre});
}

/// @nodoc
class _$TipoCuentaModelCopyWithImpl<$Res, $Val extends TipoCuentaModel>
    implements $TipoCuentaModelCopyWith<$Res> {
  _$TipoCuentaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codigo = null,
    Object? nombre = null,
  }) {
    return _then(_value.copyWith(
      codigo: null == codigo
          ? _value.codigo
          : codigo // ignore: cast_nullable_to_non_nullable
              as String,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TipoCuentaModelImplCopyWith<$Res>
    implements $TipoCuentaModelCopyWith<$Res> {
  factory _$$TipoCuentaModelImplCopyWith(_$TipoCuentaModelImpl value,
          $Res Function(_$TipoCuentaModelImpl) then) =
      __$$TipoCuentaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String codigo, String nombre});
}

/// @nodoc
class __$$TipoCuentaModelImplCopyWithImpl<$Res>
    extends _$TipoCuentaModelCopyWithImpl<$Res, _$TipoCuentaModelImpl>
    implements _$$TipoCuentaModelImplCopyWith<$Res> {
  __$$TipoCuentaModelImplCopyWithImpl(
      _$TipoCuentaModelImpl _value, $Res Function(_$TipoCuentaModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codigo = null,
    Object? nombre = null,
  }) {
    return _then(_$TipoCuentaModelImpl(
      codigo: null == codigo
          ? _value.codigo
          : codigo // ignore: cast_nullable_to_non_nullable
              as String,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TipoCuentaModelImpl implements _TipoCuentaModel {
  _$TipoCuentaModelImpl({this.codigo = '', this.nombre = ''});

  factory _$TipoCuentaModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TipoCuentaModelImplFromJson(json);

  @override
  @JsonKey()
  final String codigo;
  @override
  @JsonKey()
  final String nombre;

  @override
  String toString() {
    return 'TipoCuentaModel(codigo: $codigo, nombre: $nombre)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TipoCuentaModelImpl &&
            (identical(other.codigo, codigo) || other.codigo == codigo) &&
            (identical(other.nombre, nombre) || other.nombre == nombre));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, codigo, nombre);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TipoCuentaModelImplCopyWith<_$TipoCuentaModelImpl> get copyWith =>
      __$$TipoCuentaModelImplCopyWithImpl<_$TipoCuentaModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TipoCuentaModelImplToJson(
      this,
    );
  }
}

abstract class _TipoCuentaModel implements TipoCuentaModel {
  factory _TipoCuentaModel({final String codigo, final String nombre}) =
      _$TipoCuentaModelImpl;

  factory _TipoCuentaModel.fromJson(Map<String, dynamic> json) =
      _$TipoCuentaModelImpl.fromJson;

  @override
  String get codigo;
  @override
  String get nombre;
  @override
  @JsonKey(ignore: true)
  _$$TipoCuentaModelImplCopyWith<_$TipoCuentaModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TipoIdentificacionModel _$TipoIdentificacionModelFromJson(
    Map<String, dynamic> json) {
  return _TipoIdentificacionModel.fromJson(json);
}

/// @nodoc
mixin _$TipoIdentificacionModel {
  String get codigo => throw _privateConstructorUsedError;
  String get nombre => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TipoIdentificacionModelCopyWith<TipoIdentificacionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TipoIdentificacionModelCopyWith<$Res> {
  factory $TipoIdentificacionModelCopyWith(TipoIdentificacionModel value,
          $Res Function(TipoIdentificacionModel) then) =
      _$TipoIdentificacionModelCopyWithImpl<$Res, TipoIdentificacionModel>;
  @useResult
  $Res call({String codigo, String nombre});
}

/// @nodoc
class _$TipoIdentificacionModelCopyWithImpl<$Res,
        $Val extends TipoIdentificacionModel>
    implements $TipoIdentificacionModelCopyWith<$Res> {
  _$TipoIdentificacionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codigo = null,
    Object? nombre = null,
  }) {
    return _then(_value.copyWith(
      codigo: null == codigo
          ? _value.codigo
          : codigo // ignore: cast_nullable_to_non_nullable
              as String,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TipoIdentificacionModelImplCopyWith<$Res>
    implements $TipoIdentificacionModelCopyWith<$Res> {
  factory _$$TipoIdentificacionModelImplCopyWith(
          _$TipoIdentificacionModelImpl value,
          $Res Function(_$TipoIdentificacionModelImpl) then) =
      __$$TipoIdentificacionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String codigo, String nombre});
}

/// @nodoc
class __$$TipoIdentificacionModelImplCopyWithImpl<$Res>
    extends _$TipoIdentificacionModelCopyWithImpl<$Res,
        _$TipoIdentificacionModelImpl>
    implements _$$TipoIdentificacionModelImplCopyWith<$Res> {
  __$$TipoIdentificacionModelImplCopyWithImpl(
      _$TipoIdentificacionModelImpl _value,
      $Res Function(_$TipoIdentificacionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codigo = null,
    Object? nombre = null,
  }) {
    return _then(_$TipoIdentificacionModelImpl(
      codigo: null == codigo
          ? _value.codigo
          : codigo // ignore: cast_nullable_to_non_nullable
              as String,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TipoIdentificacionModelImpl implements _TipoIdentificacionModel {
  _$TipoIdentificacionModelImpl({this.codigo = '', this.nombre = ''});

  factory _$TipoIdentificacionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TipoIdentificacionModelImplFromJson(json);

  @override
  @JsonKey()
  final String codigo;
  @override
  @JsonKey()
  final String nombre;

  @override
  String toString() {
    return 'TipoIdentificacionModel(codigo: $codigo, nombre: $nombre)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TipoIdentificacionModelImpl &&
            (identical(other.codigo, codigo) || other.codigo == codigo) &&
            (identical(other.nombre, nombre) || other.nombre == nombre));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, codigo, nombre);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TipoIdentificacionModelImplCopyWith<_$TipoIdentificacionModelImpl>
      get copyWith => __$$TipoIdentificacionModelImplCopyWithImpl<
          _$TipoIdentificacionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TipoIdentificacionModelImplToJson(
      this,
    );
  }
}

abstract class _TipoIdentificacionModel implements TipoIdentificacionModel {
  factory _TipoIdentificacionModel({final String codigo, final String nombre}) =
      _$TipoIdentificacionModelImpl;

  factory _TipoIdentificacionModel.fromJson(Map<String, dynamic> json) =
      _$TipoIdentificacionModelImpl.fromJson;

  @override
  String get codigo;
  @override
  String get nombre;
  @override
  @JsonKey(ignore: true)
  _$$TipoIdentificacionModelImplCopyWith<_$TipoIdentificacionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MantenimientoBeneficiarioRequerimiento
    _$MantenimientoBeneficiarioRequerimientoFromJson(
        Map<String, dynamic> json) {
  return _MantenimientoBeneficiarioRequerimiento.fromJson(json);
}

/// @nodoc
mixin _$MantenimientoBeneficiarioRequerimiento {
  BeneficiarioModel? get beneficiario => throw _privateConstructorUsedError;
  String get otpIngresado => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MantenimientoBeneficiarioRequerimientoCopyWith<
          MantenimientoBeneficiarioRequerimiento>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MantenimientoBeneficiarioRequerimientoCopyWith<$Res> {
  factory $MantenimientoBeneficiarioRequerimientoCopyWith(
          MantenimientoBeneficiarioRequerimiento value,
          $Res Function(MantenimientoBeneficiarioRequerimiento) then) =
      _$MantenimientoBeneficiarioRequerimientoCopyWithImpl<$Res,
          MantenimientoBeneficiarioRequerimiento>;
  @useResult
  $Res call({BeneficiarioModel? beneficiario, String otpIngresado});

  $BeneficiarioModelCopyWith<$Res>? get beneficiario;
}

/// @nodoc
class _$MantenimientoBeneficiarioRequerimientoCopyWithImpl<$Res,
        $Val extends MantenimientoBeneficiarioRequerimiento>
    implements $MantenimientoBeneficiarioRequerimientoCopyWith<$Res> {
  _$MantenimientoBeneficiarioRequerimientoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beneficiario = freezed,
    Object? otpIngresado = null,
  }) {
    return _then(_value.copyWith(
      beneficiario: freezed == beneficiario
          ? _value.beneficiario
          : beneficiario // ignore: cast_nullable_to_non_nullable
              as BeneficiarioModel?,
      otpIngresado: null == otpIngresado
          ? _value.otpIngresado
          : otpIngresado // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BeneficiarioModelCopyWith<$Res>? get beneficiario {
    if (_value.beneficiario == null) {
      return null;
    }

    return $BeneficiarioModelCopyWith<$Res>(_value.beneficiario!, (value) {
      return _then(_value.copyWith(beneficiario: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MantenimientoBeneficiarioRequerimientoImplCopyWith<$Res>
    implements $MantenimientoBeneficiarioRequerimientoCopyWith<$Res> {
  factory _$$MantenimientoBeneficiarioRequerimientoImplCopyWith(
          _$MantenimientoBeneficiarioRequerimientoImpl value,
          $Res Function(_$MantenimientoBeneficiarioRequerimientoImpl) then) =
      __$$MantenimientoBeneficiarioRequerimientoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BeneficiarioModel? beneficiario, String otpIngresado});

  @override
  $BeneficiarioModelCopyWith<$Res>? get beneficiario;
}

/// @nodoc
class __$$MantenimientoBeneficiarioRequerimientoImplCopyWithImpl<$Res>
    extends _$MantenimientoBeneficiarioRequerimientoCopyWithImpl<$Res,
        _$MantenimientoBeneficiarioRequerimientoImpl>
    implements _$$MantenimientoBeneficiarioRequerimientoImplCopyWith<$Res> {
  __$$MantenimientoBeneficiarioRequerimientoImplCopyWithImpl(
      _$MantenimientoBeneficiarioRequerimientoImpl _value,
      $Res Function(_$MantenimientoBeneficiarioRequerimientoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beneficiario = freezed,
    Object? otpIngresado = null,
  }) {
    return _then(_$MantenimientoBeneficiarioRequerimientoImpl(
      beneficiario: freezed == beneficiario
          ? _value.beneficiario
          : beneficiario // ignore: cast_nullable_to_non_nullable
              as BeneficiarioModel?,
      otpIngresado: null == otpIngresado
          ? _value.otpIngresado
          : otpIngresado // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MantenimientoBeneficiarioRequerimientoImpl
    implements _MantenimientoBeneficiarioRequerimiento {
  _$MantenimientoBeneficiarioRequerimientoImpl(
      {this.beneficiario, this.otpIngresado = ''});

  factory _$MantenimientoBeneficiarioRequerimientoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MantenimientoBeneficiarioRequerimientoImplFromJson(json);

  @override
  final BeneficiarioModel? beneficiario;
  @override
  @JsonKey()
  final String otpIngresado;

  @override
  String toString() {
    return 'MantenimientoBeneficiarioRequerimiento(beneficiario: $beneficiario, otpIngresado: $otpIngresado)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MantenimientoBeneficiarioRequerimientoImpl &&
            (identical(other.beneficiario, beneficiario) ||
                other.beneficiario == beneficiario) &&
            (identical(other.otpIngresado, otpIngresado) ||
                other.otpIngresado == otpIngresado));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, beneficiario, otpIngresado);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MantenimientoBeneficiarioRequerimientoImplCopyWith<
          _$MantenimientoBeneficiarioRequerimientoImpl>
      get copyWith =>
          __$$MantenimientoBeneficiarioRequerimientoImplCopyWithImpl<
              _$MantenimientoBeneficiarioRequerimientoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MantenimientoBeneficiarioRequerimientoImplToJson(
      this,
    );
  }
}

abstract class _MantenimientoBeneficiarioRequerimiento
    implements MantenimientoBeneficiarioRequerimiento {
  factory _MantenimientoBeneficiarioRequerimiento(
          {final BeneficiarioModel? beneficiario, final String otpIngresado}) =
      _$MantenimientoBeneficiarioRequerimientoImpl;

  factory _MantenimientoBeneficiarioRequerimiento.fromJson(
          Map<String, dynamic> json) =
      _$MantenimientoBeneficiarioRequerimientoImpl.fromJson;

  @override
  BeneficiarioModel? get beneficiario;
  @override
  String get otpIngresado;
  @override
  @JsonKey(ignore: true)
  _$$MantenimientoBeneficiarioRequerimientoImplCopyWith<
          _$MantenimientoBeneficiarioRequerimientoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MantenimientoBeneficiarioRespuesta _$MantenimientoBeneficiarioRespuestaFromJson(
    Map<String, dynamic> json) {
  return _MantenimientoBeneficiarioRespuesta.fromJson(json);
}

/// @nodoc
mixin _$MantenimientoBeneficiarioRespuesta {
  String get nombrePersona => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MantenimientoBeneficiarioRespuestaCopyWith<
          MantenimientoBeneficiarioRespuesta>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MantenimientoBeneficiarioRespuestaCopyWith<$Res> {
  factory $MantenimientoBeneficiarioRespuestaCopyWith(
          MantenimientoBeneficiarioRespuesta value,
          $Res Function(MantenimientoBeneficiarioRespuesta) then) =
      _$MantenimientoBeneficiarioRespuestaCopyWithImpl<$Res,
          MantenimientoBeneficiarioRespuesta>;
  @useResult
  $Res call({String nombrePersona});
}

/// @nodoc
class _$MantenimientoBeneficiarioRespuestaCopyWithImpl<$Res,
        $Val extends MantenimientoBeneficiarioRespuesta>
    implements $MantenimientoBeneficiarioRespuestaCopyWith<$Res> {
  _$MantenimientoBeneficiarioRespuestaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nombrePersona = null,
  }) {
    return _then(_value.copyWith(
      nombrePersona: null == nombrePersona
          ? _value.nombrePersona
          : nombrePersona // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MantenimientoBeneficiarioRespuestaImplCopyWith<$Res>
    implements $MantenimientoBeneficiarioRespuestaCopyWith<$Res> {
  factory _$$MantenimientoBeneficiarioRespuestaImplCopyWith(
          _$MantenimientoBeneficiarioRespuestaImpl value,
          $Res Function(_$MantenimientoBeneficiarioRespuestaImpl) then) =
      __$$MantenimientoBeneficiarioRespuestaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nombrePersona});
}

/// @nodoc
class __$$MantenimientoBeneficiarioRespuestaImplCopyWithImpl<$Res>
    extends _$MantenimientoBeneficiarioRespuestaCopyWithImpl<$Res,
        _$MantenimientoBeneficiarioRespuestaImpl>
    implements _$$MantenimientoBeneficiarioRespuestaImplCopyWith<$Res> {
  __$$MantenimientoBeneficiarioRespuestaImplCopyWithImpl(
      _$MantenimientoBeneficiarioRespuestaImpl _value,
      $Res Function(_$MantenimientoBeneficiarioRespuestaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nombrePersona = null,
  }) {
    return _then(_$MantenimientoBeneficiarioRespuestaImpl(
      nombrePersona: null == nombrePersona
          ? _value.nombrePersona
          : nombrePersona // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MantenimientoBeneficiarioRespuestaImpl
    implements _MantenimientoBeneficiarioRespuesta {
  _$MantenimientoBeneficiarioRespuestaImpl({this.nombrePersona = ''});

  factory _$MantenimientoBeneficiarioRespuestaImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MantenimientoBeneficiarioRespuestaImplFromJson(json);

  @override
  @JsonKey()
  final String nombrePersona;

  @override
  String toString() {
    return 'MantenimientoBeneficiarioRespuesta(nombrePersona: $nombrePersona)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MantenimientoBeneficiarioRespuestaImpl &&
            (identical(other.nombrePersona, nombrePersona) ||
                other.nombrePersona == nombrePersona));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nombrePersona);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MantenimientoBeneficiarioRespuestaImplCopyWith<
          _$MantenimientoBeneficiarioRespuestaImpl>
      get copyWith => __$$MantenimientoBeneficiarioRespuestaImplCopyWithImpl<
          _$MantenimientoBeneficiarioRespuestaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MantenimientoBeneficiarioRespuestaImplToJson(
      this,
    );
  }
}

abstract class _MantenimientoBeneficiarioRespuesta
    implements MantenimientoBeneficiarioRespuesta {
  factory _MantenimientoBeneficiarioRespuesta({final String nombrePersona}) =
      _$MantenimientoBeneficiarioRespuestaImpl;

  factory _MantenimientoBeneficiarioRespuesta.fromJson(
          Map<String, dynamic> json) =
      _$MantenimientoBeneficiarioRespuestaImpl.fromJson;

  @override
  String get nombrePersona;
  @override
  @JsonKey(ignore: true)
  _$$MantenimientoBeneficiarioRespuestaImplCopyWith<
          _$MantenimientoBeneficiarioRespuestaImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ValidaTransferenciaYGeneraOtpRequerimiento
    _$ValidaTransferenciaYGeneraOtpRequerimientoFromJson(
        Map<String, dynamic> json) {
  return _ValidaTransferenciaYGeneraOtpRequerimiento.fromJson(json);
}

/// @nodoc
mixin _$ValidaTransferenciaYGeneraOtpRequerimiento {
  int get idUsuario => throw _privateConstructorUsedError;
  String get cuentaOrigen => throw _privateConstructorUsedError;
  int get idBeneficiario => throw _privateConstructorUsedError;
  String get codigoConcepto => throw _privateConstructorUsedError;
  String get cuentaDestino => throw _privateConstructorUsedError;
  double get monto => throw _privateConstructorUsedError;
  String get descripcion => throw _privateConstructorUsedError;
  String get emailEnvio => throw _privateConstructorUsedError;
  String get celularEnvio => throw _privateConstructorUsedError;
  bool get esDirecta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ValidaTransferenciaYGeneraOtpRequerimientoCopyWith<
          ValidaTransferenciaYGeneraOtpRequerimiento>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidaTransferenciaYGeneraOtpRequerimientoCopyWith<$Res> {
  factory $ValidaTransferenciaYGeneraOtpRequerimientoCopyWith(
          ValidaTransferenciaYGeneraOtpRequerimiento value,
          $Res Function(ValidaTransferenciaYGeneraOtpRequerimiento) then) =
      _$ValidaTransferenciaYGeneraOtpRequerimientoCopyWithImpl<$Res,
          ValidaTransferenciaYGeneraOtpRequerimiento>;
  @useResult
  $Res call(
      {int idUsuario,
      String cuentaOrigen,
      int idBeneficiario,
      String codigoConcepto,
      String cuentaDestino,
      double monto,
      String descripcion,
      String emailEnvio,
      String celularEnvio,
      bool esDirecta});
}

/// @nodoc
class _$ValidaTransferenciaYGeneraOtpRequerimientoCopyWithImpl<$Res,
        $Val extends ValidaTransferenciaYGeneraOtpRequerimiento>
    implements $ValidaTransferenciaYGeneraOtpRequerimientoCopyWith<$Res> {
  _$ValidaTransferenciaYGeneraOtpRequerimientoCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idUsuario = null,
    Object? cuentaOrigen = null,
    Object? idBeneficiario = null,
    Object? codigoConcepto = null,
    Object? cuentaDestino = null,
    Object? monto = null,
    Object? descripcion = null,
    Object? emailEnvio = null,
    Object? celularEnvio = null,
    Object? esDirecta = null,
  }) {
    return _then(_value.copyWith(
      idUsuario: null == idUsuario
          ? _value.idUsuario
          : idUsuario // ignore: cast_nullable_to_non_nullable
              as int,
      cuentaOrigen: null == cuentaOrigen
          ? _value.cuentaOrigen
          : cuentaOrigen // ignore: cast_nullable_to_non_nullable
              as String,
      idBeneficiario: null == idBeneficiario
          ? _value.idBeneficiario
          : idBeneficiario // ignore: cast_nullable_to_non_nullable
              as int,
      codigoConcepto: null == codigoConcepto
          ? _value.codigoConcepto
          : codigoConcepto // ignore: cast_nullable_to_non_nullable
              as String,
      cuentaDestino: null == cuentaDestino
          ? _value.cuentaDestino
          : cuentaDestino // ignore: cast_nullable_to_non_nullable
              as String,
      monto: null == monto
          ? _value.monto
          : monto // ignore: cast_nullable_to_non_nullable
              as double,
      descripcion: null == descripcion
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
      emailEnvio: null == emailEnvio
          ? _value.emailEnvio
          : emailEnvio // ignore: cast_nullable_to_non_nullable
              as String,
      celularEnvio: null == celularEnvio
          ? _value.celularEnvio
          : celularEnvio // ignore: cast_nullable_to_non_nullable
              as String,
      esDirecta: null == esDirecta
          ? _value.esDirecta
          : esDirecta // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValidaTransferenciaYGeneraOtpRequerimientoImplCopyWith<$Res>
    implements $ValidaTransferenciaYGeneraOtpRequerimientoCopyWith<$Res> {
  factory _$$ValidaTransferenciaYGeneraOtpRequerimientoImplCopyWith(
          _$ValidaTransferenciaYGeneraOtpRequerimientoImpl value,
          $Res Function(_$ValidaTransferenciaYGeneraOtpRequerimientoImpl)
              then) =
      __$$ValidaTransferenciaYGeneraOtpRequerimientoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int idUsuario,
      String cuentaOrigen,
      int idBeneficiario,
      String codigoConcepto,
      String cuentaDestino,
      double monto,
      String descripcion,
      String emailEnvio,
      String celularEnvio,
      bool esDirecta});
}

/// @nodoc
class __$$ValidaTransferenciaYGeneraOtpRequerimientoImplCopyWithImpl<$Res>
    extends _$ValidaTransferenciaYGeneraOtpRequerimientoCopyWithImpl<$Res,
        _$ValidaTransferenciaYGeneraOtpRequerimientoImpl>
    implements _$$ValidaTransferenciaYGeneraOtpRequerimientoImplCopyWith<$Res> {
  __$$ValidaTransferenciaYGeneraOtpRequerimientoImplCopyWithImpl(
      _$ValidaTransferenciaYGeneraOtpRequerimientoImpl _value,
      $Res Function(_$ValidaTransferenciaYGeneraOtpRequerimientoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idUsuario = null,
    Object? cuentaOrigen = null,
    Object? idBeneficiario = null,
    Object? codigoConcepto = null,
    Object? cuentaDestino = null,
    Object? monto = null,
    Object? descripcion = null,
    Object? emailEnvio = null,
    Object? celularEnvio = null,
    Object? esDirecta = null,
  }) {
    return _then(_$ValidaTransferenciaYGeneraOtpRequerimientoImpl(
      idUsuario: null == idUsuario
          ? _value.idUsuario
          : idUsuario // ignore: cast_nullable_to_non_nullable
              as int,
      cuentaOrigen: null == cuentaOrigen
          ? _value.cuentaOrigen
          : cuentaOrigen // ignore: cast_nullable_to_non_nullable
              as String,
      idBeneficiario: null == idBeneficiario
          ? _value.idBeneficiario
          : idBeneficiario // ignore: cast_nullable_to_non_nullable
              as int,
      codigoConcepto: null == codigoConcepto
          ? _value.codigoConcepto
          : codigoConcepto // ignore: cast_nullable_to_non_nullable
              as String,
      cuentaDestino: null == cuentaDestino
          ? _value.cuentaDestino
          : cuentaDestino // ignore: cast_nullable_to_non_nullable
              as String,
      monto: null == monto
          ? _value.monto
          : monto // ignore: cast_nullable_to_non_nullable
              as double,
      descripcion: null == descripcion
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
      emailEnvio: null == emailEnvio
          ? _value.emailEnvio
          : emailEnvio // ignore: cast_nullable_to_non_nullable
              as String,
      celularEnvio: null == celularEnvio
          ? _value.celularEnvio
          : celularEnvio // ignore: cast_nullable_to_non_nullable
              as String,
      esDirecta: null == esDirecta
          ? _value.esDirecta
          : esDirecta // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValidaTransferenciaYGeneraOtpRequerimientoImpl
    implements _ValidaTransferenciaYGeneraOtpRequerimiento {
  _$ValidaTransferenciaYGeneraOtpRequerimientoImpl(
      {this.idUsuario = 0,
      this.cuentaOrigen = '',
      this.idBeneficiario = 0,
      this.codigoConcepto = '',
      this.cuentaDestino = '',
      this.monto = 0.00,
      this.descripcion = '',
      this.emailEnvio = '',
      this.celularEnvio = '',
      this.esDirecta = false});

  factory _$ValidaTransferenciaYGeneraOtpRequerimientoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ValidaTransferenciaYGeneraOtpRequerimientoImplFromJson(json);

  @override
  @JsonKey()
  final int idUsuario;
  @override
  @JsonKey()
  final String cuentaOrigen;
  @override
  @JsonKey()
  final int idBeneficiario;
  @override
  @JsonKey()
  final String codigoConcepto;
  @override
  @JsonKey()
  final String cuentaDestino;
  @override
  @JsonKey()
  final double monto;
  @override
  @JsonKey()
  final String descripcion;
  @override
  @JsonKey()
  final String emailEnvio;
  @override
  @JsonKey()
  final String celularEnvio;
  @override
  @JsonKey()
  final bool esDirecta;

  @override
  String toString() {
    return 'ValidaTransferenciaYGeneraOtpRequerimiento(idUsuario: $idUsuario, cuentaOrigen: $cuentaOrigen, idBeneficiario: $idBeneficiario, codigoConcepto: $codigoConcepto, cuentaDestino: $cuentaDestino, monto: $monto, descripcion: $descripcion, emailEnvio: $emailEnvio, celularEnvio: $celularEnvio, esDirecta: $esDirecta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidaTransferenciaYGeneraOtpRequerimientoImpl &&
            (identical(other.idUsuario, idUsuario) ||
                other.idUsuario == idUsuario) &&
            (identical(other.cuentaOrigen, cuentaOrigen) ||
                other.cuentaOrigen == cuentaOrigen) &&
            (identical(other.idBeneficiario, idBeneficiario) ||
                other.idBeneficiario == idBeneficiario) &&
            (identical(other.codigoConcepto, codigoConcepto) ||
                other.codigoConcepto == codigoConcepto) &&
            (identical(other.cuentaDestino, cuentaDestino) ||
                other.cuentaDestino == cuentaDestino) &&
            (identical(other.monto, monto) || other.monto == monto) &&
            (identical(other.descripcion, descripcion) ||
                other.descripcion == descripcion) &&
            (identical(other.emailEnvio, emailEnvio) ||
                other.emailEnvio == emailEnvio) &&
            (identical(other.celularEnvio, celularEnvio) ||
                other.celularEnvio == celularEnvio) &&
            (identical(other.esDirecta, esDirecta) ||
                other.esDirecta == esDirecta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      idUsuario,
      cuentaOrigen,
      idBeneficiario,
      codigoConcepto,
      cuentaDestino,
      monto,
      descripcion,
      emailEnvio,
      celularEnvio,
      esDirecta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidaTransferenciaYGeneraOtpRequerimientoImplCopyWith<
          _$ValidaTransferenciaYGeneraOtpRequerimientoImpl>
      get copyWith =>
          __$$ValidaTransferenciaYGeneraOtpRequerimientoImplCopyWithImpl<
                  _$ValidaTransferenciaYGeneraOtpRequerimientoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValidaTransferenciaYGeneraOtpRequerimientoImplToJson(
      this,
    );
  }
}

abstract class _ValidaTransferenciaYGeneraOtpRequerimiento
    implements ValidaTransferenciaYGeneraOtpRequerimiento {
  factory _ValidaTransferenciaYGeneraOtpRequerimiento(
      {final int idUsuario,
      final String cuentaOrigen,
      final int idBeneficiario,
      final String codigoConcepto,
      final String cuentaDestino,
      final double monto,
      final String descripcion,
      final String emailEnvio,
      final String celularEnvio,
      final bool esDirecta}) = _$ValidaTransferenciaYGeneraOtpRequerimientoImpl;

  factory _ValidaTransferenciaYGeneraOtpRequerimiento.fromJson(
          Map<String, dynamic> json) =
      _$ValidaTransferenciaYGeneraOtpRequerimientoImpl.fromJson;

  @override
  int get idUsuario;
  @override
  String get cuentaOrigen;
  @override
  int get idBeneficiario;
  @override
  String get codigoConcepto;
  @override
  String get cuentaDestino;
  @override
  double get monto;
  @override
  String get descripcion;
  @override
  String get emailEnvio;
  @override
  String get celularEnvio;
  @override
  bool get esDirecta;
  @override
  @JsonKey(ignore: true)
  _$$ValidaTransferenciaYGeneraOtpRequerimientoImplCopyWith<
          _$ValidaTransferenciaYGeneraOtpRequerimientoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ValidaTransferenciaYGeneraOtpRespuesta
    _$ValidaTransferenciaYGeneraOtpRespuestaFromJson(
        Map<String, dynamic> json) {
  return _ValidaTransferenciaYGeneraOtpRespuesta.fromJson(json);
}

/// @nodoc
mixin _$ValidaTransferenciaYGeneraOtpRespuesta {
  String get otp => throw _privateConstructorUsedError;
  DateTime? get expira => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ValidaTransferenciaYGeneraOtpRespuestaCopyWith<
          ValidaTransferenciaYGeneraOtpRespuesta>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidaTransferenciaYGeneraOtpRespuestaCopyWith<$Res> {
  factory $ValidaTransferenciaYGeneraOtpRespuestaCopyWith(
          ValidaTransferenciaYGeneraOtpRespuesta value,
          $Res Function(ValidaTransferenciaYGeneraOtpRespuesta) then) =
      _$ValidaTransferenciaYGeneraOtpRespuestaCopyWithImpl<$Res,
          ValidaTransferenciaYGeneraOtpRespuesta>;
  @useResult
  $Res call({String otp, DateTime? expira});
}

/// @nodoc
class _$ValidaTransferenciaYGeneraOtpRespuestaCopyWithImpl<$Res,
        $Val extends ValidaTransferenciaYGeneraOtpRespuesta>
    implements $ValidaTransferenciaYGeneraOtpRespuestaCopyWith<$Res> {
  _$ValidaTransferenciaYGeneraOtpRespuestaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
    Object? expira = freezed,
  }) {
    return _then(_value.copyWith(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      expira: freezed == expira
          ? _value.expira
          : expira // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValidaTransferenciaYGeneraOtpRespuestaImplCopyWith<$Res>
    implements $ValidaTransferenciaYGeneraOtpRespuestaCopyWith<$Res> {
  factory _$$ValidaTransferenciaYGeneraOtpRespuestaImplCopyWith(
          _$ValidaTransferenciaYGeneraOtpRespuestaImpl value,
          $Res Function(_$ValidaTransferenciaYGeneraOtpRespuestaImpl) then) =
      __$$ValidaTransferenciaYGeneraOtpRespuestaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String otp, DateTime? expira});
}

/// @nodoc
class __$$ValidaTransferenciaYGeneraOtpRespuestaImplCopyWithImpl<$Res>
    extends _$ValidaTransferenciaYGeneraOtpRespuestaCopyWithImpl<$Res,
        _$ValidaTransferenciaYGeneraOtpRespuestaImpl>
    implements _$$ValidaTransferenciaYGeneraOtpRespuestaImplCopyWith<$Res> {
  __$$ValidaTransferenciaYGeneraOtpRespuestaImplCopyWithImpl(
      _$ValidaTransferenciaYGeneraOtpRespuestaImpl _value,
      $Res Function(_$ValidaTransferenciaYGeneraOtpRespuestaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
    Object? expira = freezed,
  }) {
    return _then(_$ValidaTransferenciaYGeneraOtpRespuestaImpl(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      expira: freezed == expira
          ? _value.expira
          : expira // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValidaTransferenciaYGeneraOtpRespuestaImpl
    implements _ValidaTransferenciaYGeneraOtpRespuesta {
  _$ValidaTransferenciaYGeneraOtpRespuestaImpl({this.otp = '', this.expira});

  factory _$ValidaTransferenciaYGeneraOtpRespuestaImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ValidaTransferenciaYGeneraOtpRespuestaImplFromJson(json);

  @override
  @JsonKey()
  final String otp;
  @override
  final DateTime? expira;

  @override
  String toString() {
    return 'ValidaTransferenciaYGeneraOtpRespuesta(otp: $otp, expira: $expira)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidaTransferenciaYGeneraOtpRespuestaImpl &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.expira, expira) || other.expira == expira));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, otp, expira);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidaTransferenciaYGeneraOtpRespuestaImplCopyWith<
          _$ValidaTransferenciaYGeneraOtpRespuestaImpl>
      get copyWith =>
          __$$ValidaTransferenciaYGeneraOtpRespuestaImplCopyWithImpl<
              _$ValidaTransferenciaYGeneraOtpRespuestaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValidaTransferenciaYGeneraOtpRespuestaImplToJson(
      this,
    );
  }
}

abstract class _ValidaTransferenciaYGeneraOtpRespuesta
    implements ValidaTransferenciaYGeneraOtpRespuesta {
  factory _ValidaTransferenciaYGeneraOtpRespuesta(
      {final String otp,
      final DateTime? expira}) = _$ValidaTransferenciaYGeneraOtpRespuestaImpl;

  factory _ValidaTransferenciaYGeneraOtpRespuesta.fromJson(
          Map<String, dynamic> json) =
      _$ValidaTransferenciaYGeneraOtpRespuestaImpl.fromJson;

  @override
  String get otp;
  @override
  DateTime? get expira;
  @override
  @JsonKey(ignore: true)
  _$$ValidaTransferenciaYGeneraOtpRespuestaImplCopyWith<
          _$ValidaTransferenciaYGeneraOtpRespuestaImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProcesaTransferenciaDirectaRequerimiento
    _$ProcesaTransferenciaDirectaRequerimientoFromJson(
        Map<String, dynamic> json) {
  return _ProcesaTransferenciaDirectaRequerimiento.fromJson(json);
}

/// @nodoc
mixin _$ProcesaTransferenciaDirectaRequerimiento {
  int get idUsuario => throw _privateConstructorUsedError;
  String get codigoTxEmpresa => throw _privateConstructorUsedError;
  String get cuentaOrigen => throw _privateConstructorUsedError;
  int get idBeneficiario => throw _privateConstructorUsedError;
  String get codigoConcepto => throw _privateConstructorUsedError;
  String get cuentaDestino => throw _privateConstructorUsedError;
  double get monto => throw _privateConstructorUsedError;
  String get descripcion => throw _privateConstructorUsedError;
  String get emailEnvio => throw _privateConstructorUsedError;
  String get celularEnvio => throw _privateConstructorUsedError;
  String get otpIngresado => throw _privateConstructorUsedError;
  String get otpGenerado => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProcesaTransferenciaDirectaRequerimientoCopyWith<
          ProcesaTransferenciaDirectaRequerimiento>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProcesaTransferenciaDirectaRequerimientoCopyWith<$Res> {
  factory $ProcesaTransferenciaDirectaRequerimientoCopyWith(
          ProcesaTransferenciaDirectaRequerimiento value,
          $Res Function(ProcesaTransferenciaDirectaRequerimiento) then) =
      _$ProcesaTransferenciaDirectaRequerimientoCopyWithImpl<$Res,
          ProcesaTransferenciaDirectaRequerimiento>;
  @useResult
  $Res call(
      {int idUsuario,
      String codigoTxEmpresa,
      String cuentaOrigen,
      int idBeneficiario,
      String codigoConcepto,
      String cuentaDestino,
      double monto,
      String descripcion,
      String emailEnvio,
      String celularEnvio,
      String otpIngresado,
      String otpGenerado});
}

/// @nodoc
class _$ProcesaTransferenciaDirectaRequerimientoCopyWithImpl<$Res,
        $Val extends ProcesaTransferenciaDirectaRequerimiento>
    implements $ProcesaTransferenciaDirectaRequerimientoCopyWith<$Res> {
  _$ProcesaTransferenciaDirectaRequerimientoCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idUsuario = null,
    Object? codigoTxEmpresa = null,
    Object? cuentaOrigen = null,
    Object? idBeneficiario = null,
    Object? codigoConcepto = null,
    Object? cuentaDestino = null,
    Object? monto = null,
    Object? descripcion = null,
    Object? emailEnvio = null,
    Object? celularEnvio = null,
    Object? otpIngresado = null,
    Object? otpGenerado = null,
  }) {
    return _then(_value.copyWith(
      idUsuario: null == idUsuario
          ? _value.idUsuario
          : idUsuario // ignore: cast_nullable_to_non_nullable
              as int,
      codigoTxEmpresa: null == codigoTxEmpresa
          ? _value.codigoTxEmpresa
          : codigoTxEmpresa // ignore: cast_nullable_to_non_nullable
              as String,
      cuentaOrigen: null == cuentaOrigen
          ? _value.cuentaOrigen
          : cuentaOrigen // ignore: cast_nullable_to_non_nullable
              as String,
      idBeneficiario: null == idBeneficiario
          ? _value.idBeneficiario
          : idBeneficiario // ignore: cast_nullable_to_non_nullable
              as int,
      codigoConcepto: null == codigoConcepto
          ? _value.codigoConcepto
          : codigoConcepto // ignore: cast_nullable_to_non_nullable
              as String,
      cuentaDestino: null == cuentaDestino
          ? _value.cuentaDestino
          : cuentaDestino // ignore: cast_nullable_to_non_nullable
              as String,
      monto: null == monto
          ? _value.monto
          : monto // ignore: cast_nullable_to_non_nullable
              as double,
      descripcion: null == descripcion
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
      emailEnvio: null == emailEnvio
          ? _value.emailEnvio
          : emailEnvio // ignore: cast_nullable_to_non_nullable
              as String,
      celularEnvio: null == celularEnvio
          ? _value.celularEnvio
          : celularEnvio // ignore: cast_nullable_to_non_nullable
              as String,
      otpIngresado: null == otpIngresado
          ? _value.otpIngresado
          : otpIngresado // ignore: cast_nullable_to_non_nullable
              as String,
      otpGenerado: null == otpGenerado
          ? _value.otpGenerado
          : otpGenerado // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProcesaTransferenciaDirectaRequerimientoImplCopyWith<$Res>
    implements $ProcesaTransferenciaDirectaRequerimientoCopyWith<$Res> {
  factory _$$ProcesaTransferenciaDirectaRequerimientoImplCopyWith(
          _$ProcesaTransferenciaDirectaRequerimientoImpl value,
          $Res Function(_$ProcesaTransferenciaDirectaRequerimientoImpl) then) =
      __$$ProcesaTransferenciaDirectaRequerimientoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int idUsuario,
      String codigoTxEmpresa,
      String cuentaOrigen,
      int idBeneficiario,
      String codigoConcepto,
      String cuentaDestino,
      double monto,
      String descripcion,
      String emailEnvio,
      String celularEnvio,
      String otpIngresado,
      String otpGenerado});
}

/// @nodoc
class __$$ProcesaTransferenciaDirectaRequerimientoImplCopyWithImpl<$Res>
    extends _$ProcesaTransferenciaDirectaRequerimientoCopyWithImpl<$Res,
        _$ProcesaTransferenciaDirectaRequerimientoImpl>
    implements _$$ProcesaTransferenciaDirectaRequerimientoImplCopyWith<$Res> {
  __$$ProcesaTransferenciaDirectaRequerimientoImplCopyWithImpl(
      _$ProcesaTransferenciaDirectaRequerimientoImpl _value,
      $Res Function(_$ProcesaTransferenciaDirectaRequerimientoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idUsuario = null,
    Object? codigoTxEmpresa = null,
    Object? cuentaOrigen = null,
    Object? idBeneficiario = null,
    Object? codigoConcepto = null,
    Object? cuentaDestino = null,
    Object? monto = null,
    Object? descripcion = null,
    Object? emailEnvio = null,
    Object? celularEnvio = null,
    Object? otpIngresado = null,
    Object? otpGenerado = null,
  }) {
    return _then(_$ProcesaTransferenciaDirectaRequerimientoImpl(
      idUsuario: null == idUsuario
          ? _value.idUsuario
          : idUsuario // ignore: cast_nullable_to_non_nullable
              as int,
      codigoTxEmpresa: null == codigoTxEmpresa
          ? _value.codigoTxEmpresa
          : codigoTxEmpresa // ignore: cast_nullable_to_non_nullable
              as String,
      cuentaOrigen: null == cuentaOrigen
          ? _value.cuentaOrigen
          : cuentaOrigen // ignore: cast_nullable_to_non_nullable
              as String,
      idBeneficiario: null == idBeneficiario
          ? _value.idBeneficiario
          : idBeneficiario // ignore: cast_nullable_to_non_nullable
              as int,
      codigoConcepto: null == codigoConcepto
          ? _value.codigoConcepto
          : codigoConcepto // ignore: cast_nullable_to_non_nullable
              as String,
      cuentaDestino: null == cuentaDestino
          ? _value.cuentaDestino
          : cuentaDestino // ignore: cast_nullable_to_non_nullable
              as String,
      monto: null == monto
          ? _value.monto
          : monto // ignore: cast_nullable_to_non_nullable
              as double,
      descripcion: null == descripcion
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
      emailEnvio: null == emailEnvio
          ? _value.emailEnvio
          : emailEnvio // ignore: cast_nullable_to_non_nullable
              as String,
      celularEnvio: null == celularEnvio
          ? _value.celularEnvio
          : celularEnvio // ignore: cast_nullable_to_non_nullable
              as String,
      otpIngresado: null == otpIngresado
          ? _value.otpIngresado
          : otpIngresado // ignore: cast_nullable_to_non_nullable
              as String,
      otpGenerado: null == otpGenerado
          ? _value.otpGenerado
          : otpGenerado // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProcesaTransferenciaDirectaRequerimientoImpl
    implements _ProcesaTransferenciaDirectaRequerimiento {
  _$ProcesaTransferenciaDirectaRequerimientoImpl(
      {this.idUsuario = 0,
      this.codigoTxEmpresa = '',
      this.cuentaOrigen = '',
      this.idBeneficiario = 0,
      this.codigoConcepto = '',
      this.cuentaDestino = '',
      this.monto = 0.00,
      this.descripcion = '',
      this.emailEnvio = '',
      this.celularEnvio = '',
      this.otpIngresado = '',
      this.otpGenerado = ''});

  factory _$ProcesaTransferenciaDirectaRequerimientoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ProcesaTransferenciaDirectaRequerimientoImplFromJson(json);

  @override
  @JsonKey()
  final int idUsuario;
  @override
  @JsonKey()
  final String codigoTxEmpresa;
  @override
  @JsonKey()
  final String cuentaOrigen;
  @override
  @JsonKey()
  final int idBeneficiario;
  @override
  @JsonKey()
  final String codigoConcepto;
  @override
  @JsonKey()
  final String cuentaDestino;
  @override
  @JsonKey()
  final double monto;
  @override
  @JsonKey()
  final String descripcion;
  @override
  @JsonKey()
  final String emailEnvio;
  @override
  @JsonKey()
  final String celularEnvio;
  @override
  @JsonKey()
  final String otpIngresado;
  @override
  @JsonKey()
  final String otpGenerado;

  @override
  String toString() {
    return 'ProcesaTransferenciaDirectaRequerimiento(idUsuario: $idUsuario, codigoTxEmpresa: $codigoTxEmpresa, cuentaOrigen: $cuentaOrigen, idBeneficiario: $idBeneficiario, codigoConcepto: $codigoConcepto, cuentaDestino: $cuentaDestino, monto: $monto, descripcion: $descripcion, emailEnvio: $emailEnvio, celularEnvio: $celularEnvio, otpIngresado: $otpIngresado, otpGenerado: $otpGenerado)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProcesaTransferenciaDirectaRequerimientoImpl &&
            (identical(other.idUsuario, idUsuario) ||
                other.idUsuario == idUsuario) &&
            (identical(other.codigoTxEmpresa, codigoTxEmpresa) ||
                other.codigoTxEmpresa == codigoTxEmpresa) &&
            (identical(other.cuentaOrigen, cuentaOrigen) ||
                other.cuentaOrigen == cuentaOrigen) &&
            (identical(other.idBeneficiario, idBeneficiario) ||
                other.idBeneficiario == idBeneficiario) &&
            (identical(other.codigoConcepto, codigoConcepto) ||
                other.codigoConcepto == codigoConcepto) &&
            (identical(other.cuentaDestino, cuentaDestino) ||
                other.cuentaDestino == cuentaDestino) &&
            (identical(other.monto, monto) || other.monto == monto) &&
            (identical(other.descripcion, descripcion) ||
                other.descripcion == descripcion) &&
            (identical(other.emailEnvio, emailEnvio) ||
                other.emailEnvio == emailEnvio) &&
            (identical(other.celularEnvio, celularEnvio) ||
                other.celularEnvio == celularEnvio) &&
            (identical(other.otpIngresado, otpIngresado) ||
                other.otpIngresado == otpIngresado) &&
            (identical(other.otpGenerado, otpGenerado) ||
                other.otpGenerado == otpGenerado));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      idUsuario,
      codigoTxEmpresa,
      cuentaOrigen,
      idBeneficiario,
      codigoConcepto,
      cuentaDestino,
      monto,
      descripcion,
      emailEnvio,
      celularEnvio,
      otpIngresado,
      otpGenerado);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProcesaTransferenciaDirectaRequerimientoImplCopyWith<
          _$ProcesaTransferenciaDirectaRequerimientoImpl>
      get copyWith =>
          __$$ProcesaTransferenciaDirectaRequerimientoImplCopyWithImpl<
              _$ProcesaTransferenciaDirectaRequerimientoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProcesaTransferenciaDirectaRequerimientoImplToJson(
      this,
    );
  }
}

abstract class _ProcesaTransferenciaDirectaRequerimiento
    implements ProcesaTransferenciaDirectaRequerimiento {
  factory _ProcesaTransferenciaDirectaRequerimiento(
          {final int idUsuario,
          final String codigoTxEmpresa,
          final String cuentaOrigen,
          final int idBeneficiario,
          final String codigoConcepto,
          final String cuentaDestino,
          final double monto,
          final String descripcion,
          final String emailEnvio,
          final String celularEnvio,
          final String otpIngresado,
          final String otpGenerado}) =
      _$ProcesaTransferenciaDirectaRequerimientoImpl;

  factory _ProcesaTransferenciaDirectaRequerimiento.fromJson(
          Map<String, dynamic> json) =
      _$ProcesaTransferenciaDirectaRequerimientoImpl.fromJson;

  @override
  int get idUsuario;
  @override
  String get codigoTxEmpresa;
  @override
  String get cuentaOrigen;
  @override
  int get idBeneficiario;
  @override
  String get codigoConcepto;
  @override
  String get cuentaDestino;
  @override
  double get monto;
  @override
  String get descripcion;
  @override
  String get emailEnvio;
  @override
  String get celularEnvio;
  @override
  String get otpIngresado;
  @override
  String get otpGenerado;
  @override
  @JsonKey(ignore: true)
  _$$ProcesaTransferenciaDirectaRequerimientoImplCopyWith<
          _$ProcesaTransferenciaDirectaRequerimientoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProcesaTransfernciaDirectaRespuesta
    _$ProcesaTransfernciaDirectaRespuestaFromJson(Map<String, dynamic> json) {
  return _ProcesaTransfernciaDirectaRespuesta.fromJson(json);
}

/// @nodoc
mixin _$ProcesaTransfernciaDirectaRespuesta {
  String get documento => throw _privateConstructorUsedError;
  String get fecha => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProcesaTransfernciaDirectaRespuestaCopyWith<
          ProcesaTransfernciaDirectaRespuesta>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProcesaTransfernciaDirectaRespuestaCopyWith<$Res> {
  factory $ProcesaTransfernciaDirectaRespuestaCopyWith(
          ProcesaTransfernciaDirectaRespuesta value,
          $Res Function(ProcesaTransfernciaDirectaRespuesta) then) =
      _$ProcesaTransfernciaDirectaRespuestaCopyWithImpl<$Res,
          ProcesaTransfernciaDirectaRespuesta>;
  @useResult
  $Res call({String documento, String fecha});
}

/// @nodoc
class _$ProcesaTransfernciaDirectaRespuestaCopyWithImpl<$Res,
        $Val extends ProcesaTransfernciaDirectaRespuesta>
    implements $ProcesaTransfernciaDirectaRespuestaCopyWith<$Res> {
  _$ProcesaTransfernciaDirectaRespuestaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documento = null,
    Object? fecha = null,
  }) {
    return _then(_value.copyWith(
      documento: null == documento
          ? _value.documento
          : documento // ignore: cast_nullable_to_non_nullable
              as String,
      fecha: null == fecha
          ? _value.fecha
          : fecha // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProcesaTransfernciaDirectaRespuestaImplCopyWith<$Res>
    implements $ProcesaTransfernciaDirectaRespuestaCopyWith<$Res> {
  factory _$$ProcesaTransfernciaDirectaRespuestaImplCopyWith(
          _$ProcesaTransfernciaDirectaRespuestaImpl value,
          $Res Function(_$ProcesaTransfernciaDirectaRespuestaImpl) then) =
      __$$ProcesaTransfernciaDirectaRespuestaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String documento, String fecha});
}

/// @nodoc
class __$$ProcesaTransfernciaDirectaRespuestaImplCopyWithImpl<$Res>
    extends _$ProcesaTransfernciaDirectaRespuestaCopyWithImpl<$Res,
        _$ProcesaTransfernciaDirectaRespuestaImpl>
    implements _$$ProcesaTransfernciaDirectaRespuestaImplCopyWith<$Res> {
  __$$ProcesaTransfernciaDirectaRespuestaImplCopyWithImpl(
      _$ProcesaTransfernciaDirectaRespuestaImpl _value,
      $Res Function(_$ProcesaTransfernciaDirectaRespuestaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documento = null,
    Object? fecha = null,
  }) {
    return _then(_$ProcesaTransfernciaDirectaRespuestaImpl(
      documento: null == documento
          ? _value.documento
          : documento // ignore: cast_nullable_to_non_nullable
              as String,
      fecha: null == fecha
          ? _value.fecha
          : fecha // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProcesaTransfernciaDirectaRespuestaImpl
    implements _ProcesaTransfernciaDirectaRespuesta {
  _$ProcesaTransfernciaDirectaRespuestaImpl(
      {this.documento = '', this.fecha = ''});

  factory _$ProcesaTransfernciaDirectaRespuestaImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ProcesaTransfernciaDirectaRespuestaImplFromJson(json);

  @override
  @JsonKey()
  final String documento;
  @override
  @JsonKey()
  final String fecha;

  @override
  String toString() {
    return 'ProcesaTransfernciaDirectaRespuesta(documento: $documento, fecha: $fecha)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProcesaTransfernciaDirectaRespuestaImpl &&
            (identical(other.documento, documento) ||
                other.documento == documento) &&
            (identical(other.fecha, fecha) || other.fecha == fecha));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, documento, fecha);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProcesaTransfernciaDirectaRespuestaImplCopyWith<
          _$ProcesaTransfernciaDirectaRespuestaImpl>
      get copyWith => __$$ProcesaTransfernciaDirectaRespuestaImplCopyWithImpl<
          _$ProcesaTransfernciaDirectaRespuestaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProcesaTransfernciaDirectaRespuestaImplToJson(
      this,
    );
  }
}

abstract class _ProcesaTransfernciaDirectaRespuesta
    implements ProcesaTransfernciaDirectaRespuesta {
  factory _ProcesaTransfernciaDirectaRespuesta(
      {final String documento,
      final String fecha}) = _$ProcesaTransfernciaDirectaRespuestaImpl;

  factory _ProcesaTransfernciaDirectaRespuesta.fromJson(
          Map<String, dynamic> json) =
      _$ProcesaTransfernciaDirectaRespuestaImpl.fromJson;

  @override
  String get documento;
  @override
  String get fecha;
  @override
  @JsonKey(ignore: true)
  _$$ProcesaTransfernciaDirectaRespuestaImplCopyWith<
          _$ProcesaTransfernciaDirectaRespuestaImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultaRequisitosTransferenciaRespuesta
    _$ConsultaRequisitosTransferenciaRespuestaFromJson(
        Map<String, dynamic> json) {
  return _ConsultaRequisitosTransferenciaRespuesta.fromJson(json);
}

/// @nodoc
mixin _$ConsultaRequisitosTransferenciaRespuesta {
  double get comision => throw _privateConstructorUsedError;
  List<ConceptoTransferenciaModel> get conceptosTransferencia =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConsultaRequisitosTransferenciaRespuestaCopyWith<
          ConsultaRequisitosTransferenciaRespuesta>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultaRequisitosTransferenciaRespuestaCopyWith<$Res> {
  factory $ConsultaRequisitosTransferenciaRespuestaCopyWith(
          ConsultaRequisitosTransferenciaRespuesta value,
          $Res Function(ConsultaRequisitosTransferenciaRespuesta) then) =
      _$ConsultaRequisitosTransferenciaRespuestaCopyWithImpl<$Res,
          ConsultaRequisitosTransferenciaRespuesta>;
  @useResult
  $Res call(
      {double comision,
      List<ConceptoTransferenciaModel> conceptosTransferencia});
}

/// @nodoc
class _$ConsultaRequisitosTransferenciaRespuestaCopyWithImpl<$Res,
        $Val extends ConsultaRequisitosTransferenciaRespuesta>
    implements $ConsultaRequisitosTransferenciaRespuestaCopyWith<$Res> {
  _$ConsultaRequisitosTransferenciaRespuestaCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comision = null,
    Object? conceptosTransferencia = null,
  }) {
    return _then(_value.copyWith(
      comision: null == comision
          ? _value.comision
          : comision // ignore: cast_nullable_to_non_nullable
              as double,
      conceptosTransferencia: null == conceptosTransferencia
          ? _value.conceptosTransferencia
          : conceptosTransferencia // ignore: cast_nullable_to_non_nullable
              as List<ConceptoTransferenciaModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConsultaRequisitosTransferenciaRespuestaImplCopyWith<$Res>
    implements $ConsultaRequisitosTransferenciaRespuestaCopyWith<$Res> {
  factory _$$ConsultaRequisitosTransferenciaRespuestaImplCopyWith(
          _$ConsultaRequisitosTransferenciaRespuestaImpl value,
          $Res Function(_$ConsultaRequisitosTransferenciaRespuestaImpl) then) =
      __$$ConsultaRequisitosTransferenciaRespuestaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double comision,
      List<ConceptoTransferenciaModel> conceptosTransferencia});
}

/// @nodoc
class __$$ConsultaRequisitosTransferenciaRespuestaImplCopyWithImpl<$Res>
    extends _$ConsultaRequisitosTransferenciaRespuestaCopyWithImpl<$Res,
        _$ConsultaRequisitosTransferenciaRespuestaImpl>
    implements _$$ConsultaRequisitosTransferenciaRespuestaImplCopyWith<$Res> {
  __$$ConsultaRequisitosTransferenciaRespuestaImplCopyWithImpl(
      _$ConsultaRequisitosTransferenciaRespuestaImpl _value,
      $Res Function(_$ConsultaRequisitosTransferenciaRespuestaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comision = null,
    Object? conceptosTransferencia = null,
  }) {
    return _then(_$ConsultaRequisitosTransferenciaRespuestaImpl(
      comision: null == comision
          ? _value.comision
          : comision // ignore: cast_nullable_to_non_nullable
              as double,
      conceptosTransferencia: null == conceptosTransferencia
          ? _value._conceptosTransferencia
          : conceptosTransferencia // ignore: cast_nullable_to_non_nullable
              as List<ConceptoTransferenciaModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultaRequisitosTransferenciaRespuestaImpl
    implements _ConsultaRequisitosTransferenciaRespuesta {
  _$ConsultaRequisitosTransferenciaRespuestaImpl(
      {this.comision = 0.00,
      final List<ConceptoTransferenciaModel> conceptosTransferencia = const []})
      : _conceptosTransferencia = conceptosTransferencia;

  factory _$ConsultaRequisitosTransferenciaRespuestaImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultaRequisitosTransferenciaRespuestaImplFromJson(json);

  @override
  @JsonKey()
  final double comision;
  final List<ConceptoTransferenciaModel> _conceptosTransferencia;
  @override
  @JsonKey()
  List<ConceptoTransferenciaModel> get conceptosTransferencia {
    if (_conceptosTransferencia is EqualUnmodifiableListView)
      return _conceptosTransferencia;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conceptosTransferencia);
  }

  @override
  String toString() {
    return 'ConsultaRequisitosTransferenciaRespuesta(comision: $comision, conceptosTransferencia: $conceptosTransferencia)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultaRequisitosTransferenciaRespuestaImpl &&
            (identical(other.comision, comision) ||
                other.comision == comision) &&
            const DeepCollectionEquality().equals(
                other._conceptosTransferencia, _conceptosTransferencia));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, comision,
      const DeepCollectionEquality().hash(_conceptosTransferencia));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultaRequisitosTransferenciaRespuestaImplCopyWith<
          _$ConsultaRequisitosTransferenciaRespuestaImpl>
      get copyWith =>
          __$$ConsultaRequisitosTransferenciaRespuestaImplCopyWithImpl<
              _$ConsultaRequisitosTransferenciaRespuestaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultaRequisitosTransferenciaRespuestaImplToJson(
      this,
    );
  }
}

abstract class _ConsultaRequisitosTransferenciaRespuesta
    implements ConsultaRequisitosTransferenciaRespuesta {
  factory _ConsultaRequisitosTransferenciaRespuesta(
          {final double comision,
          final List<ConceptoTransferenciaModel> conceptosTransferencia}) =
      _$ConsultaRequisitosTransferenciaRespuestaImpl;

  factory _ConsultaRequisitosTransferenciaRespuesta.fromJson(
          Map<String, dynamic> json) =
      _$ConsultaRequisitosTransferenciaRespuestaImpl.fromJson;

  @override
  double get comision;
  @override
  List<ConceptoTransferenciaModel> get conceptosTransferencia;
  @override
  @JsonKey(ignore: true)
  _$$ConsultaRequisitosTransferenciaRespuestaImplCopyWith<
          _$ConsultaRequisitosTransferenciaRespuestaImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConceptoTransferenciaModel _$ConceptoTransferenciaModelFromJson(
    Map<String, dynamic> json) {
  return _ConceptoTransferenciaModel.fromJson(json);
}

/// @nodoc
mixin _$ConceptoTransferenciaModel {
  String get codigo => throw _privateConstructorUsedError;
  String get nombre => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConceptoTransferenciaModelCopyWith<ConceptoTransferenciaModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConceptoTransferenciaModelCopyWith<$Res> {
  factory $ConceptoTransferenciaModelCopyWith(ConceptoTransferenciaModel value,
          $Res Function(ConceptoTransferenciaModel) then) =
      _$ConceptoTransferenciaModelCopyWithImpl<$Res,
          ConceptoTransferenciaModel>;
  @useResult
  $Res call({String codigo, String nombre});
}

/// @nodoc
class _$ConceptoTransferenciaModelCopyWithImpl<$Res,
        $Val extends ConceptoTransferenciaModel>
    implements $ConceptoTransferenciaModelCopyWith<$Res> {
  _$ConceptoTransferenciaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codigo = null,
    Object? nombre = null,
  }) {
    return _then(_value.copyWith(
      codigo: null == codigo
          ? _value.codigo
          : codigo // ignore: cast_nullable_to_non_nullable
              as String,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConceptoTransferenciaModelImplCopyWith<$Res>
    implements $ConceptoTransferenciaModelCopyWith<$Res> {
  factory _$$ConceptoTransferenciaModelImplCopyWith(
          _$ConceptoTransferenciaModelImpl value,
          $Res Function(_$ConceptoTransferenciaModelImpl) then) =
      __$$ConceptoTransferenciaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String codigo, String nombre});
}

/// @nodoc
class __$$ConceptoTransferenciaModelImplCopyWithImpl<$Res>
    extends _$ConceptoTransferenciaModelCopyWithImpl<$Res,
        _$ConceptoTransferenciaModelImpl>
    implements _$$ConceptoTransferenciaModelImplCopyWith<$Res> {
  __$$ConceptoTransferenciaModelImplCopyWithImpl(
      _$ConceptoTransferenciaModelImpl _value,
      $Res Function(_$ConceptoTransferenciaModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codigo = null,
    Object? nombre = null,
  }) {
    return _then(_$ConceptoTransferenciaModelImpl(
      codigo: null == codigo
          ? _value.codigo
          : codigo // ignore: cast_nullable_to_non_nullable
              as String,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConceptoTransferenciaModelImpl implements _ConceptoTransferenciaModel {
  _$ConceptoTransferenciaModelImpl({this.codigo = '', this.nombre = ''});

  factory _$ConceptoTransferenciaModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConceptoTransferenciaModelImplFromJson(json);

  @override
  @JsonKey()
  final String codigo;
  @override
  @JsonKey()
  final String nombre;

  @override
  String toString() {
    return 'ConceptoTransferenciaModel(codigo: $codigo, nombre: $nombre)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConceptoTransferenciaModelImpl &&
            (identical(other.codigo, codigo) || other.codigo == codigo) &&
            (identical(other.nombre, nombre) || other.nombre == nombre));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, codigo, nombre);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConceptoTransferenciaModelImplCopyWith<_$ConceptoTransferenciaModelImpl>
      get copyWith => __$$ConceptoTransferenciaModelImplCopyWithImpl<
          _$ConceptoTransferenciaModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConceptoTransferenciaModelImplToJson(
      this,
    );
  }
}

abstract class _ConceptoTransferenciaModel
    implements ConceptoTransferenciaModel {
  factory _ConceptoTransferenciaModel(
      {final String codigo,
      final String nombre}) = _$ConceptoTransferenciaModelImpl;

  factory _ConceptoTransferenciaModel.fromJson(Map<String, dynamic> json) =
      _$ConceptoTransferenciaModelImpl.fromJson;

  @override
  String get codigo;
  @override
  String get nombre;
  @override
  @JsonKey(ignore: true)
  _$$ConceptoTransferenciaModelImplCopyWith<_$ConceptoTransferenciaModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProcesaAbonoPrestamoRequerimiento _$ProcesaAbonoPrestamoRequerimientoFromJson(
    Map<String, dynamic> json) {
  return _ProcesaAbonoPrestamoRequerimiento.fromJson(json);
}

/// @nodoc
mixin _$ProcesaAbonoPrestamoRequerimiento {
  int get idUsuario => throw _privateConstructorUsedError;
  String get codigoPrestamo => throw _privateConstructorUsedError;
  String get cuentaDebito => throw _privateConstructorUsedError;
  double get monto => throw _privateConstructorUsedError;
  String get emailEnvio => throw _privateConstructorUsedError;
  String get concepto => throw _privateConstructorUsedError;
  String get otpIngresado => throw _privateConstructorUsedError;
  String get otpGenerado => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProcesaAbonoPrestamoRequerimientoCopyWith<ProcesaAbonoPrestamoRequerimiento>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProcesaAbonoPrestamoRequerimientoCopyWith<$Res> {
  factory $ProcesaAbonoPrestamoRequerimientoCopyWith(
          ProcesaAbonoPrestamoRequerimiento value,
          $Res Function(ProcesaAbonoPrestamoRequerimiento) then) =
      _$ProcesaAbonoPrestamoRequerimientoCopyWithImpl<$Res,
          ProcesaAbonoPrestamoRequerimiento>;
  @useResult
  $Res call(
      {int idUsuario,
      String codigoPrestamo,
      String cuentaDebito,
      double monto,
      String emailEnvio,
      String concepto,
      String otpIngresado,
      String otpGenerado});
}

/// @nodoc
class _$ProcesaAbonoPrestamoRequerimientoCopyWithImpl<$Res,
        $Val extends ProcesaAbonoPrestamoRequerimiento>
    implements $ProcesaAbonoPrestamoRequerimientoCopyWith<$Res> {
  _$ProcesaAbonoPrestamoRequerimientoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idUsuario = null,
    Object? codigoPrestamo = null,
    Object? cuentaDebito = null,
    Object? monto = null,
    Object? emailEnvio = null,
    Object? concepto = null,
    Object? otpIngresado = null,
    Object? otpGenerado = null,
  }) {
    return _then(_value.copyWith(
      idUsuario: null == idUsuario
          ? _value.idUsuario
          : idUsuario // ignore: cast_nullable_to_non_nullable
              as int,
      codigoPrestamo: null == codigoPrestamo
          ? _value.codigoPrestamo
          : codigoPrestamo // ignore: cast_nullable_to_non_nullable
              as String,
      cuentaDebito: null == cuentaDebito
          ? _value.cuentaDebito
          : cuentaDebito // ignore: cast_nullable_to_non_nullable
              as String,
      monto: null == monto
          ? _value.monto
          : monto // ignore: cast_nullable_to_non_nullable
              as double,
      emailEnvio: null == emailEnvio
          ? _value.emailEnvio
          : emailEnvio // ignore: cast_nullable_to_non_nullable
              as String,
      concepto: null == concepto
          ? _value.concepto
          : concepto // ignore: cast_nullable_to_non_nullable
              as String,
      otpIngresado: null == otpIngresado
          ? _value.otpIngresado
          : otpIngresado // ignore: cast_nullable_to_non_nullable
              as String,
      otpGenerado: null == otpGenerado
          ? _value.otpGenerado
          : otpGenerado // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProcesaAbonoPrestamoRequerimientoImplCopyWith<$Res>
    implements $ProcesaAbonoPrestamoRequerimientoCopyWith<$Res> {
  factory _$$ProcesaAbonoPrestamoRequerimientoImplCopyWith(
          _$ProcesaAbonoPrestamoRequerimientoImpl value,
          $Res Function(_$ProcesaAbonoPrestamoRequerimientoImpl) then) =
      __$$ProcesaAbonoPrestamoRequerimientoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int idUsuario,
      String codigoPrestamo,
      String cuentaDebito,
      double monto,
      String emailEnvio,
      String concepto,
      String otpIngresado,
      String otpGenerado});
}

/// @nodoc
class __$$ProcesaAbonoPrestamoRequerimientoImplCopyWithImpl<$Res>
    extends _$ProcesaAbonoPrestamoRequerimientoCopyWithImpl<$Res,
        _$ProcesaAbonoPrestamoRequerimientoImpl>
    implements _$$ProcesaAbonoPrestamoRequerimientoImplCopyWith<$Res> {
  __$$ProcesaAbonoPrestamoRequerimientoImplCopyWithImpl(
      _$ProcesaAbonoPrestamoRequerimientoImpl _value,
      $Res Function(_$ProcesaAbonoPrestamoRequerimientoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idUsuario = null,
    Object? codigoPrestamo = null,
    Object? cuentaDebito = null,
    Object? monto = null,
    Object? emailEnvio = null,
    Object? concepto = null,
    Object? otpIngresado = null,
    Object? otpGenerado = null,
  }) {
    return _then(_$ProcesaAbonoPrestamoRequerimientoImpl(
      idUsuario: null == idUsuario
          ? _value.idUsuario
          : idUsuario // ignore: cast_nullable_to_non_nullable
              as int,
      codigoPrestamo: null == codigoPrestamo
          ? _value.codigoPrestamo
          : codigoPrestamo // ignore: cast_nullable_to_non_nullable
              as String,
      cuentaDebito: null == cuentaDebito
          ? _value.cuentaDebito
          : cuentaDebito // ignore: cast_nullable_to_non_nullable
              as String,
      monto: null == monto
          ? _value.monto
          : monto // ignore: cast_nullable_to_non_nullable
              as double,
      emailEnvio: null == emailEnvio
          ? _value.emailEnvio
          : emailEnvio // ignore: cast_nullable_to_non_nullable
              as String,
      concepto: null == concepto
          ? _value.concepto
          : concepto // ignore: cast_nullable_to_non_nullable
              as String,
      otpIngresado: null == otpIngresado
          ? _value.otpIngresado
          : otpIngresado // ignore: cast_nullable_to_non_nullable
              as String,
      otpGenerado: null == otpGenerado
          ? _value.otpGenerado
          : otpGenerado // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProcesaAbonoPrestamoRequerimientoImpl
    implements _ProcesaAbonoPrestamoRequerimiento {
  _$ProcesaAbonoPrestamoRequerimientoImpl(
      {this.idUsuario = 0,
      this.codigoPrestamo = '',
      this.cuentaDebito = '',
      this.monto = 0.00,
      this.emailEnvio = '',
      this.concepto = '',
      this.otpIngresado = '',
      this.otpGenerado = ''});

  factory _$ProcesaAbonoPrestamoRequerimientoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ProcesaAbonoPrestamoRequerimientoImplFromJson(json);

  @override
  @JsonKey()
  final int idUsuario;
  @override
  @JsonKey()
  final String codigoPrestamo;
  @override
  @JsonKey()
  final String cuentaDebito;
  @override
  @JsonKey()
  final double monto;
  @override
  @JsonKey()
  final String emailEnvio;
  @override
  @JsonKey()
  final String concepto;
  @override
  @JsonKey()
  final String otpIngresado;
  @override
  @JsonKey()
  final String otpGenerado;

  @override
  String toString() {
    return 'ProcesaAbonoPrestamoRequerimiento(idUsuario: $idUsuario, codigoPrestamo: $codigoPrestamo, cuentaDebito: $cuentaDebito, monto: $monto, emailEnvio: $emailEnvio, concepto: $concepto, otpIngresado: $otpIngresado, otpGenerado: $otpGenerado)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProcesaAbonoPrestamoRequerimientoImpl &&
            (identical(other.idUsuario, idUsuario) ||
                other.idUsuario == idUsuario) &&
            (identical(other.codigoPrestamo, codigoPrestamo) ||
                other.codigoPrestamo == codigoPrestamo) &&
            (identical(other.cuentaDebito, cuentaDebito) ||
                other.cuentaDebito == cuentaDebito) &&
            (identical(other.monto, monto) || other.monto == monto) &&
            (identical(other.emailEnvio, emailEnvio) ||
                other.emailEnvio == emailEnvio) &&
            (identical(other.concepto, concepto) ||
                other.concepto == concepto) &&
            (identical(other.otpIngresado, otpIngresado) ||
                other.otpIngresado == otpIngresado) &&
            (identical(other.otpGenerado, otpGenerado) ||
                other.otpGenerado == otpGenerado));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, idUsuario, codigoPrestamo,
      cuentaDebito, monto, emailEnvio, concepto, otpIngresado, otpGenerado);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProcesaAbonoPrestamoRequerimientoImplCopyWith<
          _$ProcesaAbonoPrestamoRequerimientoImpl>
      get copyWith => __$$ProcesaAbonoPrestamoRequerimientoImplCopyWithImpl<
          _$ProcesaAbonoPrestamoRequerimientoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProcesaAbonoPrestamoRequerimientoImplToJson(
      this,
    );
  }
}

abstract class _ProcesaAbonoPrestamoRequerimiento
    implements ProcesaAbonoPrestamoRequerimiento {
  factory _ProcesaAbonoPrestamoRequerimiento(
      {final int idUsuario,
      final String codigoPrestamo,
      final String cuentaDebito,
      final double monto,
      final String emailEnvio,
      final String concepto,
      final String otpIngresado,
      final String otpGenerado}) = _$ProcesaAbonoPrestamoRequerimientoImpl;

  factory _ProcesaAbonoPrestamoRequerimiento.fromJson(
          Map<String, dynamic> json) =
      _$ProcesaAbonoPrestamoRequerimientoImpl.fromJson;

  @override
  int get idUsuario;
  @override
  String get codigoPrestamo;
  @override
  String get cuentaDebito;
  @override
  double get monto;
  @override
  String get emailEnvio;
  @override
  String get concepto;
  @override
  String get otpIngresado;
  @override
  String get otpGenerado;
  @override
  @JsonKey(ignore: true)
  _$$ProcesaAbonoPrestamoRequerimientoImplCopyWith<
          _$ProcesaAbonoPrestamoRequerimientoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProcesaAbonoPrestamoRespuesta _$ProcesaAbonoPrestamoRespuestaFromJson(
    Map<String, dynamic> json) {
  return _ProcesaAbonoPrestamoRespuesta.fromJson(json);
}

/// @nodoc
mixin _$ProcesaAbonoPrestamoRespuesta {
  String get documento => throw _privateConstructorUsedError;
  String get fecha => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProcesaAbonoPrestamoRespuestaCopyWith<ProcesaAbonoPrestamoRespuesta>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProcesaAbonoPrestamoRespuestaCopyWith<$Res> {
  factory $ProcesaAbonoPrestamoRespuestaCopyWith(
          ProcesaAbonoPrestamoRespuesta value,
          $Res Function(ProcesaAbonoPrestamoRespuesta) then) =
      _$ProcesaAbonoPrestamoRespuestaCopyWithImpl<$Res,
          ProcesaAbonoPrestamoRespuesta>;
  @useResult
  $Res call({String documento, String fecha});
}

/// @nodoc
class _$ProcesaAbonoPrestamoRespuestaCopyWithImpl<$Res,
        $Val extends ProcesaAbonoPrestamoRespuesta>
    implements $ProcesaAbonoPrestamoRespuestaCopyWith<$Res> {
  _$ProcesaAbonoPrestamoRespuestaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documento = null,
    Object? fecha = null,
  }) {
    return _then(_value.copyWith(
      documento: null == documento
          ? _value.documento
          : documento // ignore: cast_nullable_to_non_nullable
              as String,
      fecha: null == fecha
          ? _value.fecha
          : fecha // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProcesaAbonoPrestamoRespuestaImplCopyWith<$Res>
    implements $ProcesaAbonoPrestamoRespuestaCopyWith<$Res> {
  factory _$$ProcesaAbonoPrestamoRespuestaImplCopyWith(
          _$ProcesaAbonoPrestamoRespuestaImpl value,
          $Res Function(_$ProcesaAbonoPrestamoRespuestaImpl) then) =
      __$$ProcesaAbonoPrestamoRespuestaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String documento, String fecha});
}

/// @nodoc
class __$$ProcesaAbonoPrestamoRespuestaImplCopyWithImpl<$Res>
    extends _$ProcesaAbonoPrestamoRespuestaCopyWithImpl<$Res,
        _$ProcesaAbonoPrestamoRespuestaImpl>
    implements _$$ProcesaAbonoPrestamoRespuestaImplCopyWith<$Res> {
  __$$ProcesaAbonoPrestamoRespuestaImplCopyWithImpl(
      _$ProcesaAbonoPrestamoRespuestaImpl _value,
      $Res Function(_$ProcesaAbonoPrestamoRespuestaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documento = null,
    Object? fecha = null,
  }) {
    return _then(_$ProcesaAbonoPrestamoRespuestaImpl(
      documento: null == documento
          ? _value.documento
          : documento // ignore: cast_nullable_to_non_nullable
              as String,
      fecha: null == fecha
          ? _value.fecha
          : fecha // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProcesaAbonoPrestamoRespuestaImpl
    implements _ProcesaAbonoPrestamoRespuesta {
  _$ProcesaAbonoPrestamoRespuestaImpl({this.documento = '', this.fecha = ''});

  factory _$ProcesaAbonoPrestamoRespuestaImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ProcesaAbonoPrestamoRespuestaImplFromJson(json);

  @override
  @JsonKey()
  final String documento;
  @override
  @JsonKey()
  final String fecha;

  @override
  String toString() {
    return 'ProcesaAbonoPrestamoRespuesta(documento: $documento, fecha: $fecha)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProcesaAbonoPrestamoRespuestaImpl &&
            (identical(other.documento, documento) ||
                other.documento == documento) &&
            (identical(other.fecha, fecha) || other.fecha == fecha));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, documento, fecha);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProcesaAbonoPrestamoRespuestaImplCopyWith<
          _$ProcesaAbonoPrestamoRespuestaImpl>
      get copyWith => __$$ProcesaAbonoPrestamoRespuestaImplCopyWithImpl<
          _$ProcesaAbonoPrestamoRespuestaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProcesaAbonoPrestamoRespuestaImplToJson(
      this,
    );
  }
}

abstract class _ProcesaAbonoPrestamoRespuesta
    implements ProcesaAbonoPrestamoRespuesta {
  factory _ProcesaAbonoPrestamoRespuesta(
      {final String documento,
      final String fecha}) = _$ProcesaAbonoPrestamoRespuestaImpl;

  factory _ProcesaAbonoPrestamoRespuesta.fromJson(Map<String, dynamic> json) =
      _$ProcesaAbonoPrestamoRespuestaImpl.fromJson;

  @override
  String get documento;
  @override
  String get fecha;
  @override
  @JsonKey(ignore: true)
  _$$ProcesaAbonoPrestamoRespuestaImplCopyWith<
          _$ProcesaAbonoPrestamoRespuestaImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DetalleInversionModel _$DetalleInversionModelFromJson(
    Map<String, dynamic> json) {
  return _DetalleInversionModel.fromJson(json);
}

/// @nodoc
mixin _$DetalleInversionModel {
  DateTime? get fecha => throw _privateConstructorUsedError;
  double get retencion => throw _privateConstructorUsedError;
  double get valor => throw _privateConstructorUsedError;
  String get item => throw _privateConstructorUsedError;
  String get estado => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetalleInversionModelCopyWith<DetalleInversionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetalleInversionModelCopyWith<$Res> {
  factory $DetalleInversionModelCopyWith(DetalleInversionModel value,
          $Res Function(DetalleInversionModel) then) =
      _$DetalleInversionModelCopyWithImpl<$Res, DetalleInversionModel>;
  @useResult
  $Res call(
      {DateTime? fecha,
      double retencion,
      double valor,
      String item,
      String estado});
}

/// @nodoc
class _$DetalleInversionModelCopyWithImpl<$Res,
        $Val extends DetalleInversionModel>
    implements $DetalleInversionModelCopyWith<$Res> {
  _$DetalleInversionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fecha = freezed,
    Object? retencion = null,
    Object? valor = null,
    Object? item = null,
    Object? estado = null,
  }) {
    return _then(_value.copyWith(
      fecha: freezed == fecha
          ? _value.fecha
          : fecha // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      retencion: null == retencion
          ? _value.retencion
          : retencion // ignore: cast_nullable_to_non_nullable
              as double,
      valor: null == valor
          ? _value.valor
          : valor // ignore: cast_nullable_to_non_nullable
              as double,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as String,
      estado: null == estado
          ? _value.estado
          : estado // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetalleInversionModelImplCopyWith<$Res>
    implements $DetalleInversionModelCopyWith<$Res> {
  factory _$$DetalleInversionModelImplCopyWith(
          _$DetalleInversionModelImpl value,
          $Res Function(_$DetalleInversionModelImpl) then) =
      __$$DetalleInversionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? fecha,
      double retencion,
      double valor,
      String item,
      String estado});
}

/// @nodoc
class __$$DetalleInversionModelImplCopyWithImpl<$Res>
    extends _$DetalleInversionModelCopyWithImpl<$Res,
        _$DetalleInversionModelImpl>
    implements _$$DetalleInversionModelImplCopyWith<$Res> {
  __$$DetalleInversionModelImplCopyWithImpl(_$DetalleInversionModelImpl _value,
      $Res Function(_$DetalleInversionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fecha = freezed,
    Object? retencion = null,
    Object? valor = null,
    Object? item = null,
    Object? estado = null,
  }) {
    return _then(_$DetalleInversionModelImpl(
      fecha: freezed == fecha
          ? _value.fecha
          : fecha // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      retencion: null == retencion
          ? _value.retencion
          : retencion // ignore: cast_nullable_to_non_nullable
              as double,
      valor: null == valor
          ? _value.valor
          : valor // ignore: cast_nullable_to_non_nullable
              as double,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as String,
      estado: null == estado
          ? _value.estado
          : estado // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetalleInversionModelImpl implements _DetalleInversionModel {
  _$DetalleInversionModelImpl(
      {this.fecha,
      this.retencion = 0.00,
      this.valor = 0.00,
      this.item = '',
      this.estado = ''});

  factory _$DetalleInversionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetalleInversionModelImplFromJson(json);

  @override
  final DateTime? fecha;
  @override
  @JsonKey()
  final double retencion;
  @override
  @JsonKey()
  final double valor;
  @override
  @JsonKey()
  final String item;
  @override
  @JsonKey()
  final String estado;

  @override
  String toString() {
    return 'DetalleInversionModel(fecha: $fecha, retencion: $retencion, valor: $valor, item: $item, estado: $estado)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetalleInversionModelImpl &&
            (identical(other.fecha, fecha) || other.fecha == fecha) &&
            (identical(other.retencion, retencion) ||
                other.retencion == retencion) &&
            (identical(other.valor, valor) || other.valor == valor) &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.estado, estado) || other.estado == estado));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, fecha, retencion, valor, item, estado);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetalleInversionModelImplCopyWith<_$DetalleInversionModelImpl>
      get copyWith => __$$DetalleInversionModelImplCopyWithImpl<
          _$DetalleInversionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetalleInversionModelImplToJson(
      this,
    );
  }
}

abstract class _DetalleInversionModel implements DetalleInversionModel {
  factory _DetalleInversionModel(
      {final DateTime? fecha,
      final double retencion,
      final double valor,
      final String item,
      final String estado}) = _$DetalleInversionModelImpl;

  factory _DetalleInversionModel.fromJson(Map<String, dynamic> json) =
      _$DetalleInversionModelImpl.fromJson;

  @override
  DateTime? get fecha;
  @override
  double get retencion;
  @override
  double get valor;
  @override
  String get item;
  @override
  String get estado;
  @override
  @JsonKey(ignore: true)
  _$$DetalleInversionModelImplCopyWith<_$DetalleInversionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultaDetalleInversionRequerimiento
    _$ConsultaDetalleInversionRequerimientoFromJson(Map<String, dynamic> json) {
  return _ConsultaDetalleInversionRequerimiento.fromJson(json);
}

/// @nodoc
mixin _$ConsultaDetalleInversionRequerimiento {
  String get codigoInversion => throw _privateConstructorUsedError;
  int get idUsuario => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConsultaDetalleInversionRequerimientoCopyWith<
          ConsultaDetalleInversionRequerimiento>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultaDetalleInversionRequerimientoCopyWith<$Res> {
  factory $ConsultaDetalleInversionRequerimientoCopyWith(
          ConsultaDetalleInversionRequerimiento value,
          $Res Function(ConsultaDetalleInversionRequerimiento) then) =
      _$ConsultaDetalleInversionRequerimientoCopyWithImpl<$Res,
          ConsultaDetalleInversionRequerimiento>;
  @useResult
  $Res call({String codigoInversion, int idUsuario});
}

/// @nodoc
class _$ConsultaDetalleInversionRequerimientoCopyWithImpl<$Res,
        $Val extends ConsultaDetalleInversionRequerimiento>
    implements $ConsultaDetalleInversionRequerimientoCopyWith<$Res> {
  _$ConsultaDetalleInversionRequerimientoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codigoInversion = null,
    Object? idUsuario = null,
  }) {
    return _then(_value.copyWith(
      codigoInversion: null == codigoInversion
          ? _value.codigoInversion
          : codigoInversion // ignore: cast_nullable_to_non_nullable
              as String,
      idUsuario: null == idUsuario
          ? _value.idUsuario
          : idUsuario // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConsultaDetalleInversionRequerimientoImplCopyWith<$Res>
    implements $ConsultaDetalleInversionRequerimientoCopyWith<$Res> {
  factory _$$ConsultaDetalleInversionRequerimientoImplCopyWith(
          _$ConsultaDetalleInversionRequerimientoImpl value,
          $Res Function(_$ConsultaDetalleInversionRequerimientoImpl) then) =
      __$$ConsultaDetalleInversionRequerimientoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String codigoInversion, int idUsuario});
}

/// @nodoc
class __$$ConsultaDetalleInversionRequerimientoImplCopyWithImpl<$Res>
    extends _$ConsultaDetalleInversionRequerimientoCopyWithImpl<$Res,
        _$ConsultaDetalleInversionRequerimientoImpl>
    implements _$$ConsultaDetalleInversionRequerimientoImplCopyWith<$Res> {
  __$$ConsultaDetalleInversionRequerimientoImplCopyWithImpl(
      _$ConsultaDetalleInversionRequerimientoImpl _value,
      $Res Function(_$ConsultaDetalleInversionRequerimientoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codigoInversion = null,
    Object? idUsuario = null,
  }) {
    return _then(_$ConsultaDetalleInversionRequerimientoImpl(
      codigoInversion: null == codigoInversion
          ? _value.codigoInversion
          : codigoInversion // ignore: cast_nullable_to_non_nullable
              as String,
      idUsuario: null == idUsuario
          ? _value.idUsuario
          : idUsuario // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultaDetalleInversionRequerimientoImpl
    implements _ConsultaDetalleInversionRequerimiento {
  _$ConsultaDetalleInversionRequerimientoImpl(
      {this.codigoInversion = '', this.idUsuario = 0});

  factory _$ConsultaDetalleInversionRequerimientoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultaDetalleInversionRequerimientoImplFromJson(json);

  @override
  @JsonKey()
  final String codigoInversion;
  @override
  @JsonKey()
  final int idUsuario;

  @override
  String toString() {
    return 'ConsultaDetalleInversionRequerimiento(codigoInversion: $codigoInversion, idUsuario: $idUsuario)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultaDetalleInversionRequerimientoImpl &&
            (identical(other.codigoInversion, codigoInversion) ||
                other.codigoInversion == codigoInversion) &&
            (identical(other.idUsuario, idUsuario) ||
                other.idUsuario == idUsuario));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, codigoInversion, idUsuario);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultaDetalleInversionRequerimientoImplCopyWith<
          _$ConsultaDetalleInversionRequerimientoImpl>
      get copyWith => __$$ConsultaDetalleInversionRequerimientoImplCopyWithImpl<
          _$ConsultaDetalleInversionRequerimientoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultaDetalleInversionRequerimientoImplToJson(
      this,
    );
  }
}

abstract class _ConsultaDetalleInversionRequerimiento
    implements ConsultaDetalleInversionRequerimiento {
  factory _ConsultaDetalleInversionRequerimiento(
      {final String codigoInversion,
      final int idUsuario}) = _$ConsultaDetalleInversionRequerimientoImpl;

  factory _ConsultaDetalleInversionRequerimiento.fromJson(
          Map<String, dynamic> json) =
      _$ConsultaDetalleInversionRequerimientoImpl.fromJson;

  @override
  String get codigoInversion;
  @override
  int get idUsuario;
  @override
  @JsonKey(ignore: true)
  _$$ConsultaDetalleInversionRequerimientoImplCopyWith<
          _$ConsultaDetalleInversionRequerimientoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultaDetalleInversionRespuesta _$ConsultaDetalleInversionRespuestaFromJson(
    Map<String, dynamic> json) {
  return _ConsultaDetalleInversionRespuesta.fromJson(json);
}

/// @nodoc
mixin _$ConsultaDetalleInversionRespuesta {
  List<DetalleInversionModel> get detalles =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConsultaDetalleInversionRespuestaCopyWith<ConsultaDetalleInversionRespuesta>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultaDetalleInversionRespuestaCopyWith<$Res> {
  factory $ConsultaDetalleInversionRespuestaCopyWith(
          ConsultaDetalleInversionRespuesta value,
          $Res Function(ConsultaDetalleInversionRespuesta) then) =
      _$ConsultaDetalleInversionRespuestaCopyWithImpl<$Res,
          ConsultaDetalleInversionRespuesta>;
  @useResult
  $Res call({List<DetalleInversionModel> detalles});
}

/// @nodoc
class _$ConsultaDetalleInversionRespuestaCopyWithImpl<$Res,
        $Val extends ConsultaDetalleInversionRespuesta>
    implements $ConsultaDetalleInversionRespuestaCopyWith<$Res> {
  _$ConsultaDetalleInversionRespuestaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detalles = null,
  }) {
    return _then(_value.copyWith(
      detalles: null == detalles
          ? _value.detalles
          : detalles // ignore: cast_nullable_to_non_nullable
              as List<DetalleInversionModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConsultaDetalleInversionRespuestaImplCopyWith<$Res>
    implements $ConsultaDetalleInversionRespuestaCopyWith<$Res> {
  factory _$$ConsultaDetalleInversionRespuestaImplCopyWith(
          _$ConsultaDetalleInversionRespuestaImpl value,
          $Res Function(_$ConsultaDetalleInversionRespuestaImpl) then) =
      __$$ConsultaDetalleInversionRespuestaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DetalleInversionModel> detalles});
}

/// @nodoc
class __$$ConsultaDetalleInversionRespuestaImplCopyWithImpl<$Res>
    extends _$ConsultaDetalleInversionRespuestaCopyWithImpl<$Res,
        _$ConsultaDetalleInversionRespuestaImpl>
    implements _$$ConsultaDetalleInversionRespuestaImplCopyWith<$Res> {
  __$$ConsultaDetalleInversionRespuestaImplCopyWithImpl(
      _$ConsultaDetalleInversionRespuestaImpl _value,
      $Res Function(_$ConsultaDetalleInversionRespuestaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detalles = null,
  }) {
    return _then(_$ConsultaDetalleInversionRespuestaImpl(
      detalles: null == detalles
          ? _value._detalles
          : detalles // ignore: cast_nullable_to_non_nullable
              as List<DetalleInversionModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultaDetalleInversionRespuestaImpl
    implements _ConsultaDetalleInversionRespuesta {
  _$ConsultaDetalleInversionRespuestaImpl(
      {final List<DetalleInversionModel> detalles = const []})
      : _detalles = detalles;

  factory _$ConsultaDetalleInversionRespuestaImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultaDetalleInversionRespuestaImplFromJson(json);

  final List<DetalleInversionModel> _detalles;
  @override
  @JsonKey()
  List<DetalleInversionModel> get detalles {
    if (_detalles is EqualUnmodifiableListView) return _detalles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_detalles);
  }

  @override
  String toString() {
    return 'ConsultaDetalleInversionRespuesta(detalles: $detalles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultaDetalleInversionRespuestaImpl &&
            const DeepCollectionEquality().equals(other._detalles, _detalles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_detalles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultaDetalleInversionRespuestaImplCopyWith<
          _$ConsultaDetalleInversionRespuestaImpl>
      get copyWith => __$$ConsultaDetalleInversionRespuestaImplCopyWithImpl<
          _$ConsultaDetalleInversionRespuestaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultaDetalleInversionRespuestaImplToJson(
      this,
    );
  }
}

abstract class _ConsultaDetalleInversionRespuesta
    implements ConsultaDetalleInversionRespuesta {
  factory _ConsultaDetalleInversionRespuesta(
          {final List<DetalleInversionModel> detalles}) =
      _$ConsultaDetalleInversionRespuestaImpl;

  factory _ConsultaDetalleInversionRespuesta.fromJson(
          Map<String, dynamic> json) =
      _$ConsultaDetalleInversionRespuestaImpl.fromJson;

  @override
  List<DetalleInversionModel> get detalles;
  @override
  @JsonKey(ignore: true)
  _$$ConsultaDetalleInversionRespuestaImplCopyWith<
          _$ConsultaDetalleInversionRespuestaImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DepositoDetalleState _$DepositoDetalleStateFromJson(Map<String, dynamic> json) {
  return _DepositoDetalleState.fromJson(json);
}

/// @nodoc
mixin _$DepositoDetalleState {
  InversionModel? get deposito => throw _privateConstructorUsedError;
  ConsultaDetalleInversionRespuesta? get respuestaDetalles =>
      throw _privateConstructorUsedError;
  ConsultaMovimientosInversionRespuesta? get respuestaMovimientos =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DepositoDetalleStateCopyWith<DepositoDetalleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepositoDetalleStateCopyWith<$Res> {
  factory $DepositoDetalleStateCopyWith(DepositoDetalleState value,
          $Res Function(DepositoDetalleState) then) =
      _$DepositoDetalleStateCopyWithImpl<$Res, DepositoDetalleState>;
  @useResult
  $Res call(
      {InversionModel? deposito,
      ConsultaDetalleInversionRespuesta? respuestaDetalles,
      ConsultaMovimientosInversionRespuesta? respuestaMovimientos});

  $InversionModelCopyWith<$Res>? get deposito;
  $ConsultaDetalleInversionRespuestaCopyWith<$Res>? get respuestaDetalles;
  $ConsultaMovimientosInversionRespuestaCopyWith<$Res>?
      get respuestaMovimientos;
}

/// @nodoc
class _$DepositoDetalleStateCopyWithImpl<$Res,
        $Val extends DepositoDetalleState>
    implements $DepositoDetalleStateCopyWith<$Res> {
  _$DepositoDetalleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deposito = freezed,
    Object? respuestaDetalles = freezed,
    Object? respuestaMovimientos = freezed,
  }) {
    return _then(_value.copyWith(
      deposito: freezed == deposito
          ? _value.deposito
          : deposito // ignore: cast_nullable_to_non_nullable
              as InversionModel?,
      respuestaDetalles: freezed == respuestaDetalles
          ? _value.respuestaDetalles
          : respuestaDetalles // ignore: cast_nullable_to_non_nullable
              as ConsultaDetalleInversionRespuesta?,
      respuestaMovimientos: freezed == respuestaMovimientos
          ? _value.respuestaMovimientos
          : respuestaMovimientos // ignore: cast_nullable_to_non_nullable
              as ConsultaMovimientosInversionRespuesta?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InversionModelCopyWith<$Res>? get deposito {
    if (_value.deposito == null) {
      return null;
    }

    return $InversionModelCopyWith<$Res>(_value.deposito!, (value) {
      return _then(_value.copyWith(deposito: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ConsultaDetalleInversionRespuestaCopyWith<$Res>? get respuestaDetalles {
    if (_value.respuestaDetalles == null) {
      return null;
    }

    return $ConsultaDetalleInversionRespuestaCopyWith<$Res>(
        _value.respuestaDetalles!, (value) {
      return _then(_value.copyWith(respuestaDetalles: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ConsultaMovimientosInversionRespuestaCopyWith<$Res>?
      get respuestaMovimientos {
    if (_value.respuestaMovimientos == null) {
      return null;
    }

    return $ConsultaMovimientosInversionRespuestaCopyWith<$Res>(
        _value.respuestaMovimientos!, (value) {
      return _then(_value.copyWith(respuestaMovimientos: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DepositoDetalleStateImplCopyWith<$Res>
    implements $DepositoDetalleStateCopyWith<$Res> {
  factory _$$DepositoDetalleStateImplCopyWith(_$DepositoDetalleStateImpl value,
          $Res Function(_$DepositoDetalleStateImpl) then) =
      __$$DepositoDetalleStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {InversionModel? deposito,
      ConsultaDetalleInversionRespuesta? respuestaDetalles,
      ConsultaMovimientosInversionRespuesta? respuestaMovimientos});

  @override
  $InversionModelCopyWith<$Res>? get deposito;
  @override
  $ConsultaDetalleInversionRespuestaCopyWith<$Res>? get respuestaDetalles;
  @override
  $ConsultaMovimientosInversionRespuestaCopyWith<$Res>?
      get respuestaMovimientos;
}

/// @nodoc
class __$$DepositoDetalleStateImplCopyWithImpl<$Res>
    extends _$DepositoDetalleStateCopyWithImpl<$Res, _$DepositoDetalleStateImpl>
    implements _$$DepositoDetalleStateImplCopyWith<$Res> {
  __$$DepositoDetalleStateImplCopyWithImpl(_$DepositoDetalleStateImpl _value,
      $Res Function(_$DepositoDetalleStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deposito = freezed,
    Object? respuestaDetalles = freezed,
    Object? respuestaMovimientos = freezed,
  }) {
    return _then(_$DepositoDetalleStateImpl(
      deposito: freezed == deposito
          ? _value.deposito
          : deposito // ignore: cast_nullable_to_non_nullable
              as InversionModel?,
      respuestaDetalles: freezed == respuestaDetalles
          ? _value.respuestaDetalles
          : respuestaDetalles // ignore: cast_nullable_to_non_nullable
              as ConsultaDetalleInversionRespuesta?,
      respuestaMovimientos: freezed == respuestaMovimientos
          ? _value.respuestaMovimientos
          : respuestaMovimientos // ignore: cast_nullable_to_non_nullable
              as ConsultaMovimientosInversionRespuesta?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DepositoDetalleStateImpl implements _DepositoDetalleState {
  _$DepositoDetalleStateImpl(
      {this.deposito, this.respuestaDetalles, this.respuestaMovimientos});

  factory _$DepositoDetalleStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$DepositoDetalleStateImplFromJson(json);

  @override
  final InversionModel? deposito;
  @override
  final ConsultaDetalleInversionRespuesta? respuestaDetalles;
  @override
  final ConsultaMovimientosInversionRespuesta? respuestaMovimientos;

  @override
  String toString() {
    return 'DepositoDetalleState(deposito: $deposito, respuestaDetalles: $respuestaDetalles, respuestaMovimientos: $respuestaMovimientos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepositoDetalleStateImpl &&
            (identical(other.deposito, deposito) ||
                other.deposito == deposito) &&
            (identical(other.respuestaDetalles, respuestaDetalles) ||
                other.respuestaDetalles == respuestaDetalles) &&
            (identical(other.respuestaMovimientos, respuestaMovimientos) ||
                other.respuestaMovimientos == respuestaMovimientos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, deposito, respuestaDetalles, respuestaMovimientos);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DepositoDetalleStateImplCopyWith<_$DepositoDetalleStateImpl>
      get copyWith =>
          __$$DepositoDetalleStateImplCopyWithImpl<_$DepositoDetalleStateImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DepositoDetalleStateImplToJson(
      this,
    );
  }
}

abstract class _DepositoDetalleState implements DepositoDetalleState {
  factory _DepositoDetalleState(
          {final InversionModel? deposito,
          final ConsultaDetalleInversionRespuesta? respuestaDetalles,
          final ConsultaMovimientosInversionRespuesta? respuestaMovimientos}) =
      _$DepositoDetalleStateImpl;

  factory _DepositoDetalleState.fromJson(Map<String, dynamic> json) =
      _$DepositoDetalleStateImpl.fromJson;

  @override
  InversionModel? get deposito;
  @override
  ConsultaDetalleInversionRespuesta? get respuestaDetalles;
  @override
  ConsultaMovimientosInversionRespuesta? get respuestaMovimientos;
  @override
  @JsonKey(ignore: true)
  _$$DepositoDetalleStateImplCopyWith<_$DepositoDetalleStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PrestamoDetalleState _$PrestamoDetalleStateFromJson(Map<String, dynamic> json) {
  return _PrestamoDetalleState.fromJson(json);
}

/// @nodoc
mixin _$PrestamoDetalleState {
  PrestamoModel? get prestamo => throw _privateConstructorUsedError;
  ConsultaDetalePrestamoRespuesta? get respuestaDetalles =>
      throw _privateConstructorUsedError;
  ConsultaMovimientosInversionRespuesta? get respuestaMovimientos =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrestamoDetalleStateCopyWith<PrestamoDetalleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrestamoDetalleStateCopyWith<$Res> {
  factory $PrestamoDetalleStateCopyWith(PrestamoDetalleState value,
          $Res Function(PrestamoDetalleState) then) =
      _$PrestamoDetalleStateCopyWithImpl<$Res, PrestamoDetalleState>;
  @useResult
  $Res call(
      {PrestamoModel? prestamo,
      ConsultaDetalePrestamoRespuesta? respuestaDetalles,
      ConsultaMovimientosInversionRespuesta? respuestaMovimientos});

  $PrestamoModelCopyWith<$Res>? get prestamo;
  $ConsultaDetalePrestamoRespuestaCopyWith<$Res>? get respuestaDetalles;
  $ConsultaMovimientosInversionRespuestaCopyWith<$Res>?
      get respuestaMovimientos;
}

/// @nodoc
class _$PrestamoDetalleStateCopyWithImpl<$Res,
        $Val extends PrestamoDetalleState>
    implements $PrestamoDetalleStateCopyWith<$Res> {
  _$PrestamoDetalleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prestamo = freezed,
    Object? respuestaDetalles = freezed,
    Object? respuestaMovimientos = freezed,
  }) {
    return _then(_value.copyWith(
      prestamo: freezed == prestamo
          ? _value.prestamo
          : prestamo // ignore: cast_nullable_to_non_nullable
              as PrestamoModel?,
      respuestaDetalles: freezed == respuestaDetalles
          ? _value.respuestaDetalles
          : respuestaDetalles // ignore: cast_nullable_to_non_nullable
              as ConsultaDetalePrestamoRespuesta?,
      respuestaMovimientos: freezed == respuestaMovimientos
          ? _value.respuestaMovimientos
          : respuestaMovimientos // ignore: cast_nullable_to_non_nullable
              as ConsultaMovimientosInversionRespuesta?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PrestamoModelCopyWith<$Res>? get prestamo {
    if (_value.prestamo == null) {
      return null;
    }

    return $PrestamoModelCopyWith<$Res>(_value.prestamo!, (value) {
      return _then(_value.copyWith(prestamo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ConsultaDetalePrestamoRespuestaCopyWith<$Res>? get respuestaDetalles {
    if (_value.respuestaDetalles == null) {
      return null;
    }

    return $ConsultaDetalePrestamoRespuestaCopyWith<$Res>(
        _value.respuestaDetalles!, (value) {
      return _then(_value.copyWith(respuestaDetalles: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ConsultaMovimientosInversionRespuestaCopyWith<$Res>?
      get respuestaMovimientos {
    if (_value.respuestaMovimientos == null) {
      return null;
    }

    return $ConsultaMovimientosInversionRespuestaCopyWith<$Res>(
        _value.respuestaMovimientos!, (value) {
      return _then(_value.copyWith(respuestaMovimientos: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PrestamoDetalleStateImplCopyWith<$Res>
    implements $PrestamoDetalleStateCopyWith<$Res> {
  factory _$$PrestamoDetalleStateImplCopyWith(_$PrestamoDetalleStateImpl value,
          $Res Function(_$PrestamoDetalleStateImpl) then) =
      __$$PrestamoDetalleStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PrestamoModel? prestamo,
      ConsultaDetalePrestamoRespuesta? respuestaDetalles,
      ConsultaMovimientosInversionRespuesta? respuestaMovimientos});

  @override
  $PrestamoModelCopyWith<$Res>? get prestamo;
  @override
  $ConsultaDetalePrestamoRespuestaCopyWith<$Res>? get respuestaDetalles;
  @override
  $ConsultaMovimientosInversionRespuestaCopyWith<$Res>?
      get respuestaMovimientos;
}

/// @nodoc
class __$$PrestamoDetalleStateImplCopyWithImpl<$Res>
    extends _$PrestamoDetalleStateCopyWithImpl<$Res, _$PrestamoDetalleStateImpl>
    implements _$$PrestamoDetalleStateImplCopyWith<$Res> {
  __$$PrestamoDetalleStateImplCopyWithImpl(_$PrestamoDetalleStateImpl _value,
      $Res Function(_$PrestamoDetalleStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prestamo = freezed,
    Object? respuestaDetalles = freezed,
    Object? respuestaMovimientos = freezed,
  }) {
    return _then(_$PrestamoDetalleStateImpl(
      prestamo: freezed == prestamo
          ? _value.prestamo
          : prestamo // ignore: cast_nullable_to_non_nullable
              as PrestamoModel?,
      respuestaDetalles: freezed == respuestaDetalles
          ? _value.respuestaDetalles
          : respuestaDetalles // ignore: cast_nullable_to_non_nullable
              as ConsultaDetalePrestamoRespuesta?,
      respuestaMovimientos: freezed == respuestaMovimientos
          ? _value.respuestaMovimientos
          : respuestaMovimientos // ignore: cast_nullable_to_non_nullable
              as ConsultaMovimientosInversionRespuesta?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrestamoDetalleStateImpl implements _PrestamoDetalleState {
  _$PrestamoDetalleStateImpl(
      {this.prestamo, this.respuestaDetalles, this.respuestaMovimientos});

  factory _$PrestamoDetalleStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrestamoDetalleStateImplFromJson(json);

  @override
  final PrestamoModel? prestamo;
  @override
  final ConsultaDetalePrestamoRespuesta? respuestaDetalles;
  @override
  final ConsultaMovimientosInversionRespuesta? respuestaMovimientos;

  @override
  String toString() {
    return 'PrestamoDetalleState(prestamo: $prestamo, respuestaDetalles: $respuestaDetalles, respuestaMovimientos: $respuestaMovimientos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrestamoDetalleStateImpl &&
            (identical(other.prestamo, prestamo) ||
                other.prestamo == prestamo) &&
            (identical(other.respuestaDetalles, respuestaDetalles) ||
                other.respuestaDetalles == respuestaDetalles) &&
            (identical(other.respuestaMovimientos, respuestaMovimientos) ||
                other.respuestaMovimientos == respuestaMovimientos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, prestamo, respuestaDetalles, respuestaMovimientos);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrestamoDetalleStateImplCopyWith<_$PrestamoDetalleStateImpl>
      get copyWith =>
          __$$PrestamoDetalleStateImplCopyWithImpl<_$PrestamoDetalleStateImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrestamoDetalleStateImplToJson(
      this,
    );
  }
}

abstract class _PrestamoDetalleState implements PrestamoDetalleState {
  factory _PrestamoDetalleState(
          {final PrestamoModel? prestamo,
          final ConsultaDetalePrestamoRespuesta? respuestaDetalles,
          final ConsultaMovimientosInversionRespuesta? respuestaMovimientos}) =
      _$PrestamoDetalleStateImpl;

  factory _PrestamoDetalleState.fromJson(Map<String, dynamic> json) =
      _$PrestamoDetalleStateImpl.fromJson;

  @override
  PrestamoModel? get prestamo;
  @override
  ConsultaDetalePrestamoRespuesta? get respuestaDetalles;
  @override
  ConsultaMovimientosInversionRespuesta? get respuestaMovimientos;
  @override
  @JsonKey(ignore: true)
  _$$PrestamoDetalleStateImplCopyWith<_$PrestamoDetalleStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TransferenciaState _$TransferenciaStateFromJson(Map<String, dynamic> json) {
  return _TransferenciaState.fromJson(json);
}

/// @nodoc
mixin _$TransferenciaState {
  CuentaModel? get cuenta => throw _privateConstructorUsedError;
  BeneficiarioModel? get beneficiario => throw _privateConstructorUsedError;
  CuentaModel? get cuentaDestino => throw _privateConstructorUsedError;
  bool get esValidacion => throw _privateConstructorUsedError;
  bool get esComprobante => throw _privateConstructorUsedError;
  ConsultaRequisitosTransferenciasRespuesta? get requisitosTransferencia =>
      throw _privateConstructorUsedError;
  ProcesaTransfernciaDirectaRespuesta? get respuestaProceso =>
      throw _privateConstructorUsedError;
  ConceptoModel? get concepto => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransferenciaStateCopyWith<TransferenciaState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransferenciaStateCopyWith<$Res> {
  factory $TransferenciaStateCopyWith(
          TransferenciaState value, $Res Function(TransferenciaState) then) =
      _$TransferenciaStateCopyWithImpl<$Res, TransferenciaState>;
  @useResult
  $Res call(
      {CuentaModel? cuenta,
      BeneficiarioModel? beneficiario,
      CuentaModel? cuentaDestino,
      bool esValidacion,
      bool esComprobante,
      ConsultaRequisitosTransferenciasRespuesta? requisitosTransferencia,
      ProcesaTransfernciaDirectaRespuesta? respuestaProceso,
      ConceptoModel? concepto});

  $CuentaModelCopyWith<$Res>? get cuenta;
  $BeneficiarioModelCopyWith<$Res>? get beneficiario;
  $CuentaModelCopyWith<$Res>? get cuentaDestino;
  $ConsultaRequisitosTransferenciasRespuestaCopyWith<$Res>?
      get requisitosTransferencia;
  $ProcesaTransfernciaDirectaRespuestaCopyWith<$Res>? get respuestaProceso;
  $ConceptoModelCopyWith<$Res>? get concepto;
}

/// @nodoc
class _$TransferenciaStateCopyWithImpl<$Res, $Val extends TransferenciaState>
    implements $TransferenciaStateCopyWith<$Res> {
  _$TransferenciaStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cuenta = freezed,
    Object? beneficiario = freezed,
    Object? cuentaDestino = freezed,
    Object? esValidacion = null,
    Object? esComprobante = null,
    Object? requisitosTransferencia = freezed,
    Object? respuestaProceso = freezed,
    Object? concepto = freezed,
  }) {
    return _then(_value.copyWith(
      cuenta: freezed == cuenta
          ? _value.cuenta
          : cuenta // ignore: cast_nullable_to_non_nullable
              as CuentaModel?,
      beneficiario: freezed == beneficiario
          ? _value.beneficiario
          : beneficiario // ignore: cast_nullable_to_non_nullable
              as BeneficiarioModel?,
      cuentaDestino: freezed == cuentaDestino
          ? _value.cuentaDestino
          : cuentaDestino // ignore: cast_nullable_to_non_nullable
              as CuentaModel?,
      esValidacion: null == esValidacion
          ? _value.esValidacion
          : esValidacion // ignore: cast_nullable_to_non_nullable
              as bool,
      esComprobante: null == esComprobante
          ? _value.esComprobante
          : esComprobante // ignore: cast_nullable_to_non_nullable
              as bool,
      requisitosTransferencia: freezed == requisitosTransferencia
          ? _value.requisitosTransferencia
          : requisitosTransferencia // ignore: cast_nullable_to_non_nullable
              as ConsultaRequisitosTransferenciasRespuesta?,
      respuestaProceso: freezed == respuestaProceso
          ? _value.respuestaProceso
          : respuestaProceso // ignore: cast_nullable_to_non_nullable
              as ProcesaTransfernciaDirectaRespuesta?,
      concepto: freezed == concepto
          ? _value.concepto
          : concepto // ignore: cast_nullable_to_non_nullable
              as ConceptoModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CuentaModelCopyWith<$Res>? get cuenta {
    if (_value.cuenta == null) {
      return null;
    }

    return $CuentaModelCopyWith<$Res>(_value.cuenta!, (value) {
      return _then(_value.copyWith(cuenta: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BeneficiarioModelCopyWith<$Res>? get beneficiario {
    if (_value.beneficiario == null) {
      return null;
    }

    return $BeneficiarioModelCopyWith<$Res>(_value.beneficiario!, (value) {
      return _then(_value.copyWith(beneficiario: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CuentaModelCopyWith<$Res>? get cuentaDestino {
    if (_value.cuentaDestino == null) {
      return null;
    }

    return $CuentaModelCopyWith<$Res>(_value.cuentaDestino!, (value) {
      return _then(_value.copyWith(cuentaDestino: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ConsultaRequisitosTransferenciasRespuestaCopyWith<$Res>?
      get requisitosTransferencia {
    if (_value.requisitosTransferencia == null) {
      return null;
    }

    return $ConsultaRequisitosTransferenciasRespuestaCopyWith<$Res>(
        _value.requisitosTransferencia!, (value) {
      return _then(_value.copyWith(requisitosTransferencia: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProcesaTransfernciaDirectaRespuestaCopyWith<$Res>? get respuestaProceso {
    if (_value.respuestaProceso == null) {
      return null;
    }

    return $ProcesaTransfernciaDirectaRespuestaCopyWith<$Res>(
        _value.respuestaProceso!, (value) {
      return _then(_value.copyWith(respuestaProceso: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ConceptoModelCopyWith<$Res>? get concepto {
    if (_value.concepto == null) {
      return null;
    }

    return $ConceptoModelCopyWith<$Res>(_value.concepto!, (value) {
      return _then(_value.copyWith(concepto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TransferenciaStateImplCopyWith<$Res>
    implements $TransferenciaStateCopyWith<$Res> {
  factory _$$TransferenciaStateImplCopyWith(_$TransferenciaStateImpl value,
          $Res Function(_$TransferenciaStateImpl) then) =
      __$$TransferenciaStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CuentaModel? cuenta,
      BeneficiarioModel? beneficiario,
      CuentaModel? cuentaDestino,
      bool esValidacion,
      bool esComprobante,
      ConsultaRequisitosTransferenciasRespuesta? requisitosTransferencia,
      ProcesaTransfernciaDirectaRespuesta? respuestaProceso,
      ConceptoModel? concepto});

  @override
  $CuentaModelCopyWith<$Res>? get cuenta;
  @override
  $BeneficiarioModelCopyWith<$Res>? get beneficiario;
  @override
  $CuentaModelCopyWith<$Res>? get cuentaDestino;
  @override
  $ConsultaRequisitosTransferenciasRespuestaCopyWith<$Res>?
      get requisitosTransferencia;
  @override
  $ProcesaTransfernciaDirectaRespuestaCopyWith<$Res>? get respuestaProceso;
  @override
  $ConceptoModelCopyWith<$Res>? get concepto;
}

/// @nodoc
class __$$TransferenciaStateImplCopyWithImpl<$Res>
    extends _$TransferenciaStateCopyWithImpl<$Res, _$TransferenciaStateImpl>
    implements _$$TransferenciaStateImplCopyWith<$Res> {
  __$$TransferenciaStateImplCopyWithImpl(_$TransferenciaStateImpl _value,
      $Res Function(_$TransferenciaStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cuenta = freezed,
    Object? beneficiario = freezed,
    Object? cuentaDestino = freezed,
    Object? esValidacion = null,
    Object? esComprobante = null,
    Object? requisitosTransferencia = freezed,
    Object? respuestaProceso = freezed,
    Object? concepto = freezed,
  }) {
    return _then(_$TransferenciaStateImpl(
      cuenta: freezed == cuenta
          ? _value.cuenta
          : cuenta // ignore: cast_nullable_to_non_nullable
              as CuentaModel?,
      beneficiario: freezed == beneficiario
          ? _value.beneficiario
          : beneficiario // ignore: cast_nullable_to_non_nullable
              as BeneficiarioModel?,
      cuentaDestino: freezed == cuentaDestino
          ? _value.cuentaDestino
          : cuentaDestino // ignore: cast_nullable_to_non_nullable
              as CuentaModel?,
      esValidacion: null == esValidacion
          ? _value.esValidacion
          : esValidacion // ignore: cast_nullable_to_non_nullable
              as bool,
      esComprobante: null == esComprobante
          ? _value.esComprobante
          : esComprobante // ignore: cast_nullable_to_non_nullable
              as bool,
      requisitosTransferencia: freezed == requisitosTransferencia
          ? _value.requisitosTransferencia
          : requisitosTransferencia // ignore: cast_nullable_to_non_nullable
              as ConsultaRequisitosTransferenciasRespuesta?,
      respuestaProceso: freezed == respuestaProceso
          ? _value.respuestaProceso
          : respuestaProceso // ignore: cast_nullable_to_non_nullable
              as ProcesaTransfernciaDirectaRespuesta?,
      concepto: freezed == concepto
          ? _value.concepto
          : concepto // ignore: cast_nullable_to_non_nullable
              as ConceptoModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransferenciaStateImpl implements _TransferenciaState {
  _$TransferenciaStateImpl(
      {this.cuenta,
      this.beneficiario,
      this.cuentaDestino,
      this.esValidacion = false,
      this.esComprobante = false,
      this.requisitosTransferencia,
      this.respuestaProceso,
      this.concepto});

  factory _$TransferenciaStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransferenciaStateImplFromJson(json);

  @override
  final CuentaModel? cuenta;
  @override
  final BeneficiarioModel? beneficiario;
  @override
  final CuentaModel? cuentaDestino;
  @override
  @JsonKey()
  final bool esValidacion;
  @override
  @JsonKey()
  final bool esComprobante;
  @override
  final ConsultaRequisitosTransferenciasRespuesta? requisitosTransferencia;
  @override
  final ProcesaTransfernciaDirectaRespuesta? respuestaProceso;
  @override
  final ConceptoModel? concepto;

  @override
  String toString() {
    return 'TransferenciaState(cuenta: $cuenta, beneficiario: $beneficiario, cuentaDestino: $cuentaDestino, esValidacion: $esValidacion, esComprobante: $esComprobante, requisitosTransferencia: $requisitosTransferencia, respuestaProceso: $respuestaProceso, concepto: $concepto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransferenciaStateImpl &&
            (identical(other.cuenta, cuenta) || other.cuenta == cuenta) &&
            (identical(other.beneficiario, beneficiario) ||
                other.beneficiario == beneficiario) &&
            (identical(other.cuentaDestino, cuentaDestino) ||
                other.cuentaDestino == cuentaDestino) &&
            (identical(other.esValidacion, esValidacion) ||
                other.esValidacion == esValidacion) &&
            (identical(other.esComprobante, esComprobante) ||
                other.esComprobante == esComprobante) &&
            (identical(
                    other.requisitosTransferencia, requisitosTransferencia) ||
                other.requisitosTransferencia == requisitosTransferencia) &&
            (identical(other.respuestaProceso, respuestaProceso) ||
                other.respuestaProceso == respuestaProceso) &&
            (identical(other.concepto, concepto) ||
                other.concepto == concepto));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      cuenta,
      beneficiario,
      cuentaDestino,
      esValidacion,
      esComprobante,
      requisitosTransferencia,
      respuestaProceso,
      concepto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransferenciaStateImplCopyWith<_$TransferenciaStateImpl> get copyWith =>
      __$$TransferenciaStateImplCopyWithImpl<_$TransferenciaStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransferenciaStateImplToJson(
      this,
    );
  }
}

abstract class _TransferenciaState implements TransferenciaState {
  factory _TransferenciaState(
      {final CuentaModel? cuenta,
      final BeneficiarioModel? beneficiario,
      final CuentaModel? cuentaDestino,
      final bool esValidacion,
      final bool esComprobante,
      final ConsultaRequisitosTransferenciasRespuesta? requisitosTransferencia,
      final ProcesaTransfernciaDirectaRespuesta? respuestaProceso,
      final ConceptoModel? concepto}) = _$TransferenciaStateImpl;

  factory _TransferenciaState.fromJson(Map<String, dynamic> json) =
      _$TransferenciaStateImpl.fromJson;

  @override
  CuentaModel? get cuenta;
  @override
  BeneficiarioModel? get beneficiario;
  @override
  CuentaModel? get cuentaDestino;
  @override
  bool get esValidacion;
  @override
  bool get esComprobante;
  @override
  ConsultaRequisitosTransferenciasRespuesta? get requisitosTransferencia;
  @override
  ProcesaTransfernciaDirectaRespuesta? get respuestaProceso;
  @override
  ConceptoModel? get concepto;
  @override
  @JsonKey(ignore: true)
  _$$TransferenciaStateImplCopyWith<_$TransferenciaStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SeleccionBeneficiarioState _$SeleccionBeneficiarioStateFromJson(
    Map<String, dynamic> json) {
  return _SeleccionBeneficiarioState.fromJson(json);
}

/// @nodoc
mixin _$SeleccionBeneficiarioState {
  List<BeneficiarioModel> get beneficiarios =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeleccionBeneficiarioStateCopyWith<SeleccionBeneficiarioState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeleccionBeneficiarioStateCopyWith<$Res> {
  factory $SeleccionBeneficiarioStateCopyWith(SeleccionBeneficiarioState value,
          $Res Function(SeleccionBeneficiarioState) then) =
      _$SeleccionBeneficiarioStateCopyWithImpl<$Res,
          SeleccionBeneficiarioState>;
  @useResult
  $Res call({List<BeneficiarioModel> beneficiarios});
}

/// @nodoc
class _$SeleccionBeneficiarioStateCopyWithImpl<$Res,
        $Val extends SeleccionBeneficiarioState>
    implements $SeleccionBeneficiarioStateCopyWith<$Res> {
  _$SeleccionBeneficiarioStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beneficiarios = null,
  }) {
    return _then(_value.copyWith(
      beneficiarios: null == beneficiarios
          ? _value.beneficiarios
          : beneficiarios // ignore: cast_nullable_to_non_nullable
              as List<BeneficiarioModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SeleccionBeneficiarioStateImplCopyWith<$Res>
    implements $SeleccionBeneficiarioStateCopyWith<$Res> {
  factory _$$SeleccionBeneficiarioStateImplCopyWith(
          _$SeleccionBeneficiarioStateImpl value,
          $Res Function(_$SeleccionBeneficiarioStateImpl) then) =
      __$$SeleccionBeneficiarioStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BeneficiarioModel> beneficiarios});
}

/// @nodoc
class __$$SeleccionBeneficiarioStateImplCopyWithImpl<$Res>
    extends _$SeleccionBeneficiarioStateCopyWithImpl<$Res,
        _$SeleccionBeneficiarioStateImpl>
    implements _$$SeleccionBeneficiarioStateImplCopyWith<$Res> {
  __$$SeleccionBeneficiarioStateImplCopyWithImpl(
      _$SeleccionBeneficiarioStateImpl _value,
      $Res Function(_$SeleccionBeneficiarioStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beneficiarios = null,
  }) {
    return _then(_$SeleccionBeneficiarioStateImpl(
      beneficiarios: null == beneficiarios
          ? _value._beneficiarios
          : beneficiarios // ignore: cast_nullable_to_non_nullable
              as List<BeneficiarioModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SeleccionBeneficiarioStateImpl implements _SeleccionBeneficiarioState {
  _$SeleccionBeneficiarioStateImpl(
      {final List<BeneficiarioModel> beneficiarios = const []})
      : _beneficiarios = beneficiarios;

  factory _$SeleccionBeneficiarioStateImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SeleccionBeneficiarioStateImplFromJson(json);

  final List<BeneficiarioModel> _beneficiarios;
  @override
  @JsonKey()
  List<BeneficiarioModel> get beneficiarios {
    if (_beneficiarios is EqualUnmodifiableListView) return _beneficiarios;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_beneficiarios);
  }

  @override
  String toString() {
    return 'SeleccionBeneficiarioState(beneficiarios: $beneficiarios)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeleccionBeneficiarioStateImpl &&
            const DeepCollectionEquality()
                .equals(other._beneficiarios, _beneficiarios));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_beneficiarios));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SeleccionBeneficiarioStateImplCopyWith<_$SeleccionBeneficiarioStateImpl>
      get copyWith => __$$SeleccionBeneficiarioStateImplCopyWithImpl<
          _$SeleccionBeneficiarioStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SeleccionBeneficiarioStateImplToJson(
      this,
    );
  }
}

abstract class _SeleccionBeneficiarioState
    implements SeleccionBeneficiarioState {
  factory _SeleccionBeneficiarioState(
          {final List<BeneficiarioModel> beneficiarios}) =
      _$SeleccionBeneficiarioStateImpl;

  factory _SeleccionBeneficiarioState.fromJson(Map<String, dynamic> json) =
      _$SeleccionBeneficiarioStateImpl.fromJson;

  @override
  List<BeneficiarioModel> get beneficiarios;
  @override
  @JsonKey(ignore: true)
  _$$SeleccionBeneficiarioStateImplCopyWith<_$SeleccionBeneficiarioStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

EtiquetaValorRecibo _$EtiquetaValorReciboFromJson(Map<String, dynamic> json) {
  return _EtiquetaValorRecibo.fromJson(json);
}

/// @nodoc
mixin _$EtiquetaValorRecibo {
  String get etiqueta => throw _privateConstructorUsedError;
  String get valor => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  IconData? get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EtiquetaValorReciboCopyWith<EtiquetaValorRecibo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EtiquetaValorReciboCopyWith<$Res> {
  factory $EtiquetaValorReciboCopyWith(
          EtiquetaValorRecibo value, $Res Function(EtiquetaValorRecibo) then) =
      _$EtiquetaValorReciboCopyWithImpl<$Res, EtiquetaValorRecibo>;
  @useResult
  $Res call(
      {String etiqueta, String valor, @JsonKey(ignore: true) IconData? icon});
}

/// @nodoc
class _$EtiquetaValorReciboCopyWithImpl<$Res, $Val extends EtiquetaValorRecibo>
    implements $EtiquetaValorReciboCopyWith<$Res> {
  _$EtiquetaValorReciboCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? etiqueta = null,
    Object? valor = null,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      etiqueta: null == etiqueta
          ? _value.etiqueta
          : etiqueta // ignore: cast_nullable_to_non_nullable
              as String,
      valor: null == valor
          ? _value.valor
          : valor // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EtiquetaValorReciboImplCopyWith<$Res>
    implements $EtiquetaValorReciboCopyWith<$Res> {
  factory _$$EtiquetaValorReciboImplCopyWith(_$EtiquetaValorReciboImpl value,
          $Res Function(_$EtiquetaValorReciboImpl) then) =
      __$$EtiquetaValorReciboImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String etiqueta, String valor, @JsonKey(ignore: true) IconData? icon});
}

/// @nodoc
class __$$EtiquetaValorReciboImplCopyWithImpl<$Res>
    extends _$EtiquetaValorReciboCopyWithImpl<$Res, _$EtiquetaValorReciboImpl>
    implements _$$EtiquetaValorReciboImplCopyWith<$Res> {
  __$$EtiquetaValorReciboImplCopyWithImpl(_$EtiquetaValorReciboImpl _value,
      $Res Function(_$EtiquetaValorReciboImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? etiqueta = null,
    Object? valor = null,
    Object? icon = freezed,
  }) {
    return _then(_$EtiquetaValorReciboImpl(
      etiqueta: null == etiqueta
          ? _value.etiqueta
          : etiqueta // ignore: cast_nullable_to_non_nullable
              as String,
      valor: null == valor
          ? _value.valor
          : valor // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EtiquetaValorReciboImpl implements _EtiquetaValorRecibo {
  _$EtiquetaValorReciboImpl(
      {this.etiqueta = '', this.valor = '', @JsonKey(ignore: true) this.icon});

  factory _$EtiquetaValorReciboImpl.fromJson(Map<String, dynamic> json) =>
      _$$EtiquetaValorReciboImplFromJson(json);

  @override
  @JsonKey()
  final String etiqueta;
  @override
  @JsonKey()
  final String valor;
  @override
  @JsonKey(ignore: true)
  final IconData? icon;

  @override
  String toString() {
    return 'EtiquetaValorRecibo(etiqueta: $etiqueta, valor: $valor, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EtiquetaValorReciboImpl &&
            (identical(other.etiqueta, etiqueta) ||
                other.etiqueta == etiqueta) &&
            (identical(other.valor, valor) || other.valor == valor) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, etiqueta, valor, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EtiquetaValorReciboImplCopyWith<_$EtiquetaValorReciboImpl> get copyWith =>
      __$$EtiquetaValorReciboImplCopyWithImpl<_$EtiquetaValorReciboImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EtiquetaValorReciboImplToJson(
      this,
    );
  }
}

abstract class _EtiquetaValorRecibo implements EtiquetaValorRecibo {
  factory _EtiquetaValorRecibo(
      {final String etiqueta,
      final String valor,
      @JsonKey(ignore: true) final IconData? icon}) = _$EtiquetaValorReciboImpl;

  factory _EtiquetaValorRecibo.fromJson(Map<String, dynamic> json) =
      _$EtiquetaValorReciboImpl.fromJson;

  @override
  String get etiqueta;
  @override
  String get valor;
  @override
  @JsonKey(ignore: true)
  IconData? get icon;
  @override
  @JsonKey(ignore: true)
  _$$EtiquetaValorReciboImplCopyWith<_$EtiquetaValorReciboImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AbonoState _$AbonoStateFromJson(Map<String, dynamic> json) {
  return _AbonoState.fromJson(json);
}

/// @nodoc
mixin _$AbonoState {
  CuentaModel? get cuenta => throw _privateConstructorUsedError;
  PrestamoModel? get prestamo => throw _privateConstructorUsedError;
  bool get esValidacion => throw _privateConstructorUsedError;
  bool get esComprobante => throw _privateConstructorUsedError;
  ProcesaAbonoPrestamoRespuesta? get respuestaProceso =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AbonoStateCopyWith<AbonoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbonoStateCopyWith<$Res> {
  factory $AbonoStateCopyWith(
          AbonoState value, $Res Function(AbonoState) then) =
      _$AbonoStateCopyWithImpl<$Res, AbonoState>;
  @useResult
  $Res call(
      {CuentaModel? cuenta,
      PrestamoModel? prestamo,
      bool esValidacion,
      bool esComprobante,
      ProcesaAbonoPrestamoRespuesta? respuestaProceso});

  $CuentaModelCopyWith<$Res>? get cuenta;
  $PrestamoModelCopyWith<$Res>? get prestamo;
  $ProcesaAbonoPrestamoRespuestaCopyWith<$Res>? get respuestaProceso;
}

/// @nodoc
class _$AbonoStateCopyWithImpl<$Res, $Val extends AbonoState>
    implements $AbonoStateCopyWith<$Res> {
  _$AbonoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cuenta = freezed,
    Object? prestamo = freezed,
    Object? esValidacion = null,
    Object? esComprobante = null,
    Object? respuestaProceso = freezed,
  }) {
    return _then(_value.copyWith(
      cuenta: freezed == cuenta
          ? _value.cuenta
          : cuenta // ignore: cast_nullable_to_non_nullable
              as CuentaModel?,
      prestamo: freezed == prestamo
          ? _value.prestamo
          : prestamo // ignore: cast_nullable_to_non_nullable
              as PrestamoModel?,
      esValidacion: null == esValidacion
          ? _value.esValidacion
          : esValidacion // ignore: cast_nullable_to_non_nullable
              as bool,
      esComprobante: null == esComprobante
          ? _value.esComprobante
          : esComprobante // ignore: cast_nullable_to_non_nullable
              as bool,
      respuestaProceso: freezed == respuestaProceso
          ? _value.respuestaProceso
          : respuestaProceso // ignore: cast_nullable_to_non_nullable
              as ProcesaAbonoPrestamoRespuesta?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CuentaModelCopyWith<$Res>? get cuenta {
    if (_value.cuenta == null) {
      return null;
    }

    return $CuentaModelCopyWith<$Res>(_value.cuenta!, (value) {
      return _then(_value.copyWith(cuenta: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PrestamoModelCopyWith<$Res>? get prestamo {
    if (_value.prestamo == null) {
      return null;
    }

    return $PrestamoModelCopyWith<$Res>(_value.prestamo!, (value) {
      return _then(_value.copyWith(prestamo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProcesaAbonoPrestamoRespuestaCopyWith<$Res>? get respuestaProceso {
    if (_value.respuestaProceso == null) {
      return null;
    }

    return $ProcesaAbonoPrestamoRespuestaCopyWith<$Res>(
        _value.respuestaProceso!, (value) {
      return _then(_value.copyWith(respuestaProceso: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AbonoStateImplCopyWith<$Res>
    implements $AbonoStateCopyWith<$Res> {
  factory _$$AbonoStateImplCopyWith(
          _$AbonoStateImpl value, $Res Function(_$AbonoStateImpl) then) =
      __$$AbonoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CuentaModel? cuenta,
      PrestamoModel? prestamo,
      bool esValidacion,
      bool esComprobante,
      ProcesaAbonoPrestamoRespuesta? respuestaProceso});

  @override
  $CuentaModelCopyWith<$Res>? get cuenta;
  @override
  $PrestamoModelCopyWith<$Res>? get prestamo;
  @override
  $ProcesaAbonoPrestamoRespuestaCopyWith<$Res>? get respuestaProceso;
}

/// @nodoc
class __$$AbonoStateImplCopyWithImpl<$Res>
    extends _$AbonoStateCopyWithImpl<$Res, _$AbonoStateImpl>
    implements _$$AbonoStateImplCopyWith<$Res> {
  __$$AbonoStateImplCopyWithImpl(
      _$AbonoStateImpl _value, $Res Function(_$AbonoStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cuenta = freezed,
    Object? prestamo = freezed,
    Object? esValidacion = null,
    Object? esComprobante = null,
    Object? respuestaProceso = freezed,
  }) {
    return _then(_$AbonoStateImpl(
      cuenta: freezed == cuenta
          ? _value.cuenta
          : cuenta // ignore: cast_nullable_to_non_nullable
              as CuentaModel?,
      prestamo: freezed == prestamo
          ? _value.prestamo
          : prestamo // ignore: cast_nullable_to_non_nullable
              as PrestamoModel?,
      esValidacion: null == esValidacion
          ? _value.esValidacion
          : esValidacion // ignore: cast_nullable_to_non_nullable
              as bool,
      esComprobante: null == esComprobante
          ? _value.esComprobante
          : esComprobante // ignore: cast_nullable_to_non_nullable
              as bool,
      respuestaProceso: freezed == respuestaProceso
          ? _value.respuestaProceso
          : respuestaProceso // ignore: cast_nullable_to_non_nullable
              as ProcesaAbonoPrestamoRespuesta?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AbonoStateImpl implements _AbonoState {
  _$AbonoStateImpl(
      {this.cuenta,
      this.prestamo,
      this.esValidacion = false,
      this.esComprobante = false,
      this.respuestaProceso});

  factory _$AbonoStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$AbonoStateImplFromJson(json);

  @override
  final CuentaModel? cuenta;
  @override
  final PrestamoModel? prestamo;
  @override
  @JsonKey()
  final bool esValidacion;
  @override
  @JsonKey()
  final bool esComprobante;
  @override
  final ProcesaAbonoPrestamoRespuesta? respuestaProceso;

  @override
  String toString() {
    return 'AbonoState(cuenta: $cuenta, prestamo: $prestamo, esValidacion: $esValidacion, esComprobante: $esComprobante, respuestaProceso: $respuestaProceso)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AbonoStateImpl &&
            (identical(other.cuenta, cuenta) || other.cuenta == cuenta) &&
            (identical(other.prestamo, prestamo) ||
                other.prestamo == prestamo) &&
            (identical(other.esValidacion, esValidacion) ||
                other.esValidacion == esValidacion) &&
            (identical(other.esComprobante, esComprobante) ||
                other.esComprobante == esComprobante) &&
            (identical(other.respuestaProceso, respuestaProceso) ||
                other.respuestaProceso == respuestaProceso));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cuenta, prestamo, esValidacion,
      esComprobante, respuestaProceso);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AbonoStateImplCopyWith<_$AbonoStateImpl> get copyWith =>
      __$$AbonoStateImplCopyWithImpl<_$AbonoStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AbonoStateImplToJson(
      this,
    );
  }
}

abstract class _AbonoState implements AbonoState {
  factory _AbonoState(
          {final CuentaModel? cuenta,
          final PrestamoModel? prestamo,
          final bool esValidacion,
          final bool esComprobante,
          final ProcesaAbonoPrestamoRespuesta? respuestaProceso}) =
      _$AbonoStateImpl;

  factory _AbonoState.fromJson(Map<String, dynamic> json) =
      _$AbonoStateImpl.fromJson;

  @override
  CuentaModel? get cuenta;
  @override
  PrestamoModel? get prestamo;
  @override
  bool get esValidacion;
  @override
  bool get esComprobante;
  @override
  ProcesaAbonoPrestamoRespuesta? get respuestaProceso;
  @override
  @JsonKey(ignore: true)
  _$$AbonoStateImplCopyWith<_$AbonoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BeneficiarioState _$BeneficiarioStateFromJson(Map<String, dynamic> json) {
  return _BeneficiarioState.fromJson(json);
}

/// @nodoc
mixin _$BeneficiarioState {
  List<BeneficiarioModel> get beneficiarios =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeneficiarioStateCopyWith<BeneficiarioState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeneficiarioStateCopyWith<$Res> {
  factory $BeneficiarioStateCopyWith(
          BeneficiarioState value, $Res Function(BeneficiarioState) then) =
      _$BeneficiarioStateCopyWithImpl<$Res, BeneficiarioState>;
  @useResult
  $Res call({List<BeneficiarioModel> beneficiarios});
}

/// @nodoc
class _$BeneficiarioStateCopyWithImpl<$Res, $Val extends BeneficiarioState>
    implements $BeneficiarioStateCopyWith<$Res> {
  _$BeneficiarioStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beneficiarios = null,
  }) {
    return _then(_value.copyWith(
      beneficiarios: null == beneficiarios
          ? _value.beneficiarios
          : beneficiarios // ignore: cast_nullable_to_non_nullable
              as List<BeneficiarioModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BeneficiarioStateImplCopyWith<$Res>
    implements $BeneficiarioStateCopyWith<$Res> {
  factory _$$BeneficiarioStateImplCopyWith(_$BeneficiarioStateImpl value,
          $Res Function(_$BeneficiarioStateImpl) then) =
      __$$BeneficiarioStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BeneficiarioModel> beneficiarios});
}

/// @nodoc
class __$$BeneficiarioStateImplCopyWithImpl<$Res>
    extends _$BeneficiarioStateCopyWithImpl<$Res, _$BeneficiarioStateImpl>
    implements _$$BeneficiarioStateImplCopyWith<$Res> {
  __$$BeneficiarioStateImplCopyWithImpl(_$BeneficiarioStateImpl _value,
      $Res Function(_$BeneficiarioStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beneficiarios = null,
  }) {
    return _then(_$BeneficiarioStateImpl(
      beneficiarios: null == beneficiarios
          ? _value._beneficiarios
          : beneficiarios // ignore: cast_nullable_to_non_nullable
              as List<BeneficiarioModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BeneficiarioStateImpl implements _BeneficiarioState {
  _$BeneficiarioStateImpl(
      {final List<BeneficiarioModel> beneficiarios = const []})
      : _beneficiarios = beneficiarios;

  factory _$BeneficiarioStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$BeneficiarioStateImplFromJson(json);

  final List<BeneficiarioModel> _beneficiarios;
  @override
  @JsonKey()
  List<BeneficiarioModel> get beneficiarios {
    if (_beneficiarios is EqualUnmodifiableListView) return _beneficiarios;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_beneficiarios);
  }

  @override
  String toString() {
    return 'BeneficiarioState(beneficiarios: $beneficiarios)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeneficiarioStateImpl &&
            const DeepCollectionEquality()
                .equals(other._beneficiarios, _beneficiarios));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_beneficiarios));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BeneficiarioStateImplCopyWith<_$BeneficiarioStateImpl> get copyWith =>
      __$$BeneficiarioStateImplCopyWithImpl<_$BeneficiarioStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BeneficiarioStateImplToJson(
      this,
    );
  }
}

abstract class _BeneficiarioState implements BeneficiarioState {
  factory _BeneficiarioState({final List<BeneficiarioModel> beneficiarios}) =
      _$BeneficiarioStateImpl;

  factory _BeneficiarioState.fromJson(Map<String, dynamic> json) =
      _$BeneficiarioStateImpl.fromJson;

  @override
  List<BeneficiarioModel> get beneficiarios;
  @override
  @JsonKey(ignore: true)
  _$$BeneficiarioStateImplCopyWith<_$BeneficiarioStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BeneficiarioEdicionState _$BeneficiarioEdicionStateFromJson(
    Map<String, dynamic> json) {
  return _BeneficiarioEdicionState.fromJson(json);
}

/// @nodoc
mixin _$BeneficiarioEdicionState {
  int get id => throw _privateConstructorUsedError;
  bool get esInterno => throw _privateConstructorUsedError;
  BeneficiarioModel? get beneficiario => throw _privateConstructorUsedError;
  ConsultaRequisitosBeneficiarioRespuesta? get requisitosRespuesta =>
      throw _privateConstructorUsedError;
  bool get esValidacion => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeneficiarioEdicionStateCopyWith<BeneficiarioEdicionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeneficiarioEdicionStateCopyWith<$Res> {
  factory $BeneficiarioEdicionStateCopyWith(BeneficiarioEdicionState value,
          $Res Function(BeneficiarioEdicionState) then) =
      _$BeneficiarioEdicionStateCopyWithImpl<$Res, BeneficiarioEdicionState>;
  @useResult
  $Res call(
      {int id,
      bool esInterno,
      BeneficiarioModel? beneficiario,
      ConsultaRequisitosBeneficiarioRespuesta? requisitosRespuesta,
      bool esValidacion});

  $BeneficiarioModelCopyWith<$Res>? get beneficiario;
  $ConsultaRequisitosBeneficiarioRespuestaCopyWith<$Res>?
      get requisitosRespuesta;
}

/// @nodoc
class _$BeneficiarioEdicionStateCopyWithImpl<$Res,
        $Val extends BeneficiarioEdicionState>
    implements $BeneficiarioEdicionStateCopyWith<$Res> {
  _$BeneficiarioEdicionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? esInterno = null,
    Object? beneficiario = freezed,
    Object? requisitosRespuesta = freezed,
    Object? esValidacion = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      esInterno: null == esInterno
          ? _value.esInterno
          : esInterno // ignore: cast_nullable_to_non_nullable
              as bool,
      beneficiario: freezed == beneficiario
          ? _value.beneficiario
          : beneficiario // ignore: cast_nullable_to_non_nullable
              as BeneficiarioModel?,
      requisitosRespuesta: freezed == requisitosRespuesta
          ? _value.requisitosRespuesta
          : requisitosRespuesta // ignore: cast_nullable_to_non_nullable
              as ConsultaRequisitosBeneficiarioRespuesta?,
      esValidacion: null == esValidacion
          ? _value.esValidacion
          : esValidacion // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BeneficiarioModelCopyWith<$Res>? get beneficiario {
    if (_value.beneficiario == null) {
      return null;
    }

    return $BeneficiarioModelCopyWith<$Res>(_value.beneficiario!, (value) {
      return _then(_value.copyWith(beneficiario: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ConsultaRequisitosBeneficiarioRespuestaCopyWith<$Res>?
      get requisitosRespuesta {
    if (_value.requisitosRespuesta == null) {
      return null;
    }

    return $ConsultaRequisitosBeneficiarioRespuestaCopyWith<$Res>(
        _value.requisitosRespuesta!, (value) {
      return _then(_value.copyWith(requisitosRespuesta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BeneficiarioEdicionStateImplCopyWith<$Res>
    implements $BeneficiarioEdicionStateCopyWith<$Res> {
  factory _$$BeneficiarioEdicionStateImplCopyWith(
          _$BeneficiarioEdicionStateImpl value,
          $Res Function(_$BeneficiarioEdicionStateImpl) then) =
      __$$BeneficiarioEdicionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      bool esInterno,
      BeneficiarioModel? beneficiario,
      ConsultaRequisitosBeneficiarioRespuesta? requisitosRespuesta,
      bool esValidacion});

  @override
  $BeneficiarioModelCopyWith<$Res>? get beneficiario;
  @override
  $ConsultaRequisitosBeneficiarioRespuestaCopyWith<$Res>?
      get requisitosRespuesta;
}

/// @nodoc
class __$$BeneficiarioEdicionStateImplCopyWithImpl<$Res>
    extends _$BeneficiarioEdicionStateCopyWithImpl<$Res,
        _$BeneficiarioEdicionStateImpl>
    implements _$$BeneficiarioEdicionStateImplCopyWith<$Res> {
  __$$BeneficiarioEdicionStateImplCopyWithImpl(
      _$BeneficiarioEdicionStateImpl _value,
      $Res Function(_$BeneficiarioEdicionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? esInterno = null,
    Object? beneficiario = freezed,
    Object? requisitosRespuesta = freezed,
    Object? esValidacion = null,
  }) {
    return _then(_$BeneficiarioEdicionStateImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      esInterno: null == esInterno
          ? _value.esInterno
          : esInterno // ignore: cast_nullable_to_non_nullable
              as bool,
      beneficiario: freezed == beneficiario
          ? _value.beneficiario
          : beneficiario // ignore: cast_nullable_to_non_nullable
              as BeneficiarioModel?,
      requisitosRespuesta: freezed == requisitosRespuesta
          ? _value.requisitosRespuesta
          : requisitosRespuesta // ignore: cast_nullable_to_non_nullable
              as ConsultaRequisitosBeneficiarioRespuesta?,
      esValidacion: null == esValidacion
          ? _value.esValidacion
          : esValidacion // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BeneficiarioEdicionStateImpl implements _BeneficiarioEdicionState {
  _$BeneficiarioEdicionStateImpl(
      {this.id = 0,
      this.esInterno = false,
      this.beneficiario,
      this.requisitosRespuesta,
      this.esValidacion = false});

  factory _$BeneficiarioEdicionStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$BeneficiarioEdicionStateImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final bool esInterno;
  @override
  final BeneficiarioModel? beneficiario;
  @override
  final ConsultaRequisitosBeneficiarioRespuesta? requisitosRespuesta;
  @override
  @JsonKey()
  final bool esValidacion;

  @override
  String toString() {
    return 'BeneficiarioEdicionState(id: $id, esInterno: $esInterno, beneficiario: $beneficiario, requisitosRespuesta: $requisitosRespuesta, esValidacion: $esValidacion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeneficiarioEdicionStateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.esInterno, esInterno) ||
                other.esInterno == esInterno) &&
            (identical(other.beneficiario, beneficiario) ||
                other.beneficiario == beneficiario) &&
            (identical(other.requisitosRespuesta, requisitosRespuesta) ||
                other.requisitosRespuesta == requisitosRespuesta) &&
            (identical(other.esValidacion, esValidacion) ||
                other.esValidacion == esValidacion));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, esInterno, beneficiario,
      requisitosRespuesta, esValidacion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BeneficiarioEdicionStateImplCopyWith<_$BeneficiarioEdicionStateImpl>
      get copyWith => __$$BeneficiarioEdicionStateImplCopyWithImpl<
          _$BeneficiarioEdicionStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BeneficiarioEdicionStateImplToJson(
      this,
    );
  }
}

abstract class _BeneficiarioEdicionState implements BeneficiarioEdicionState {
  factory _BeneficiarioEdicionState(
      {final int id,
      final bool esInterno,
      final BeneficiarioModel? beneficiario,
      final ConsultaRequisitosBeneficiarioRespuesta? requisitosRespuesta,
      final bool esValidacion}) = _$BeneficiarioEdicionStateImpl;

  factory _BeneficiarioEdicionState.fromJson(Map<String, dynamic> json) =
      _$BeneficiarioEdicionStateImpl.fromJson;

  @override
  int get id;
  @override
  bool get esInterno;
  @override
  BeneficiarioModel? get beneficiario;
  @override
  ConsultaRequisitosBeneficiarioRespuesta? get requisitosRespuesta;
  @override
  bool get esValidacion;
  @override
  @JsonKey(ignore: true)
  _$$BeneficiarioEdicionStateImplCopyWith<_$BeneficiarioEdicionStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultaAgenciaCajeroRespuesta _$ConsultaAgenciaCajeroRespuestaFromJson(
    Map<String, dynamic> json) {
  return _ConsultaAgenciaCajeroRespuesta.fromJson(json);
}

/// @nodoc
mixin _$ConsultaAgenciaCajeroRespuesta {
  List<AgenciaCajeroItem> get agenciaCajeroLista =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConsultaAgenciaCajeroRespuestaCopyWith<ConsultaAgenciaCajeroRespuesta>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultaAgenciaCajeroRespuestaCopyWith<$Res> {
  factory $ConsultaAgenciaCajeroRespuestaCopyWith(
          ConsultaAgenciaCajeroRespuesta value,
          $Res Function(ConsultaAgenciaCajeroRespuesta) then) =
      _$ConsultaAgenciaCajeroRespuestaCopyWithImpl<$Res,
          ConsultaAgenciaCajeroRespuesta>;
  @useResult
  $Res call({List<AgenciaCajeroItem> agenciaCajeroLista});
}

/// @nodoc
class _$ConsultaAgenciaCajeroRespuestaCopyWithImpl<$Res,
        $Val extends ConsultaAgenciaCajeroRespuesta>
    implements $ConsultaAgenciaCajeroRespuestaCopyWith<$Res> {
  _$ConsultaAgenciaCajeroRespuestaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agenciaCajeroLista = null,
  }) {
    return _then(_value.copyWith(
      agenciaCajeroLista: null == agenciaCajeroLista
          ? _value.agenciaCajeroLista
          : agenciaCajeroLista // ignore: cast_nullable_to_non_nullable
              as List<AgenciaCajeroItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConsultaAgenciaCajeroRespuestaImplCopyWith<$Res>
    implements $ConsultaAgenciaCajeroRespuestaCopyWith<$Res> {
  factory _$$ConsultaAgenciaCajeroRespuestaImplCopyWith(
          _$ConsultaAgenciaCajeroRespuestaImpl value,
          $Res Function(_$ConsultaAgenciaCajeroRespuestaImpl) then) =
      __$$ConsultaAgenciaCajeroRespuestaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AgenciaCajeroItem> agenciaCajeroLista});
}

/// @nodoc
class __$$ConsultaAgenciaCajeroRespuestaImplCopyWithImpl<$Res>
    extends _$ConsultaAgenciaCajeroRespuestaCopyWithImpl<$Res,
        _$ConsultaAgenciaCajeroRespuestaImpl>
    implements _$$ConsultaAgenciaCajeroRespuestaImplCopyWith<$Res> {
  __$$ConsultaAgenciaCajeroRespuestaImplCopyWithImpl(
      _$ConsultaAgenciaCajeroRespuestaImpl _value,
      $Res Function(_$ConsultaAgenciaCajeroRespuestaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agenciaCajeroLista = null,
  }) {
    return _then(_$ConsultaAgenciaCajeroRespuestaImpl(
      agenciaCajeroLista: null == agenciaCajeroLista
          ? _value._agenciaCajeroLista
          : agenciaCajeroLista // ignore: cast_nullable_to_non_nullable
              as List<AgenciaCajeroItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultaAgenciaCajeroRespuestaImpl
    implements _ConsultaAgenciaCajeroRespuesta {
  _$ConsultaAgenciaCajeroRespuestaImpl(
      {final List<AgenciaCajeroItem> agenciaCajeroLista = const []})
      : _agenciaCajeroLista = agenciaCajeroLista;

  factory _$ConsultaAgenciaCajeroRespuestaImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultaAgenciaCajeroRespuestaImplFromJson(json);

  final List<AgenciaCajeroItem> _agenciaCajeroLista;
  @override
  @JsonKey()
  List<AgenciaCajeroItem> get agenciaCajeroLista {
    if (_agenciaCajeroLista is EqualUnmodifiableListView)
      return _agenciaCajeroLista;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_agenciaCajeroLista);
  }

  @override
  String toString() {
    return 'ConsultaAgenciaCajeroRespuesta(agenciaCajeroLista: $agenciaCajeroLista)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultaAgenciaCajeroRespuestaImpl &&
            const DeepCollectionEquality()
                .equals(other._agenciaCajeroLista, _agenciaCajeroLista));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_agenciaCajeroLista));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultaAgenciaCajeroRespuestaImplCopyWith<
          _$ConsultaAgenciaCajeroRespuestaImpl>
      get copyWith => __$$ConsultaAgenciaCajeroRespuestaImplCopyWithImpl<
          _$ConsultaAgenciaCajeroRespuestaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultaAgenciaCajeroRespuestaImplToJson(
      this,
    );
  }
}

abstract class _ConsultaAgenciaCajeroRespuesta
    implements ConsultaAgenciaCajeroRespuesta {
  factory _ConsultaAgenciaCajeroRespuesta(
          {final List<AgenciaCajeroItem> agenciaCajeroLista}) =
      _$ConsultaAgenciaCajeroRespuestaImpl;

  factory _ConsultaAgenciaCajeroRespuesta.fromJson(Map<String, dynamic> json) =
      _$ConsultaAgenciaCajeroRespuestaImpl.fromJson;

  @override
  List<AgenciaCajeroItem> get agenciaCajeroLista;
  @override
  @JsonKey(ignore: true)
  _$$ConsultaAgenciaCajeroRespuestaImplCopyWith<
          _$ConsultaAgenciaCajeroRespuestaImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AgenciaCajeroItem _$AgenciaCajeroItemFromJson(Map<String, dynamic> json) {
  return _AgenciaCajeroItem.fromJson(json);
}

/// @nodoc
mixin _$AgenciaCajeroItem {
  String get nombre => throw _privateConstructorUsedError;
  String get descripcion => throw _privateConstructorUsedError;
  String get telefono => throw _privateConstructorUsedError;
  double get latitud => throw _privateConstructorUsedError;
  double get longitud => throw _privateConstructorUsedError;
  bool get esCajero => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgenciaCajeroItemCopyWith<AgenciaCajeroItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgenciaCajeroItemCopyWith<$Res> {
  factory $AgenciaCajeroItemCopyWith(
          AgenciaCajeroItem value, $Res Function(AgenciaCajeroItem) then) =
      _$AgenciaCajeroItemCopyWithImpl<$Res, AgenciaCajeroItem>;
  @useResult
  $Res call(
      {String nombre,
      String descripcion,
      String telefono,
      double latitud,
      double longitud,
      bool esCajero});
}

/// @nodoc
class _$AgenciaCajeroItemCopyWithImpl<$Res, $Val extends AgenciaCajeroItem>
    implements $AgenciaCajeroItemCopyWith<$Res> {
  _$AgenciaCajeroItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nombre = null,
    Object? descripcion = null,
    Object? telefono = null,
    Object? latitud = null,
    Object? longitud = null,
    Object? esCajero = null,
  }) {
    return _then(_value.copyWith(
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      descripcion: null == descripcion
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
      telefono: null == telefono
          ? _value.telefono
          : telefono // ignore: cast_nullable_to_non_nullable
              as String,
      latitud: null == latitud
          ? _value.latitud
          : latitud // ignore: cast_nullable_to_non_nullable
              as double,
      longitud: null == longitud
          ? _value.longitud
          : longitud // ignore: cast_nullable_to_non_nullable
              as double,
      esCajero: null == esCajero
          ? _value.esCajero
          : esCajero // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AgenciaCajeroItemImplCopyWith<$Res>
    implements $AgenciaCajeroItemCopyWith<$Res> {
  factory _$$AgenciaCajeroItemImplCopyWith(_$AgenciaCajeroItemImpl value,
          $Res Function(_$AgenciaCajeroItemImpl) then) =
      __$$AgenciaCajeroItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String nombre,
      String descripcion,
      String telefono,
      double latitud,
      double longitud,
      bool esCajero});
}

/// @nodoc
class __$$AgenciaCajeroItemImplCopyWithImpl<$Res>
    extends _$AgenciaCajeroItemCopyWithImpl<$Res, _$AgenciaCajeroItemImpl>
    implements _$$AgenciaCajeroItemImplCopyWith<$Res> {
  __$$AgenciaCajeroItemImplCopyWithImpl(_$AgenciaCajeroItemImpl _value,
      $Res Function(_$AgenciaCajeroItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nombre = null,
    Object? descripcion = null,
    Object? telefono = null,
    Object? latitud = null,
    Object? longitud = null,
    Object? esCajero = null,
  }) {
    return _then(_$AgenciaCajeroItemImpl(
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      descripcion: null == descripcion
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
      telefono: null == telefono
          ? _value.telefono
          : telefono // ignore: cast_nullable_to_non_nullable
              as String,
      latitud: null == latitud
          ? _value.latitud
          : latitud // ignore: cast_nullable_to_non_nullable
              as double,
      longitud: null == longitud
          ? _value.longitud
          : longitud // ignore: cast_nullable_to_non_nullable
              as double,
      esCajero: null == esCajero
          ? _value.esCajero
          : esCajero // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgenciaCajeroItemImpl implements _AgenciaCajeroItem {
  _$AgenciaCajeroItemImpl(
      {this.nombre = '',
      this.descripcion = '',
      this.telefono = '',
      this.latitud = 0.00,
      this.longitud = 0.00,
      this.esCajero = false});

  factory _$AgenciaCajeroItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$AgenciaCajeroItemImplFromJson(json);

  @override
  @JsonKey()
  final String nombre;
  @override
  @JsonKey()
  final String descripcion;
  @override
  @JsonKey()
  final String telefono;
  @override
  @JsonKey()
  final double latitud;
  @override
  @JsonKey()
  final double longitud;
  @override
  @JsonKey()
  final bool esCajero;

  @override
  String toString() {
    return 'AgenciaCajeroItem(nombre: $nombre, descripcion: $descripcion, telefono: $telefono, latitud: $latitud, longitud: $longitud, esCajero: $esCajero)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgenciaCajeroItemImpl &&
            (identical(other.nombre, nombre) || other.nombre == nombre) &&
            (identical(other.descripcion, descripcion) ||
                other.descripcion == descripcion) &&
            (identical(other.telefono, telefono) ||
                other.telefono == telefono) &&
            (identical(other.latitud, latitud) || other.latitud == latitud) &&
            (identical(other.longitud, longitud) ||
                other.longitud == longitud) &&
            (identical(other.esCajero, esCajero) ||
                other.esCajero == esCajero));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, nombre, descripcion, telefono, latitud, longitud, esCajero);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgenciaCajeroItemImplCopyWith<_$AgenciaCajeroItemImpl> get copyWith =>
      __$$AgenciaCajeroItemImplCopyWithImpl<_$AgenciaCajeroItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgenciaCajeroItemImplToJson(
      this,
    );
  }
}

abstract class _AgenciaCajeroItem implements AgenciaCajeroItem {
  factory _AgenciaCajeroItem(
      {final String nombre,
      final String descripcion,
      final String telefono,
      final double latitud,
      final double longitud,
      final bool esCajero}) = _$AgenciaCajeroItemImpl;

  factory _AgenciaCajeroItem.fromJson(Map<String, dynamic> json) =
      _$AgenciaCajeroItemImpl.fromJson;

  @override
  String get nombre;
  @override
  String get descripcion;
  @override
  String get telefono;
  @override
  double get latitud;
  @override
  double get longitud;
  @override
  bool get esCajero;
  @override
  @JsonKey(ignore: true)
  _$$AgenciaCajeroItemImplCopyWith<_$AgenciaCajeroItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AgenciaState _$AgenciaStateFromJson(Map<String, dynamic> json) {
  return _AgenciaState.fromJson(json);
}

/// @nodoc
mixin _$AgenciaState {
  List<AgenciaCajeroItem> get agencias => throw _privateConstructorUsedError;
  AgenciaCajeroItem? get agenciaSeleccionada =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgenciaStateCopyWith<AgenciaState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgenciaStateCopyWith<$Res> {
  factory $AgenciaStateCopyWith(
          AgenciaState value, $Res Function(AgenciaState) then) =
      _$AgenciaStateCopyWithImpl<$Res, AgenciaState>;
  @useResult
  $Res call(
      {List<AgenciaCajeroItem> agencias,
      AgenciaCajeroItem? agenciaSeleccionada});

  $AgenciaCajeroItemCopyWith<$Res>? get agenciaSeleccionada;
}

/// @nodoc
class _$AgenciaStateCopyWithImpl<$Res, $Val extends AgenciaState>
    implements $AgenciaStateCopyWith<$Res> {
  _$AgenciaStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agencias = null,
    Object? agenciaSeleccionada = freezed,
  }) {
    return _then(_value.copyWith(
      agencias: null == agencias
          ? _value.agencias
          : agencias // ignore: cast_nullable_to_non_nullable
              as List<AgenciaCajeroItem>,
      agenciaSeleccionada: freezed == agenciaSeleccionada
          ? _value.agenciaSeleccionada
          : agenciaSeleccionada // ignore: cast_nullable_to_non_nullable
              as AgenciaCajeroItem?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AgenciaCajeroItemCopyWith<$Res>? get agenciaSeleccionada {
    if (_value.agenciaSeleccionada == null) {
      return null;
    }

    return $AgenciaCajeroItemCopyWith<$Res>(_value.agenciaSeleccionada!,
        (value) {
      return _then(_value.copyWith(agenciaSeleccionada: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AgenciaStateImplCopyWith<$Res>
    implements $AgenciaStateCopyWith<$Res> {
  factory _$$AgenciaStateImplCopyWith(
          _$AgenciaStateImpl value, $Res Function(_$AgenciaStateImpl) then) =
      __$$AgenciaStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<AgenciaCajeroItem> agencias,
      AgenciaCajeroItem? agenciaSeleccionada});

  @override
  $AgenciaCajeroItemCopyWith<$Res>? get agenciaSeleccionada;
}

/// @nodoc
class __$$AgenciaStateImplCopyWithImpl<$Res>
    extends _$AgenciaStateCopyWithImpl<$Res, _$AgenciaStateImpl>
    implements _$$AgenciaStateImplCopyWith<$Res> {
  __$$AgenciaStateImplCopyWithImpl(
      _$AgenciaStateImpl _value, $Res Function(_$AgenciaStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agencias = null,
    Object? agenciaSeleccionada = freezed,
  }) {
    return _then(_$AgenciaStateImpl(
      agencias: null == agencias
          ? _value._agencias
          : agencias // ignore: cast_nullable_to_non_nullable
              as List<AgenciaCajeroItem>,
      agenciaSeleccionada: freezed == agenciaSeleccionada
          ? _value.agenciaSeleccionada
          : agenciaSeleccionada // ignore: cast_nullable_to_non_nullable
              as AgenciaCajeroItem?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgenciaStateImpl implements _AgenciaState {
  _$AgenciaStateImpl(
      {final List<AgenciaCajeroItem> agencias = const [],
      this.agenciaSeleccionada})
      : _agencias = agencias;

  factory _$AgenciaStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$AgenciaStateImplFromJson(json);

  final List<AgenciaCajeroItem> _agencias;
  @override
  @JsonKey()
  List<AgenciaCajeroItem> get agencias {
    if (_agencias is EqualUnmodifiableListView) return _agencias;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_agencias);
  }

  @override
  final AgenciaCajeroItem? agenciaSeleccionada;

  @override
  String toString() {
    return 'AgenciaState(agencias: $agencias, agenciaSeleccionada: $agenciaSeleccionada)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgenciaStateImpl &&
            const DeepCollectionEquality().equals(other._agencias, _agencias) &&
            (identical(other.agenciaSeleccionada, agenciaSeleccionada) ||
                other.agenciaSeleccionada == agenciaSeleccionada));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_agencias), agenciaSeleccionada);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgenciaStateImplCopyWith<_$AgenciaStateImpl> get copyWith =>
      __$$AgenciaStateImplCopyWithImpl<_$AgenciaStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgenciaStateImplToJson(
      this,
    );
  }
}

abstract class _AgenciaState implements AgenciaState {
  factory _AgenciaState(
      {final List<AgenciaCajeroItem> agencias,
      final AgenciaCajeroItem? agenciaSeleccionada}) = _$AgenciaStateImpl;

  factory _AgenciaState.fromJson(Map<String, dynamic> json) =
      _$AgenciaStateImpl.fromJson;

  @override
  List<AgenciaCajeroItem> get agencias;
  @override
  AgenciaCajeroItem? get agenciaSeleccionada;
  @override
  @JsonKey(ignore: true)
  _$$AgenciaStateImplCopyWith<_$AgenciaStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RegistroPinAccesoRequerimiento _$RegistroPinAccesoRequerimientoFromJson(
    Map<String, dynamic> json) {
  return _RegistroPinAccesoRequerimiento.fromJson(json);
}

/// @nodoc
mixin _$RegistroPinAccesoRequerimiento {
  String get pinAcceso => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegistroPinAccesoRequerimientoCopyWith<RegistroPinAccesoRequerimiento>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistroPinAccesoRequerimientoCopyWith<$Res> {
  factory $RegistroPinAccesoRequerimientoCopyWith(
          RegistroPinAccesoRequerimiento value,
          $Res Function(RegistroPinAccesoRequerimiento) then) =
      _$RegistroPinAccesoRequerimientoCopyWithImpl<$Res,
          RegistroPinAccesoRequerimiento>;
  @useResult
  $Res call({String pinAcceso});
}

/// @nodoc
class _$RegistroPinAccesoRequerimientoCopyWithImpl<$Res,
        $Val extends RegistroPinAccesoRequerimiento>
    implements $RegistroPinAccesoRequerimientoCopyWith<$Res> {
  _$RegistroPinAccesoRequerimientoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pinAcceso = null,
  }) {
    return _then(_value.copyWith(
      pinAcceso: null == pinAcceso
          ? _value.pinAcceso
          : pinAcceso // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegistroPinAccesoRequerimientoImplCopyWith<$Res>
    implements $RegistroPinAccesoRequerimientoCopyWith<$Res> {
  factory _$$RegistroPinAccesoRequerimientoImplCopyWith(
          _$RegistroPinAccesoRequerimientoImpl value,
          $Res Function(_$RegistroPinAccesoRequerimientoImpl) then) =
      __$$RegistroPinAccesoRequerimientoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pinAcceso});
}

/// @nodoc
class __$$RegistroPinAccesoRequerimientoImplCopyWithImpl<$Res>
    extends _$RegistroPinAccesoRequerimientoCopyWithImpl<$Res,
        _$RegistroPinAccesoRequerimientoImpl>
    implements _$$RegistroPinAccesoRequerimientoImplCopyWith<$Res> {
  __$$RegistroPinAccesoRequerimientoImplCopyWithImpl(
      _$RegistroPinAccesoRequerimientoImpl _value,
      $Res Function(_$RegistroPinAccesoRequerimientoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pinAcceso = null,
  }) {
    return _then(_$RegistroPinAccesoRequerimientoImpl(
      pinAcceso: null == pinAcceso
          ? _value.pinAcceso
          : pinAcceso // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegistroPinAccesoRequerimientoImpl
    implements _RegistroPinAccesoRequerimiento {
  _$RegistroPinAccesoRequerimientoImpl({this.pinAcceso = ''});

  factory _$RegistroPinAccesoRequerimientoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RegistroPinAccesoRequerimientoImplFromJson(json);

  @override
  @JsonKey()
  final String pinAcceso;

  @override
  String toString() {
    return 'RegistroPinAccesoRequerimiento(pinAcceso: $pinAcceso)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistroPinAccesoRequerimientoImpl &&
            (identical(other.pinAcceso, pinAcceso) ||
                other.pinAcceso == pinAcceso));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pinAcceso);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistroPinAccesoRequerimientoImplCopyWith<
          _$RegistroPinAccesoRequerimientoImpl>
      get copyWith => __$$RegistroPinAccesoRequerimientoImplCopyWithImpl<
          _$RegistroPinAccesoRequerimientoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegistroPinAccesoRequerimientoImplToJson(
      this,
    );
  }
}

abstract class _RegistroPinAccesoRequerimiento
    implements RegistroPinAccesoRequerimiento {
  factory _RegistroPinAccesoRequerimiento({final String pinAcceso}) =
      _$RegistroPinAccesoRequerimientoImpl;

  factory _RegistroPinAccesoRequerimiento.fromJson(Map<String, dynamic> json) =
      _$RegistroPinAccesoRequerimientoImpl.fromJson;

  @override
  String get pinAcceso;
  @override
  @JsonKey(ignore: true)
  _$$RegistroPinAccesoRequerimientoImplCopyWith<
          _$RegistroPinAccesoRequerimientoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ValidaPinAccesoRequerimiento _$ValidaPinAccesoRequerimientoFromJson(
    Map<String, dynamic> json) {
  return _ValidaPinAccesoRequerimiento.fromJson(json);
}

/// @nodoc
mixin _$ValidaPinAccesoRequerimiento {
  int get idRegistro => throw _privateConstructorUsedError;
  String get textoOriginal => throw _privateConstructorUsedError;
  String get firma => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ValidaPinAccesoRequerimientoCopyWith<ValidaPinAccesoRequerimiento>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidaPinAccesoRequerimientoCopyWith<$Res> {
  factory $ValidaPinAccesoRequerimientoCopyWith(
          ValidaPinAccesoRequerimiento value,
          $Res Function(ValidaPinAccesoRequerimiento) then) =
      _$ValidaPinAccesoRequerimientoCopyWithImpl<$Res,
          ValidaPinAccesoRequerimiento>;
  @useResult
  $Res call({int idRegistro, String textoOriginal, String firma});
}

/// @nodoc
class _$ValidaPinAccesoRequerimientoCopyWithImpl<$Res,
        $Val extends ValidaPinAccesoRequerimiento>
    implements $ValidaPinAccesoRequerimientoCopyWith<$Res> {
  _$ValidaPinAccesoRequerimientoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idRegistro = null,
    Object? textoOriginal = null,
    Object? firma = null,
  }) {
    return _then(_value.copyWith(
      idRegistro: null == idRegistro
          ? _value.idRegistro
          : idRegistro // ignore: cast_nullable_to_non_nullable
              as int,
      textoOriginal: null == textoOriginal
          ? _value.textoOriginal
          : textoOriginal // ignore: cast_nullable_to_non_nullable
              as String,
      firma: null == firma
          ? _value.firma
          : firma // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValidaPinAccesoRequerimientoImplCopyWith<$Res>
    implements $ValidaPinAccesoRequerimientoCopyWith<$Res> {
  factory _$$ValidaPinAccesoRequerimientoImplCopyWith(
          _$ValidaPinAccesoRequerimientoImpl value,
          $Res Function(_$ValidaPinAccesoRequerimientoImpl) then) =
      __$$ValidaPinAccesoRequerimientoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int idRegistro, String textoOriginal, String firma});
}

/// @nodoc
class __$$ValidaPinAccesoRequerimientoImplCopyWithImpl<$Res>
    extends _$ValidaPinAccesoRequerimientoCopyWithImpl<$Res,
        _$ValidaPinAccesoRequerimientoImpl>
    implements _$$ValidaPinAccesoRequerimientoImplCopyWith<$Res> {
  __$$ValidaPinAccesoRequerimientoImplCopyWithImpl(
      _$ValidaPinAccesoRequerimientoImpl _value,
      $Res Function(_$ValidaPinAccesoRequerimientoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idRegistro = null,
    Object? textoOriginal = null,
    Object? firma = null,
  }) {
    return _then(_$ValidaPinAccesoRequerimientoImpl(
      idRegistro: null == idRegistro
          ? _value.idRegistro
          : idRegistro // ignore: cast_nullable_to_non_nullable
              as int,
      textoOriginal: null == textoOriginal
          ? _value.textoOriginal
          : textoOriginal // ignore: cast_nullable_to_non_nullable
              as String,
      firma: null == firma
          ? _value.firma
          : firma // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValidaPinAccesoRequerimientoImpl
    implements _ValidaPinAccesoRequerimiento {
  _$ValidaPinAccesoRequerimientoImpl(
      {this.idRegistro = 0, this.textoOriginal = '', this.firma = ''});

  factory _$ValidaPinAccesoRequerimientoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ValidaPinAccesoRequerimientoImplFromJson(json);

  @override
  @JsonKey()
  final int idRegistro;
  @override
  @JsonKey()
  final String textoOriginal;
  @override
  @JsonKey()
  final String firma;

  @override
  String toString() {
    return 'ValidaPinAccesoRequerimiento(idRegistro: $idRegistro, textoOriginal: $textoOriginal, firma: $firma)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidaPinAccesoRequerimientoImpl &&
            (identical(other.idRegistro, idRegistro) ||
                other.idRegistro == idRegistro) &&
            (identical(other.textoOriginal, textoOriginal) ||
                other.textoOriginal == textoOriginal) &&
            (identical(other.firma, firma) || other.firma == firma));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, idRegistro, textoOriginal, firma);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidaPinAccesoRequerimientoImplCopyWith<
          _$ValidaPinAccesoRequerimientoImpl>
      get copyWith => __$$ValidaPinAccesoRequerimientoImplCopyWithImpl<
          _$ValidaPinAccesoRequerimientoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValidaPinAccesoRequerimientoImplToJson(
      this,
    );
  }
}

abstract class _ValidaPinAccesoRequerimiento
    implements ValidaPinAccesoRequerimiento {
  factory _ValidaPinAccesoRequerimiento(
      {final int idRegistro,
      final String textoOriginal,
      final String firma}) = _$ValidaPinAccesoRequerimientoImpl;

  factory _ValidaPinAccesoRequerimiento.fromJson(Map<String, dynamic> json) =
      _$ValidaPinAccesoRequerimientoImpl.fromJson;

  @override
  int get idRegistro;
  @override
  String get textoOriginal;
  @override
  String get firma;
  @override
  @JsonKey(ignore: true)
  _$$ValidaPinAccesoRequerimientoImplCopyWith<
          _$ValidaPinAccesoRequerimientoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConceptoModel _$ConceptoModelFromJson(Map<String, dynamic> json) {
  return _ConceptoModel.fromJson(json);
}

/// @nodoc
mixin _$ConceptoModel {
  String get codigo => throw _privateConstructorUsedError;
  String get nombre => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConceptoModelCopyWith<ConceptoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConceptoModelCopyWith<$Res> {
  factory $ConceptoModelCopyWith(
          ConceptoModel value, $Res Function(ConceptoModel) then) =
      _$ConceptoModelCopyWithImpl<$Res, ConceptoModel>;
  @useResult
  $Res call({String codigo, String nombre});
}

/// @nodoc
class _$ConceptoModelCopyWithImpl<$Res, $Val extends ConceptoModel>
    implements $ConceptoModelCopyWith<$Res> {
  _$ConceptoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codigo = null,
    Object? nombre = null,
  }) {
    return _then(_value.copyWith(
      codigo: null == codigo
          ? _value.codigo
          : codigo // ignore: cast_nullable_to_non_nullable
              as String,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConceptoModelImplCopyWith<$Res>
    implements $ConceptoModelCopyWith<$Res> {
  factory _$$ConceptoModelImplCopyWith(
          _$ConceptoModelImpl value, $Res Function(_$ConceptoModelImpl) then) =
      __$$ConceptoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String codigo, String nombre});
}

/// @nodoc
class __$$ConceptoModelImplCopyWithImpl<$Res>
    extends _$ConceptoModelCopyWithImpl<$Res, _$ConceptoModelImpl>
    implements _$$ConceptoModelImplCopyWith<$Res> {
  __$$ConceptoModelImplCopyWithImpl(
      _$ConceptoModelImpl _value, $Res Function(_$ConceptoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codigo = null,
    Object? nombre = null,
  }) {
    return _then(_$ConceptoModelImpl(
      codigo: null == codigo
          ? _value.codigo
          : codigo // ignore: cast_nullable_to_non_nullable
              as String,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConceptoModelImpl implements _ConceptoModel {
  _$ConceptoModelImpl({this.codigo = '', this.nombre = ''});

  factory _$ConceptoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConceptoModelImplFromJson(json);

  @override
  @JsonKey()
  final String codigo;
  @override
  @JsonKey()
  final String nombre;

  @override
  String toString() {
    return 'ConceptoModel(codigo: $codigo, nombre: $nombre)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConceptoModelImpl &&
            (identical(other.codigo, codigo) || other.codigo == codigo) &&
            (identical(other.nombre, nombre) || other.nombre == nombre));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, codigo, nombre);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConceptoModelImplCopyWith<_$ConceptoModelImpl> get copyWith =>
      __$$ConceptoModelImplCopyWithImpl<_$ConceptoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConceptoModelImplToJson(
      this,
    );
  }
}

abstract class _ConceptoModel implements ConceptoModel {
  factory _ConceptoModel({final String codigo, final String nombre}) =
      _$ConceptoModelImpl;

  factory _ConceptoModel.fromJson(Map<String, dynamic> json) =
      _$ConceptoModelImpl.fromJson;

  @override
  String get codigo;
  @override
  String get nombre;
  @override
  @JsonKey(ignore: true)
  _$$ConceptoModelImplCopyWith<_$ConceptoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SeleccionConceptoState _$SeleccionConceptoStateFromJson(
    Map<String, dynamic> json) {
  return _SeleccionConceptoState.fromJson(json);
}

/// @nodoc
mixin _$SeleccionConceptoState {
  List<ConceptoModel> get conceptos => throw _privateConstructorUsedError;
  ConceptoModel? get concepto => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeleccionConceptoStateCopyWith<SeleccionConceptoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeleccionConceptoStateCopyWith<$Res> {
  factory $SeleccionConceptoStateCopyWith(SeleccionConceptoState value,
          $Res Function(SeleccionConceptoState) then) =
      _$SeleccionConceptoStateCopyWithImpl<$Res, SeleccionConceptoState>;
  @useResult
  $Res call({List<ConceptoModel> conceptos, ConceptoModel? concepto});

  $ConceptoModelCopyWith<$Res>? get concepto;
}

/// @nodoc
class _$SeleccionConceptoStateCopyWithImpl<$Res,
        $Val extends SeleccionConceptoState>
    implements $SeleccionConceptoStateCopyWith<$Res> {
  _$SeleccionConceptoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conceptos = null,
    Object? concepto = freezed,
  }) {
    return _then(_value.copyWith(
      conceptos: null == conceptos
          ? _value.conceptos
          : conceptos // ignore: cast_nullable_to_non_nullable
              as List<ConceptoModel>,
      concepto: freezed == concepto
          ? _value.concepto
          : concepto // ignore: cast_nullable_to_non_nullable
              as ConceptoModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConceptoModelCopyWith<$Res>? get concepto {
    if (_value.concepto == null) {
      return null;
    }

    return $ConceptoModelCopyWith<$Res>(_value.concepto!, (value) {
      return _then(_value.copyWith(concepto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SeleccionConceptoStateImplCopyWith<$Res>
    implements $SeleccionConceptoStateCopyWith<$Res> {
  factory _$$SeleccionConceptoStateImplCopyWith(
          _$SeleccionConceptoStateImpl value,
          $Res Function(_$SeleccionConceptoStateImpl) then) =
      __$$SeleccionConceptoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ConceptoModel> conceptos, ConceptoModel? concepto});

  @override
  $ConceptoModelCopyWith<$Res>? get concepto;
}

/// @nodoc
class __$$SeleccionConceptoStateImplCopyWithImpl<$Res>
    extends _$SeleccionConceptoStateCopyWithImpl<$Res,
        _$SeleccionConceptoStateImpl>
    implements _$$SeleccionConceptoStateImplCopyWith<$Res> {
  __$$SeleccionConceptoStateImplCopyWithImpl(
      _$SeleccionConceptoStateImpl _value,
      $Res Function(_$SeleccionConceptoStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conceptos = null,
    Object? concepto = freezed,
  }) {
    return _then(_$SeleccionConceptoStateImpl(
      conceptos: null == conceptos
          ? _value._conceptos
          : conceptos // ignore: cast_nullable_to_non_nullable
              as List<ConceptoModel>,
      concepto: freezed == concepto
          ? _value.concepto
          : concepto // ignore: cast_nullable_to_non_nullable
              as ConceptoModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SeleccionConceptoStateImpl implements _SeleccionConceptoState {
  _$SeleccionConceptoStateImpl(
      {final List<ConceptoModel> conceptos = const [], this.concepto})
      : _conceptos = conceptos;

  factory _$SeleccionConceptoStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeleccionConceptoStateImplFromJson(json);

  final List<ConceptoModel> _conceptos;
  @override
  @JsonKey()
  List<ConceptoModel> get conceptos {
    if (_conceptos is EqualUnmodifiableListView) return _conceptos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conceptos);
  }

  @override
  final ConceptoModel? concepto;

  @override
  String toString() {
    return 'SeleccionConceptoState(conceptos: $conceptos, concepto: $concepto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeleccionConceptoStateImpl &&
            const DeepCollectionEquality()
                .equals(other._conceptos, _conceptos) &&
            (identical(other.concepto, concepto) ||
                other.concepto == concepto));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_conceptos), concepto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SeleccionConceptoStateImplCopyWith<_$SeleccionConceptoStateImpl>
      get copyWith => __$$SeleccionConceptoStateImplCopyWithImpl<
          _$SeleccionConceptoStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SeleccionConceptoStateImplToJson(
      this,
    );
  }
}

abstract class _SeleccionConceptoState implements SeleccionConceptoState {
  factory _SeleccionConceptoState(
      {final List<ConceptoModel> conceptos,
      final ConceptoModel? concepto}) = _$SeleccionConceptoStateImpl;

  factory _SeleccionConceptoState.fromJson(Map<String, dynamic> json) =
      _$SeleccionConceptoStateImpl.fromJson;

  @override
  List<ConceptoModel> get conceptos;
  @override
  ConceptoModel? get concepto;
  @override
  @JsonKey(ignore: true)
  _$$SeleccionConceptoStateImplCopyWith<_$SeleccionConceptoStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultaConceptosRespuesta _$ConsultaConceptosRespuestaFromJson(
    Map<String, dynamic> json) {
  return _ConsultaConceptosRespuesta.fromJson(json);
}

/// @nodoc
mixin _$ConsultaConceptosRespuesta {
  List<ConceptoModel> get conceptoLista => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConsultaConceptosRespuestaCopyWith<ConsultaConceptosRespuesta>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultaConceptosRespuestaCopyWith<$Res> {
  factory $ConsultaConceptosRespuestaCopyWith(ConsultaConceptosRespuesta value,
          $Res Function(ConsultaConceptosRespuesta) then) =
      _$ConsultaConceptosRespuestaCopyWithImpl<$Res,
          ConsultaConceptosRespuesta>;
  @useResult
  $Res call({List<ConceptoModel> conceptoLista});
}

/// @nodoc
class _$ConsultaConceptosRespuestaCopyWithImpl<$Res,
        $Val extends ConsultaConceptosRespuesta>
    implements $ConsultaConceptosRespuestaCopyWith<$Res> {
  _$ConsultaConceptosRespuestaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conceptoLista = null,
  }) {
    return _then(_value.copyWith(
      conceptoLista: null == conceptoLista
          ? _value.conceptoLista
          : conceptoLista // ignore: cast_nullable_to_non_nullable
              as List<ConceptoModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConsultaConceptosRespuestaImplCopyWith<$Res>
    implements $ConsultaConceptosRespuestaCopyWith<$Res> {
  factory _$$ConsultaConceptosRespuestaImplCopyWith(
          _$ConsultaConceptosRespuestaImpl value,
          $Res Function(_$ConsultaConceptosRespuestaImpl) then) =
      __$$ConsultaConceptosRespuestaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ConceptoModel> conceptoLista});
}

/// @nodoc
class __$$ConsultaConceptosRespuestaImplCopyWithImpl<$Res>
    extends _$ConsultaConceptosRespuestaCopyWithImpl<$Res,
        _$ConsultaConceptosRespuestaImpl>
    implements _$$ConsultaConceptosRespuestaImplCopyWith<$Res> {
  __$$ConsultaConceptosRespuestaImplCopyWithImpl(
      _$ConsultaConceptosRespuestaImpl _value,
      $Res Function(_$ConsultaConceptosRespuestaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conceptoLista = null,
  }) {
    return _then(_$ConsultaConceptosRespuestaImpl(
      conceptoLista: null == conceptoLista
          ? _value._conceptoLista
          : conceptoLista // ignore: cast_nullable_to_non_nullable
              as List<ConceptoModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultaConceptosRespuestaImpl implements _ConsultaConceptosRespuesta {
  _$ConsultaConceptosRespuestaImpl(
      {final List<ConceptoModel> conceptoLista = const []})
      : _conceptoLista = conceptoLista;

  factory _$ConsultaConceptosRespuestaImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultaConceptosRespuestaImplFromJson(json);

  final List<ConceptoModel> _conceptoLista;
  @override
  @JsonKey()
  List<ConceptoModel> get conceptoLista {
    if (_conceptoLista is EqualUnmodifiableListView) return _conceptoLista;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conceptoLista);
  }

  @override
  String toString() {
    return 'ConsultaConceptosRespuesta(conceptoLista: $conceptoLista)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultaConceptosRespuestaImpl &&
            const DeepCollectionEquality()
                .equals(other._conceptoLista, _conceptoLista));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_conceptoLista));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultaConceptosRespuestaImplCopyWith<_$ConsultaConceptosRespuestaImpl>
      get copyWith => __$$ConsultaConceptosRespuestaImplCopyWithImpl<
          _$ConsultaConceptosRespuestaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultaConceptosRespuestaImplToJson(
      this,
    );
  }
}

abstract class _ConsultaConceptosRespuesta
    implements ConsultaConceptosRespuesta {
  factory _ConsultaConceptosRespuesta(
          {final List<ConceptoModel> conceptoLista}) =
      _$ConsultaConceptosRespuestaImpl;

  factory _ConsultaConceptosRespuesta.fromJson(Map<String, dynamic> json) =
      _$ConsultaConceptosRespuestaImpl.fromJson;

  @override
  List<ConceptoModel> get conceptoLista;
  @override
  @JsonKey(ignore: true)
  _$$ConsultaConceptosRespuestaImplCopyWith<_$ConsultaConceptosRespuestaImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ComunItemModel _$ComunItemModelFromJson(Map<String, dynamic> json) {
  return _ComunItemModel.fromJson(json);
}

/// @nodoc
mixin _$ComunItemModel {
  String get codigo => throw _privateConstructorUsedError;
  String get nombre => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComunItemModelCopyWith<ComunItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComunItemModelCopyWith<$Res> {
  factory $ComunItemModelCopyWith(
          ComunItemModel value, $Res Function(ComunItemModel) then) =
      _$ComunItemModelCopyWithImpl<$Res, ComunItemModel>;
  @useResult
  $Res call({String codigo, String nombre});
}

/// @nodoc
class _$ComunItemModelCopyWithImpl<$Res, $Val extends ComunItemModel>
    implements $ComunItemModelCopyWith<$Res> {
  _$ComunItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codigo = null,
    Object? nombre = null,
  }) {
    return _then(_value.copyWith(
      codigo: null == codigo
          ? _value.codigo
          : codigo // ignore: cast_nullable_to_non_nullable
              as String,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ComunItemModelImplCopyWith<$Res>
    implements $ComunItemModelCopyWith<$Res> {
  factory _$$ComunItemModelImplCopyWith(_$ComunItemModelImpl value,
          $Res Function(_$ComunItemModelImpl) then) =
      __$$ComunItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String codigo, String nombre});
}

/// @nodoc
class __$$ComunItemModelImplCopyWithImpl<$Res>
    extends _$ComunItemModelCopyWithImpl<$Res, _$ComunItemModelImpl>
    implements _$$ComunItemModelImplCopyWith<$Res> {
  __$$ComunItemModelImplCopyWithImpl(
      _$ComunItemModelImpl _value, $Res Function(_$ComunItemModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codigo = null,
    Object? nombre = null,
  }) {
    return _then(_$ComunItemModelImpl(
      codigo: null == codigo
          ? _value.codigo
          : codigo // ignore: cast_nullable_to_non_nullable
              as String,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ComunItemModelImpl implements _ComunItemModel {
  _$ComunItemModelImpl({this.codigo = '', this.nombre = ''});

  factory _$ComunItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ComunItemModelImplFromJson(json);

  @override
  @JsonKey()
  final String codigo;
  @override
  @JsonKey()
  final String nombre;

  @override
  String toString() {
    return 'ComunItemModel(codigo: $codigo, nombre: $nombre)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComunItemModelImpl &&
            (identical(other.codigo, codigo) || other.codigo == codigo) &&
            (identical(other.nombre, nombre) || other.nombre == nombre));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, codigo, nombre);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ComunItemModelImplCopyWith<_$ComunItemModelImpl> get copyWith =>
      __$$ComunItemModelImplCopyWithImpl<_$ComunItemModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ComunItemModelImplToJson(
      this,
    );
  }
}

abstract class _ComunItemModel implements ComunItemModel {
  factory _ComunItemModel({final String codigo, final String nombre}) =
      _$ComunItemModelImpl;

  factory _ComunItemModel.fromJson(Map<String, dynamic> json) =
      _$ComunItemModelImpl.fromJson;

  @override
  String get codigo;
  @override
  String get nombre;
  @override
  @JsonKey(ignore: true)
  _$$ComunItemModelImplCopyWith<_$ComunItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PagoDeunaState _$PagoDeunaStateFromJson(Map<String, dynamic> json) {
  return _PagoDeunaState.fromJson(json);
}

/// @nodoc
mixin _$PagoDeunaState {
  CuentaModel? get cuenta => throw _privateConstructorUsedError;
  BeneficiarioModel? get beneficiario => throw _privateConstructorUsedError;
  CuentaModel? get cuentaDestino => throw _privateConstructorUsedError;
  bool get esValidacion => throw _privateConstructorUsedError;
  bool get esComprobante => throw _privateConstructorUsedError;
  bool get montoSoloLectura => throw _privateConstructorUsedError;
  ConsultaCuentaVinculadaQRRespuesta? get infoCuentaVinculada =>
      throw _privateConstructorUsedError;
  ProcesaPagoQRRequerimiento? get requerimientoProceso =>
      throw _privateConstructorUsedError;
  ProcesaPagoQRRespuesta? get respuestaProceso =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PagoDeunaStateCopyWith<PagoDeunaState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PagoDeunaStateCopyWith<$Res> {
  factory $PagoDeunaStateCopyWith(
          PagoDeunaState value, $Res Function(PagoDeunaState) then) =
      _$PagoDeunaStateCopyWithImpl<$Res, PagoDeunaState>;
  @useResult
  $Res call(
      {CuentaModel? cuenta,
      BeneficiarioModel? beneficiario,
      CuentaModel? cuentaDestino,
      bool esValidacion,
      bool esComprobante,
      bool montoSoloLectura,
      ConsultaCuentaVinculadaQRRespuesta? infoCuentaVinculada,
      ProcesaPagoQRRequerimiento? requerimientoProceso,
      ProcesaPagoQRRespuesta? respuestaProceso});

  $CuentaModelCopyWith<$Res>? get cuenta;
  $BeneficiarioModelCopyWith<$Res>? get beneficiario;
  $CuentaModelCopyWith<$Res>? get cuentaDestino;
  $ConsultaCuentaVinculadaQRRespuestaCopyWith<$Res>? get infoCuentaVinculada;
  $ProcesaPagoQRRequerimientoCopyWith<$Res>? get requerimientoProceso;
  $ProcesaPagoQRRespuestaCopyWith<$Res>? get respuestaProceso;
}

/// @nodoc
class _$PagoDeunaStateCopyWithImpl<$Res, $Val extends PagoDeunaState>
    implements $PagoDeunaStateCopyWith<$Res> {
  _$PagoDeunaStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cuenta = freezed,
    Object? beneficiario = freezed,
    Object? cuentaDestino = freezed,
    Object? esValidacion = null,
    Object? esComprobante = null,
    Object? montoSoloLectura = null,
    Object? infoCuentaVinculada = freezed,
    Object? requerimientoProceso = freezed,
    Object? respuestaProceso = freezed,
  }) {
    return _then(_value.copyWith(
      cuenta: freezed == cuenta
          ? _value.cuenta
          : cuenta // ignore: cast_nullable_to_non_nullable
              as CuentaModel?,
      beneficiario: freezed == beneficiario
          ? _value.beneficiario
          : beneficiario // ignore: cast_nullable_to_non_nullable
              as BeneficiarioModel?,
      cuentaDestino: freezed == cuentaDestino
          ? _value.cuentaDestino
          : cuentaDestino // ignore: cast_nullable_to_non_nullable
              as CuentaModel?,
      esValidacion: null == esValidacion
          ? _value.esValidacion
          : esValidacion // ignore: cast_nullable_to_non_nullable
              as bool,
      esComprobante: null == esComprobante
          ? _value.esComprobante
          : esComprobante // ignore: cast_nullable_to_non_nullable
              as bool,
      montoSoloLectura: null == montoSoloLectura
          ? _value.montoSoloLectura
          : montoSoloLectura // ignore: cast_nullable_to_non_nullable
              as bool,
      infoCuentaVinculada: freezed == infoCuentaVinculada
          ? _value.infoCuentaVinculada
          : infoCuentaVinculada // ignore: cast_nullable_to_non_nullable
              as ConsultaCuentaVinculadaQRRespuesta?,
      requerimientoProceso: freezed == requerimientoProceso
          ? _value.requerimientoProceso
          : requerimientoProceso // ignore: cast_nullable_to_non_nullable
              as ProcesaPagoQRRequerimiento?,
      respuestaProceso: freezed == respuestaProceso
          ? _value.respuestaProceso
          : respuestaProceso // ignore: cast_nullable_to_non_nullable
              as ProcesaPagoQRRespuesta?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CuentaModelCopyWith<$Res>? get cuenta {
    if (_value.cuenta == null) {
      return null;
    }

    return $CuentaModelCopyWith<$Res>(_value.cuenta!, (value) {
      return _then(_value.copyWith(cuenta: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BeneficiarioModelCopyWith<$Res>? get beneficiario {
    if (_value.beneficiario == null) {
      return null;
    }

    return $BeneficiarioModelCopyWith<$Res>(_value.beneficiario!, (value) {
      return _then(_value.copyWith(beneficiario: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CuentaModelCopyWith<$Res>? get cuentaDestino {
    if (_value.cuentaDestino == null) {
      return null;
    }

    return $CuentaModelCopyWith<$Res>(_value.cuentaDestino!, (value) {
      return _then(_value.copyWith(cuentaDestino: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ConsultaCuentaVinculadaQRRespuestaCopyWith<$Res>? get infoCuentaVinculada {
    if (_value.infoCuentaVinculada == null) {
      return null;
    }

    return $ConsultaCuentaVinculadaQRRespuestaCopyWith<$Res>(
        _value.infoCuentaVinculada!, (value) {
      return _then(_value.copyWith(infoCuentaVinculada: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProcesaPagoQRRequerimientoCopyWith<$Res>? get requerimientoProceso {
    if (_value.requerimientoProceso == null) {
      return null;
    }

    return $ProcesaPagoQRRequerimientoCopyWith<$Res>(
        _value.requerimientoProceso!, (value) {
      return _then(_value.copyWith(requerimientoProceso: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProcesaPagoQRRespuestaCopyWith<$Res>? get respuestaProceso {
    if (_value.respuestaProceso == null) {
      return null;
    }

    return $ProcesaPagoQRRespuestaCopyWith<$Res>(_value.respuestaProceso!,
        (value) {
      return _then(_value.copyWith(respuestaProceso: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PagoDeunaStateImplCopyWith<$Res>
    implements $PagoDeunaStateCopyWith<$Res> {
  factory _$$PagoDeunaStateImplCopyWith(_$PagoDeunaStateImpl value,
          $Res Function(_$PagoDeunaStateImpl) then) =
      __$$PagoDeunaStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CuentaModel? cuenta,
      BeneficiarioModel? beneficiario,
      CuentaModel? cuentaDestino,
      bool esValidacion,
      bool esComprobante,
      bool montoSoloLectura,
      ConsultaCuentaVinculadaQRRespuesta? infoCuentaVinculada,
      ProcesaPagoQRRequerimiento? requerimientoProceso,
      ProcesaPagoQRRespuesta? respuestaProceso});

  @override
  $CuentaModelCopyWith<$Res>? get cuenta;
  @override
  $BeneficiarioModelCopyWith<$Res>? get beneficiario;
  @override
  $CuentaModelCopyWith<$Res>? get cuentaDestino;
  @override
  $ConsultaCuentaVinculadaQRRespuestaCopyWith<$Res>? get infoCuentaVinculada;
  @override
  $ProcesaPagoQRRequerimientoCopyWith<$Res>? get requerimientoProceso;
  @override
  $ProcesaPagoQRRespuestaCopyWith<$Res>? get respuestaProceso;
}

/// @nodoc
class __$$PagoDeunaStateImplCopyWithImpl<$Res>
    extends _$PagoDeunaStateCopyWithImpl<$Res, _$PagoDeunaStateImpl>
    implements _$$PagoDeunaStateImplCopyWith<$Res> {
  __$$PagoDeunaStateImplCopyWithImpl(
      _$PagoDeunaStateImpl _value, $Res Function(_$PagoDeunaStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cuenta = freezed,
    Object? beneficiario = freezed,
    Object? cuentaDestino = freezed,
    Object? esValidacion = null,
    Object? esComprobante = null,
    Object? montoSoloLectura = null,
    Object? infoCuentaVinculada = freezed,
    Object? requerimientoProceso = freezed,
    Object? respuestaProceso = freezed,
  }) {
    return _then(_$PagoDeunaStateImpl(
      cuenta: freezed == cuenta
          ? _value.cuenta
          : cuenta // ignore: cast_nullable_to_non_nullable
              as CuentaModel?,
      beneficiario: freezed == beneficiario
          ? _value.beneficiario
          : beneficiario // ignore: cast_nullable_to_non_nullable
              as BeneficiarioModel?,
      cuentaDestino: freezed == cuentaDestino
          ? _value.cuentaDestino
          : cuentaDestino // ignore: cast_nullable_to_non_nullable
              as CuentaModel?,
      esValidacion: null == esValidacion
          ? _value.esValidacion
          : esValidacion // ignore: cast_nullable_to_non_nullable
              as bool,
      esComprobante: null == esComprobante
          ? _value.esComprobante
          : esComprobante // ignore: cast_nullable_to_non_nullable
              as bool,
      montoSoloLectura: null == montoSoloLectura
          ? _value.montoSoloLectura
          : montoSoloLectura // ignore: cast_nullable_to_non_nullable
              as bool,
      infoCuentaVinculada: freezed == infoCuentaVinculada
          ? _value.infoCuentaVinculada
          : infoCuentaVinculada // ignore: cast_nullable_to_non_nullable
              as ConsultaCuentaVinculadaQRRespuesta?,
      requerimientoProceso: freezed == requerimientoProceso
          ? _value.requerimientoProceso
          : requerimientoProceso // ignore: cast_nullable_to_non_nullable
              as ProcesaPagoQRRequerimiento?,
      respuestaProceso: freezed == respuestaProceso
          ? _value.respuestaProceso
          : respuestaProceso // ignore: cast_nullable_to_non_nullable
              as ProcesaPagoQRRespuesta?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PagoDeunaStateImpl implements _PagoDeunaState {
  _$PagoDeunaStateImpl(
      {this.cuenta,
      this.beneficiario,
      this.cuentaDestino,
      this.esValidacion = false,
      this.esComprobante = false,
      this.montoSoloLectura = false,
      this.infoCuentaVinculada,
      this.requerimientoProceso,
      this.respuestaProceso});

  factory _$PagoDeunaStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$PagoDeunaStateImplFromJson(json);

  @override
  final CuentaModel? cuenta;
  @override
  final BeneficiarioModel? beneficiario;
  @override
  final CuentaModel? cuentaDestino;
  @override
  @JsonKey()
  final bool esValidacion;
  @override
  @JsonKey()
  final bool esComprobante;
  @override
  @JsonKey()
  final bool montoSoloLectura;
  @override
  final ConsultaCuentaVinculadaQRRespuesta? infoCuentaVinculada;
  @override
  final ProcesaPagoQRRequerimiento? requerimientoProceso;
  @override
  final ProcesaPagoQRRespuesta? respuestaProceso;

  @override
  String toString() {
    return 'PagoDeunaState(cuenta: $cuenta, beneficiario: $beneficiario, cuentaDestino: $cuentaDestino, esValidacion: $esValidacion, esComprobante: $esComprobante, montoSoloLectura: $montoSoloLectura, infoCuentaVinculada: $infoCuentaVinculada, requerimientoProceso: $requerimientoProceso, respuestaProceso: $respuestaProceso)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PagoDeunaStateImpl &&
            (identical(other.cuenta, cuenta) || other.cuenta == cuenta) &&
            (identical(other.beneficiario, beneficiario) ||
                other.beneficiario == beneficiario) &&
            (identical(other.cuentaDestino, cuentaDestino) ||
                other.cuentaDestino == cuentaDestino) &&
            (identical(other.esValidacion, esValidacion) ||
                other.esValidacion == esValidacion) &&
            (identical(other.esComprobante, esComprobante) ||
                other.esComprobante == esComprobante) &&
            (identical(other.montoSoloLectura, montoSoloLectura) ||
                other.montoSoloLectura == montoSoloLectura) &&
            (identical(other.infoCuentaVinculada, infoCuentaVinculada) ||
                other.infoCuentaVinculada == infoCuentaVinculada) &&
            (identical(other.requerimientoProceso, requerimientoProceso) ||
                other.requerimientoProceso == requerimientoProceso) &&
            (identical(other.respuestaProceso, respuestaProceso) ||
                other.respuestaProceso == respuestaProceso));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      cuenta,
      beneficiario,
      cuentaDestino,
      esValidacion,
      esComprobante,
      montoSoloLectura,
      infoCuentaVinculada,
      requerimientoProceso,
      respuestaProceso);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PagoDeunaStateImplCopyWith<_$PagoDeunaStateImpl> get copyWith =>
      __$$PagoDeunaStateImplCopyWithImpl<_$PagoDeunaStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PagoDeunaStateImplToJson(
      this,
    );
  }
}

abstract class _PagoDeunaState implements PagoDeunaState {
  factory _PagoDeunaState(
      {final CuentaModel? cuenta,
      final BeneficiarioModel? beneficiario,
      final CuentaModel? cuentaDestino,
      final bool esValidacion,
      final bool esComprobante,
      final bool montoSoloLectura,
      final ConsultaCuentaVinculadaQRRespuesta? infoCuentaVinculada,
      final ProcesaPagoQRRequerimiento? requerimientoProceso,
      final ProcesaPagoQRRespuesta? respuestaProceso}) = _$PagoDeunaStateImpl;

  factory _PagoDeunaState.fromJson(Map<String, dynamic> json) =
      _$PagoDeunaStateImpl.fromJson;

  @override
  CuentaModel? get cuenta;
  @override
  BeneficiarioModel? get beneficiario;
  @override
  CuentaModel? get cuentaDestino;
  @override
  bool get esValidacion;
  @override
  bool get esComprobante;
  @override
  bool get montoSoloLectura;
  @override
  ConsultaCuentaVinculadaQRRespuesta? get infoCuentaVinculada;
  @override
  ProcesaPagoQRRequerimiento? get requerimientoProceso;
  @override
  ProcesaPagoQRRespuesta? get respuestaProceso;
  @override
  @JsonKey(ignore: true)
  _$$PagoDeunaStateImplCopyWith<_$PagoDeunaStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ConsultaCuentaVinculadaQRRequerimiento
    _$ConsultaCuentaVinculadaQRRequerimientoFromJson(
        Map<String, dynamic> json) {
  return _ConsultaCuentaVinculadaQRRequerimiento.fromJson(json);
}

/// @nodoc
mixin _$ConsultaCuentaVinculadaQRRequerimiento {
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConsultaCuentaVinculadaQRRequerimientoCopyWith<
          ConsultaCuentaVinculadaQRRequerimiento>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultaCuentaVinculadaQRRequerimientoCopyWith<$Res> {
  factory $ConsultaCuentaVinculadaQRRequerimientoCopyWith(
          ConsultaCuentaVinculadaQRRequerimiento value,
          $Res Function(ConsultaCuentaVinculadaQRRequerimiento) then) =
      _$ConsultaCuentaVinculadaQRRequerimientoCopyWithImpl<$Res,
          ConsultaCuentaVinculadaQRRequerimiento>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$ConsultaCuentaVinculadaQRRequerimientoCopyWithImpl<$Res,
        $Val extends ConsultaCuentaVinculadaQRRequerimiento>
    implements $ConsultaCuentaVinculadaQRRequerimientoCopyWith<$Res> {
  _$ConsultaCuentaVinculadaQRRequerimientoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConsultaCuentaVinculadaQRRequerimientoImplCopyWith<$Res>
    implements $ConsultaCuentaVinculadaQRRequerimientoCopyWith<$Res> {
  factory _$$ConsultaCuentaVinculadaQRRequerimientoImplCopyWith(
          _$ConsultaCuentaVinculadaQRRequerimientoImpl value,
          $Res Function(_$ConsultaCuentaVinculadaQRRequerimientoImpl) then) =
      __$$ConsultaCuentaVinculadaQRRequerimientoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$ConsultaCuentaVinculadaQRRequerimientoImplCopyWithImpl<$Res>
    extends _$ConsultaCuentaVinculadaQRRequerimientoCopyWithImpl<$Res,
        _$ConsultaCuentaVinculadaQRRequerimientoImpl>
    implements _$$ConsultaCuentaVinculadaQRRequerimientoImplCopyWith<$Res> {
  __$$ConsultaCuentaVinculadaQRRequerimientoImplCopyWithImpl(
      _$ConsultaCuentaVinculadaQRRequerimientoImpl _value,
      $Res Function(_$ConsultaCuentaVinculadaQRRequerimientoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ConsultaCuentaVinculadaQRRequerimientoImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultaCuentaVinculadaQRRequerimientoImpl
    implements _ConsultaCuentaVinculadaQRRequerimiento {
  _$ConsultaCuentaVinculadaQRRequerimientoImpl({required this.value});

  factory _$ConsultaCuentaVinculadaQRRequerimientoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultaCuentaVinculadaQRRequerimientoImplFromJson(json);

  @override
  final String value;

  @override
  String toString() {
    return 'ConsultaCuentaVinculadaQRRequerimiento(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultaCuentaVinculadaQRRequerimientoImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultaCuentaVinculadaQRRequerimientoImplCopyWith<
          _$ConsultaCuentaVinculadaQRRequerimientoImpl>
      get copyWith =>
          __$$ConsultaCuentaVinculadaQRRequerimientoImplCopyWithImpl<
              _$ConsultaCuentaVinculadaQRRequerimientoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultaCuentaVinculadaQRRequerimientoImplToJson(
      this,
    );
  }
}

abstract class _ConsultaCuentaVinculadaQRRequerimiento
    implements ConsultaCuentaVinculadaQRRequerimiento {
  factory _ConsultaCuentaVinculadaQRRequerimiento(
          {required final String value}) =
      _$ConsultaCuentaVinculadaQRRequerimientoImpl;

  factory _ConsultaCuentaVinculadaQRRequerimiento.fromJson(
          Map<String, dynamic> json) =
      _$ConsultaCuentaVinculadaQRRequerimientoImpl.fromJson;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$ConsultaCuentaVinculadaQRRequerimientoImplCopyWith<
          _$ConsultaCuentaVinculadaQRRequerimientoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultaCuentaVinculadaQRRespuesta _$ConsultaCuentaVinculadaQRRespuestaFromJson(
    Map<String, dynamic> json) {
  return _ConsultaCuentaVinculadaQRRespuesta.fromJson(json);
}

/// @nodoc
mixin _$ConsultaCuentaVinculadaQRRespuesta {
  String get transactionId => throw _privateConstructorUsedError;
  String get trackingId => throw _privateConstructorUsedError;
  AccountModel get account => throw _privateConstructorUsedError;
  double get montoDisponible => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConsultaCuentaVinculadaQRRespuestaCopyWith<
          ConsultaCuentaVinculadaQRRespuesta>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultaCuentaVinculadaQRRespuestaCopyWith<$Res> {
  factory $ConsultaCuentaVinculadaQRRespuestaCopyWith(
          ConsultaCuentaVinculadaQRRespuesta value,
          $Res Function(ConsultaCuentaVinculadaQRRespuesta) then) =
      _$ConsultaCuentaVinculadaQRRespuestaCopyWithImpl<$Res,
          ConsultaCuentaVinculadaQRRespuesta>;
  @useResult
  $Res call(
      {String transactionId,
      String trackingId,
      AccountModel account,
      double montoDisponible});

  $AccountModelCopyWith<$Res> get account;
}

/// @nodoc
class _$ConsultaCuentaVinculadaQRRespuestaCopyWithImpl<$Res,
        $Val extends ConsultaCuentaVinculadaQRRespuesta>
    implements $ConsultaCuentaVinculadaQRRespuestaCopyWith<$Res> {
  _$ConsultaCuentaVinculadaQRRespuestaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = null,
    Object? trackingId = null,
    Object? account = null,
    Object? montoDisponible = null,
  }) {
    return _then(_value.copyWith(
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      trackingId: null == trackingId
          ? _value.trackingId
          : trackingId // ignore: cast_nullable_to_non_nullable
              as String,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AccountModel,
      montoDisponible: null == montoDisponible
          ? _value.montoDisponible
          : montoDisponible // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountModelCopyWith<$Res> get account {
    return $AccountModelCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConsultaCuentaVinculadaQRRespuestaImplCopyWith<$Res>
    implements $ConsultaCuentaVinculadaQRRespuestaCopyWith<$Res> {
  factory _$$ConsultaCuentaVinculadaQRRespuestaImplCopyWith(
          _$ConsultaCuentaVinculadaQRRespuestaImpl value,
          $Res Function(_$ConsultaCuentaVinculadaQRRespuestaImpl) then) =
      __$$ConsultaCuentaVinculadaQRRespuestaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String transactionId,
      String trackingId,
      AccountModel account,
      double montoDisponible});

  @override
  $AccountModelCopyWith<$Res> get account;
}

/// @nodoc
class __$$ConsultaCuentaVinculadaQRRespuestaImplCopyWithImpl<$Res>
    extends _$ConsultaCuentaVinculadaQRRespuestaCopyWithImpl<$Res,
        _$ConsultaCuentaVinculadaQRRespuestaImpl>
    implements _$$ConsultaCuentaVinculadaQRRespuestaImplCopyWith<$Res> {
  __$$ConsultaCuentaVinculadaQRRespuestaImplCopyWithImpl(
      _$ConsultaCuentaVinculadaQRRespuestaImpl _value,
      $Res Function(_$ConsultaCuentaVinculadaQRRespuestaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = null,
    Object? trackingId = null,
    Object? account = null,
    Object? montoDisponible = null,
  }) {
    return _then(_$ConsultaCuentaVinculadaQRRespuestaImpl(
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      trackingId: null == trackingId
          ? _value.trackingId
          : trackingId // ignore: cast_nullable_to_non_nullable
              as String,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AccountModel,
      montoDisponible: null == montoDisponible
          ? _value.montoDisponible
          : montoDisponible // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultaCuentaVinculadaQRRespuestaImpl
    implements _ConsultaCuentaVinculadaQRRespuesta {
  const _$ConsultaCuentaVinculadaQRRespuestaImpl(
      {required this.transactionId,
      required this.trackingId,
      required this.account,
      this.montoDisponible = 0.00});

  factory _$ConsultaCuentaVinculadaQRRespuestaImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultaCuentaVinculadaQRRespuestaImplFromJson(json);

  @override
  final String transactionId;
  @override
  final String trackingId;
  @override
  final AccountModel account;
  @override
  @JsonKey()
  final double montoDisponible;

  @override
  String toString() {
    return 'ConsultaCuentaVinculadaQRRespuesta(transactionId: $transactionId, trackingId: $trackingId, account: $account, montoDisponible: $montoDisponible)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultaCuentaVinculadaQRRespuestaImpl &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.trackingId, trackingId) ||
                other.trackingId == trackingId) &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.montoDisponible, montoDisponible) ||
                other.montoDisponible == montoDisponible));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, transactionId, trackingId, account, montoDisponible);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultaCuentaVinculadaQRRespuestaImplCopyWith<
          _$ConsultaCuentaVinculadaQRRespuestaImpl>
      get copyWith => __$$ConsultaCuentaVinculadaQRRespuestaImplCopyWithImpl<
          _$ConsultaCuentaVinculadaQRRespuestaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultaCuentaVinculadaQRRespuestaImplToJson(
      this,
    );
  }
}

abstract class _ConsultaCuentaVinculadaQRRespuesta
    implements ConsultaCuentaVinculadaQRRespuesta {
  const factory _ConsultaCuentaVinculadaQRRespuesta(
      {required final String transactionId,
      required final String trackingId,
      required final AccountModel account,
      final double montoDisponible}) = _$ConsultaCuentaVinculadaQRRespuestaImpl;

  factory _ConsultaCuentaVinculadaQRRespuesta.fromJson(
          Map<String, dynamic> json) =
      _$ConsultaCuentaVinculadaQRRespuestaImpl.fromJson;

  @override
  String get transactionId;
  @override
  String get trackingId;
  @override
  AccountModel get account;
  @override
  double get montoDisponible;
  @override
  @JsonKey(ignore: true)
  _$$ConsultaCuentaVinculadaQRRespuestaImplCopyWith<
          _$ConsultaCuentaVinculadaQRRespuestaImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AccountModel _$AccountModelFromJson(Map<String, dynamic> json) {
  return _AccountModel.fromJson(json);
}

/// @nodoc
mixin _$AccountModel {
  String get name => throw _privateConstructorUsedError;
  String get number => throw _privateConstructorUsedError;
  String get maskedNumber => throw _privateConstructorUsedError;
  String get documentNumber => throw _privateConstructorUsedError;
  String get documentType => throw _privateConstructorUsedError;
  String get accountType => throw _privateConstructorUsedError;
  String get clientType => throw _privateConstructorUsedError;
  String get qrType => throw _privateConstructorUsedError;
  String get accountVersion => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  String get currencyCode => throw _privateConstructorUsedError;
  MerchantModel get merchant => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountModelCopyWith<AccountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountModelCopyWith<$Res> {
  factory $AccountModelCopyWith(
          AccountModel value, $Res Function(AccountModel) then) =
      _$AccountModelCopyWithImpl<$Res, AccountModel>;
  @useResult
  $Res call(
      {String name,
      String number,
      String maskedNumber,
      String documentNumber,
      String documentType,
      String accountType,
      String clientType,
      String qrType,
      String accountVersion,
      String amount,
      String currencyCode,
      MerchantModel merchant});

  $MerchantModelCopyWith<$Res> get merchant;
}

/// @nodoc
class _$AccountModelCopyWithImpl<$Res, $Val extends AccountModel>
    implements $AccountModelCopyWith<$Res> {
  _$AccountModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? number = null,
    Object? maskedNumber = null,
    Object? documentNumber = null,
    Object? documentType = null,
    Object? accountType = null,
    Object? clientType = null,
    Object? qrType = null,
    Object? accountVersion = null,
    Object? amount = null,
    Object? currencyCode = null,
    Object? merchant = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      maskedNumber: null == maskedNumber
          ? _value.maskedNumber
          : maskedNumber // ignore: cast_nullable_to_non_nullable
              as String,
      documentNumber: null == documentNumber
          ? _value.documentNumber
          : documentNumber // ignore: cast_nullable_to_non_nullable
              as String,
      documentType: null == documentType
          ? _value.documentType
          : documentType // ignore: cast_nullable_to_non_nullable
              as String,
      accountType: null == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as String,
      clientType: null == clientType
          ? _value.clientType
          : clientType // ignore: cast_nullable_to_non_nullable
              as String,
      qrType: null == qrType
          ? _value.qrType
          : qrType // ignore: cast_nullable_to_non_nullable
              as String,
      accountVersion: null == accountVersion
          ? _value.accountVersion
          : accountVersion // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      merchant: null == merchant
          ? _value.merchant
          : merchant // ignore: cast_nullable_to_non_nullable
              as MerchantModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MerchantModelCopyWith<$Res> get merchant {
    return $MerchantModelCopyWith<$Res>(_value.merchant, (value) {
      return _then(_value.copyWith(merchant: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AccountModelImplCopyWith<$Res>
    implements $AccountModelCopyWith<$Res> {
  factory _$$AccountModelImplCopyWith(
          _$AccountModelImpl value, $Res Function(_$AccountModelImpl) then) =
      __$$AccountModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String number,
      String maskedNumber,
      String documentNumber,
      String documentType,
      String accountType,
      String clientType,
      String qrType,
      String accountVersion,
      String amount,
      String currencyCode,
      MerchantModel merchant});

  @override
  $MerchantModelCopyWith<$Res> get merchant;
}

/// @nodoc
class __$$AccountModelImplCopyWithImpl<$Res>
    extends _$AccountModelCopyWithImpl<$Res, _$AccountModelImpl>
    implements _$$AccountModelImplCopyWith<$Res> {
  __$$AccountModelImplCopyWithImpl(
      _$AccountModelImpl _value, $Res Function(_$AccountModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? number = null,
    Object? maskedNumber = null,
    Object? documentNumber = null,
    Object? documentType = null,
    Object? accountType = null,
    Object? clientType = null,
    Object? qrType = null,
    Object? accountVersion = null,
    Object? amount = null,
    Object? currencyCode = null,
    Object? merchant = null,
  }) {
    return _then(_$AccountModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      maskedNumber: null == maskedNumber
          ? _value.maskedNumber
          : maskedNumber // ignore: cast_nullable_to_non_nullable
              as String,
      documentNumber: null == documentNumber
          ? _value.documentNumber
          : documentNumber // ignore: cast_nullable_to_non_nullable
              as String,
      documentType: null == documentType
          ? _value.documentType
          : documentType // ignore: cast_nullable_to_non_nullable
              as String,
      accountType: null == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as String,
      clientType: null == clientType
          ? _value.clientType
          : clientType // ignore: cast_nullable_to_non_nullable
              as String,
      qrType: null == qrType
          ? _value.qrType
          : qrType // ignore: cast_nullable_to_non_nullable
              as String,
      accountVersion: null == accountVersion
          ? _value.accountVersion
          : accountVersion // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      merchant: null == merchant
          ? _value.merchant
          : merchant // ignore: cast_nullable_to_non_nullable
              as MerchantModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountModelImpl extends _AccountModel {
  const _$AccountModelImpl(
      {this.name = '',
      this.number = '',
      this.maskedNumber = '',
      this.documentNumber = '',
      this.documentType = '',
      this.accountType = '',
      this.clientType = '',
      this.qrType = '',
      this.accountVersion = '',
      this.amount = '',
      this.currencyCode = '',
      required this.merchant})
      : super._();

  factory _$AccountModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountModelImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String number;
  @override
  @JsonKey()
  final String maskedNumber;
  @override
  @JsonKey()
  final String documentNumber;
  @override
  @JsonKey()
  final String documentType;
  @override
  @JsonKey()
  final String accountType;
  @override
  @JsonKey()
  final String clientType;
  @override
  @JsonKey()
  final String qrType;
  @override
  @JsonKey()
  final String accountVersion;
  @override
  @JsonKey()
  final String amount;
  @override
  @JsonKey()
  final String currencyCode;
  @override
  final MerchantModel merchant;

  @override
  String toString() {
    return 'AccountModel(name: $name, number: $number, maskedNumber: $maskedNumber, documentNumber: $documentNumber, documentType: $documentType, accountType: $accountType, clientType: $clientType, qrType: $qrType, accountVersion: $accountVersion, amount: $amount, currencyCode: $currencyCode, merchant: $merchant)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.maskedNumber, maskedNumber) ||
                other.maskedNumber == maskedNumber) &&
            (identical(other.documentNumber, documentNumber) ||
                other.documentNumber == documentNumber) &&
            (identical(other.documentType, documentType) ||
                other.documentType == documentType) &&
            (identical(other.accountType, accountType) ||
                other.accountType == accountType) &&
            (identical(other.clientType, clientType) ||
                other.clientType == clientType) &&
            (identical(other.qrType, qrType) || other.qrType == qrType) &&
            (identical(other.accountVersion, accountVersion) ||
                other.accountVersion == accountVersion) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.merchant, merchant) ||
                other.merchant == merchant));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      number,
      maskedNumber,
      documentNumber,
      documentType,
      accountType,
      clientType,
      qrType,
      accountVersion,
      amount,
      currencyCode,
      merchant);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountModelImplCopyWith<_$AccountModelImpl> get copyWith =>
      __$$AccountModelImplCopyWithImpl<_$AccountModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountModelImplToJson(
      this,
    );
  }
}

abstract class _AccountModel extends AccountModel {
  const factory _AccountModel(
      {final String name,
      final String number,
      final String maskedNumber,
      final String documentNumber,
      final String documentType,
      final String accountType,
      final String clientType,
      final String qrType,
      final String accountVersion,
      final String amount,
      final String currencyCode,
      required final MerchantModel merchant}) = _$AccountModelImpl;
  const _AccountModel._() : super._();

  factory _AccountModel.fromJson(Map<String, dynamic> json) =
      _$AccountModelImpl.fromJson;

  @override
  String get name;
  @override
  String get number;
  @override
  String get maskedNumber;
  @override
  String get documentNumber;
  @override
  String get documentType;
  @override
  String get accountType;
  @override
  String get clientType;
  @override
  String get qrType;
  @override
  String get accountVersion;
  @override
  String get amount;
  @override
  String get currencyCode;
  @override
  MerchantModel get merchant;
  @override
  @JsonKey(ignore: true)
  _$$AccountModelImplCopyWith<_$AccountModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MerchantModel _$MerchantModelFromJson(Map<String, dynamic> json) {
  return _MerchantModel.fromJson(json);
}

/// @nodoc
mixin _$MerchantModel {
  String get pos => throw _privateConstructorUsedError;
  String get branch => throw _privateConstructorUsedError;
  String get contact => throw _privateConstructorUsedError;
  String get branchName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MerchantModelCopyWith<MerchantModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchantModelCopyWith<$Res> {
  factory $MerchantModelCopyWith(
          MerchantModel value, $Res Function(MerchantModel) then) =
      _$MerchantModelCopyWithImpl<$Res, MerchantModel>;
  @useResult
  $Res call({String pos, String branch, String contact, String branchName});
}

/// @nodoc
class _$MerchantModelCopyWithImpl<$Res, $Val extends MerchantModel>
    implements $MerchantModelCopyWith<$Res> {
  _$MerchantModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pos = null,
    Object? branch = null,
    Object? contact = null,
    Object? branchName = null,
  }) {
    return _then(_value.copyWith(
      pos: null == pos
          ? _value.pos
          : pos // ignore: cast_nullable_to_non_nullable
              as String,
      branch: null == branch
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as String,
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String,
      branchName: null == branchName
          ? _value.branchName
          : branchName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MerchantModelImplCopyWith<$Res>
    implements $MerchantModelCopyWith<$Res> {
  factory _$$MerchantModelImplCopyWith(
          _$MerchantModelImpl value, $Res Function(_$MerchantModelImpl) then) =
      __$$MerchantModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pos, String branch, String contact, String branchName});
}

/// @nodoc
class __$$MerchantModelImplCopyWithImpl<$Res>
    extends _$MerchantModelCopyWithImpl<$Res, _$MerchantModelImpl>
    implements _$$MerchantModelImplCopyWith<$Res> {
  __$$MerchantModelImplCopyWithImpl(
      _$MerchantModelImpl _value, $Res Function(_$MerchantModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pos = null,
    Object? branch = null,
    Object? contact = null,
    Object? branchName = null,
  }) {
    return _then(_$MerchantModelImpl(
      pos: null == pos
          ? _value.pos
          : pos // ignore: cast_nullable_to_non_nullable
              as String,
      branch: null == branch
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as String,
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String,
      branchName: null == branchName
          ? _value.branchName
          : branchName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MerchantModelImpl implements _MerchantModel {
  const _$MerchantModelImpl(
      {this.pos = '',
      this.branch = '',
      this.contact = '',
      this.branchName = ''});

  factory _$MerchantModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MerchantModelImplFromJson(json);

  @override
  @JsonKey()
  final String pos;
  @override
  @JsonKey()
  final String branch;
  @override
  @JsonKey()
  final String contact;
  @override
  @JsonKey()
  final String branchName;

  @override
  String toString() {
    return 'MerchantModel(pos: $pos, branch: $branch, contact: $contact, branchName: $branchName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MerchantModelImpl &&
            (identical(other.pos, pos) || other.pos == pos) &&
            (identical(other.branch, branch) || other.branch == branch) &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.branchName, branchName) ||
                other.branchName == branchName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, pos, branch, contact, branchName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MerchantModelImplCopyWith<_$MerchantModelImpl> get copyWith =>
      __$$MerchantModelImplCopyWithImpl<_$MerchantModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MerchantModelImplToJson(
      this,
    );
  }
}

abstract class _MerchantModel implements MerchantModel {
  const factory _MerchantModel(
      {final String pos,
      final String branch,
      final String contact,
      final String branchName}) = _$MerchantModelImpl;

  factory _MerchantModel.fromJson(Map<String, dynamic> json) =
      _$MerchantModelImpl.fromJson;

  @override
  String get pos;
  @override
  String get branch;
  @override
  String get contact;
  @override
  String get branchName;
  @override
  @JsonKey(ignore: true)
  _$$MerchantModelImplCopyWith<_$MerchantModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProcesaPagoQRRequerimiento _$ProcesaPagoQRRequerimientoFromJson(
    Map<String, dynamic> json) {
  return _ProcesaPagoQRRequerimiento.fromJson(json);
}

/// @nodoc
mixin _$ProcesaPagoQRRequerimiento {
  String get transactionId => throw _privateConstructorUsedError;
  double get monto => throw _privateConstructorUsedError;
  String get moneda => throw _privateConstructorUsedError;
  String get descripcion => throw _privateConstructorUsedError;
  String get numeroCuenta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProcesaPagoQRRequerimientoCopyWith<ProcesaPagoQRRequerimiento>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProcesaPagoQRRequerimientoCopyWith<$Res> {
  factory $ProcesaPagoQRRequerimientoCopyWith(ProcesaPagoQRRequerimiento value,
          $Res Function(ProcesaPagoQRRequerimiento) then) =
      _$ProcesaPagoQRRequerimientoCopyWithImpl<$Res,
          ProcesaPagoQRRequerimiento>;
  @useResult
  $Res call(
      {String transactionId,
      double monto,
      String moneda,
      String descripcion,
      String numeroCuenta});
}

/// @nodoc
class _$ProcesaPagoQRRequerimientoCopyWithImpl<$Res,
        $Val extends ProcesaPagoQRRequerimiento>
    implements $ProcesaPagoQRRequerimientoCopyWith<$Res> {
  _$ProcesaPagoQRRequerimientoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = null,
    Object? monto = null,
    Object? moneda = null,
    Object? descripcion = null,
    Object? numeroCuenta = null,
  }) {
    return _then(_value.copyWith(
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      monto: null == monto
          ? _value.monto
          : monto // ignore: cast_nullable_to_non_nullable
              as double,
      moneda: null == moneda
          ? _value.moneda
          : moneda // ignore: cast_nullable_to_non_nullable
              as String,
      descripcion: null == descripcion
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
      numeroCuenta: null == numeroCuenta
          ? _value.numeroCuenta
          : numeroCuenta // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProcesaPagoQRRequerimientoImplCopyWith<$Res>
    implements $ProcesaPagoQRRequerimientoCopyWith<$Res> {
  factory _$$ProcesaPagoQRRequerimientoImplCopyWith(
          _$ProcesaPagoQRRequerimientoImpl value,
          $Res Function(_$ProcesaPagoQRRequerimientoImpl) then) =
      __$$ProcesaPagoQRRequerimientoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String transactionId,
      double monto,
      String moneda,
      String descripcion,
      String numeroCuenta});
}

/// @nodoc
class __$$ProcesaPagoQRRequerimientoImplCopyWithImpl<$Res>
    extends _$ProcesaPagoQRRequerimientoCopyWithImpl<$Res,
        _$ProcesaPagoQRRequerimientoImpl>
    implements _$$ProcesaPagoQRRequerimientoImplCopyWith<$Res> {
  __$$ProcesaPagoQRRequerimientoImplCopyWithImpl(
      _$ProcesaPagoQRRequerimientoImpl _value,
      $Res Function(_$ProcesaPagoQRRequerimientoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = null,
    Object? monto = null,
    Object? moneda = null,
    Object? descripcion = null,
    Object? numeroCuenta = null,
  }) {
    return _then(_$ProcesaPagoQRRequerimientoImpl(
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      monto: null == monto
          ? _value.monto
          : monto // ignore: cast_nullable_to_non_nullable
              as double,
      moneda: null == moneda
          ? _value.moneda
          : moneda // ignore: cast_nullable_to_non_nullable
              as String,
      descripcion: null == descripcion
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
      numeroCuenta: null == numeroCuenta
          ? _value.numeroCuenta
          : numeroCuenta // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProcesaPagoQRRequerimientoImpl implements _ProcesaPagoQRRequerimiento {
  const _$ProcesaPagoQRRequerimientoImpl(
      {required this.transactionId,
      required this.monto,
      required this.moneda,
      this.descripcion = '',
      required this.numeroCuenta});

  factory _$ProcesaPagoQRRequerimientoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ProcesaPagoQRRequerimientoImplFromJson(json);

  @override
  final String transactionId;
  @override
  final double monto;
  @override
  final String moneda;
  @override
  @JsonKey()
  final String descripcion;
  @override
  final String numeroCuenta;

  @override
  String toString() {
    return 'ProcesaPagoQRRequerimiento(transactionId: $transactionId, monto: $monto, moneda: $moneda, descripcion: $descripcion, numeroCuenta: $numeroCuenta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProcesaPagoQRRequerimientoImpl &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.monto, monto) || other.monto == monto) &&
            (identical(other.moneda, moneda) || other.moneda == moneda) &&
            (identical(other.descripcion, descripcion) ||
                other.descripcion == descripcion) &&
            (identical(other.numeroCuenta, numeroCuenta) ||
                other.numeroCuenta == numeroCuenta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, transactionId, monto, moneda, descripcion, numeroCuenta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProcesaPagoQRRequerimientoImplCopyWith<_$ProcesaPagoQRRequerimientoImpl>
      get copyWith => __$$ProcesaPagoQRRequerimientoImplCopyWithImpl<
          _$ProcesaPagoQRRequerimientoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProcesaPagoQRRequerimientoImplToJson(
      this,
    );
  }
}

abstract class _ProcesaPagoQRRequerimiento
    implements ProcesaPagoQRRequerimiento {
  const factory _ProcesaPagoQRRequerimiento(
      {required final String transactionId,
      required final double monto,
      required final String moneda,
      final String descripcion,
      required final String numeroCuenta}) = _$ProcesaPagoQRRequerimientoImpl;

  factory _ProcesaPagoQRRequerimiento.fromJson(Map<String, dynamic> json) =
      _$ProcesaPagoQRRequerimientoImpl.fromJson;

  @override
  String get transactionId;
  @override
  double get monto;
  @override
  String get moneda;
  @override
  String get descripcion;
  @override
  String get numeroCuenta;
  @override
  @JsonKey(ignore: true)
  _$$ProcesaPagoQRRequerimientoImplCopyWith<_$ProcesaPagoQRRequerimientoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProcesaPagoQRRespuesta _$ProcesaPagoQRRespuestaFromJson(
    Map<String, dynamic> json) {
  return _ProcesaPagoQRRespuesta.fromJson(json);
}

/// @nodoc
mixin _$ProcesaPagoQRRespuesta {
  String get documento => throw _privateConstructorUsedError;
  String get fecha => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProcesaPagoQRRespuestaCopyWith<ProcesaPagoQRRespuesta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProcesaPagoQRRespuestaCopyWith<$Res> {
  factory $ProcesaPagoQRRespuestaCopyWith(ProcesaPagoQRRespuesta value,
          $Res Function(ProcesaPagoQRRespuesta) then) =
      _$ProcesaPagoQRRespuestaCopyWithImpl<$Res, ProcesaPagoQRRespuesta>;
  @useResult
  $Res call({String documento, String fecha});
}

/// @nodoc
class _$ProcesaPagoQRRespuestaCopyWithImpl<$Res,
        $Val extends ProcesaPagoQRRespuesta>
    implements $ProcesaPagoQRRespuestaCopyWith<$Res> {
  _$ProcesaPagoQRRespuestaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documento = null,
    Object? fecha = null,
  }) {
    return _then(_value.copyWith(
      documento: null == documento
          ? _value.documento
          : documento // ignore: cast_nullable_to_non_nullable
              as String,
      fecha: null == fecha
          ? _value.fecha
          : fecha // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProcesaPagoQRRespuestaImplCopyWith<$Res>
    implements $ProcesaPagoQRRespuestaCopyWith<$Res> {
  factory _$$ProcesaPagoQRRespuestaImplCopyWith(
          _$ProcesaPagoQRRespuestaImpl value,
          $Res Function(_$ProcesaPagoQRRespuestaImpl) then) =
      __$$ProcesaPagoQRRespuestaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String documento, String fecha});
}

/// @nodoc
class __$$ProcesaPagoQRRespuestaImplCopyWithImpl<$Res>
    extends _$ProcesaPagoQRRespuestaCopyWithImpl<$Res,
        _$ProcesaPagoQRRespuestaImpl>
    implements _$$ProcesaPagoQRRespuestaImplCopyWith<$Res> {
  __$$ProcesaPagoQRRespuestaImplCopyWithImpl(
      _$ProcesaPagoQRRespuestaImpl _value,
      $Res Function(_$ProcesaPagoQRRespuestaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documento = null,
    Object? fecha = null,
  }) {
    return _then(_$ProcesaPagoQRRespuestaImpl(
      documento: null == documento
          ? _value.documento
          : documento // ignore: cast_nullable_to_non_nullable
              as String,
      fecha: null == fecha
          ? _value.fecha
          : fecha // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProcesaPagoQRRespuestaImpl implements _ProcesaPagoQRRespuesta {
  _$ProcesaPagoQRRespuestaImpl({this.documento = '', this.fecha = ''});

  factory _$ProcesaPagoQRRespuestaImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProcesaPagoQRRespuestaImplFromJson(json);

  @override
  @JsonKey()
  final String documento;
  @override
  @JsonKey()
  final String fecha;

  @override
  String toString() {
    return 'ProcesaPagoQRRespuesta(documento: $documento, fecha: $fecha)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProcesaPagoQRRespuestaImpl &&
            (identical(other.documento, documento) ||
                other.documento == documento) &&
            (identical(other.fecha, fecha) || other.fecha == fecha));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, documento, fecha);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProcesaPagoQRRespuestaImplCopyWith<_$ProcesaPagoQRRespuestaImpl>
      get copyWith => __$$ProcesaPagoQRRespuestaImplCopyWithImpl<
          _$ProcesaPagoQRRespuestaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProcesaPagoQRRespuestaImplToJson(
      this,
    );
  }
}

abstract class _ProcesaPagoQRRespuesta implements ProcesaPagoQRRespuesta {
  factory _ProcesaPagoQRRespuesta(
      {final String documento,
      final String fecha}) = _$ProcesaPagoQRRespuestaImpl;

  factory _ProcesaPagoQRRespuesta.fromJson(Map<String, dynamic> json) =
      _$ProcesaPagoQRRespuestaImpl.fromJson;

  @override
  String get documento;
  @override
  String get fecha;
  @override
  @JsonKey(ignore: true)
  _$$ProcesaPagoQRRespuestaImplCopyWith<_$ProcesaPagoQRRespuestaImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ServicioModel _$ServicioModelFromJson(Map<String, dynamic> json) {
  return _ServicioModel.fromJson(json);
}

/// @nodoc
mixin _$ServicioModel {
  int get id => throw _privateConstructorUsedError;
  String get nombre => throw _privateConstructorUsedError;
  String get tipo => throw _privateConstructorUsedError;
  String get codigo => throw _privateConstructorUsedError;
  String get codigoPagoExterno => throw _privateConstructorUsedError;
  String get descripcion => throw _privateConstructorUsedError;
  String get canal => throw _privateConstructorUsedError;
  String get codigoCategoria => throw _privateConstructorUsedError;
  String get nombreCategoria => throw _privateConstructorUsedError;
  String get etiqueta => throw _privateConstructorUsedError;
  bool get esEspecial => throw _privateConstructorUsedError;
  bool get esFavorito => throw _privateConstructorUsedError;
  List<AdicionalServicioModel> get adicionales =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServicioModelCopyWith<ServicioModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServicioModelCopyWith<$Res> {
  factory $ServicioModelCopyWith(
          ServicioModel value, $Res Function(ServicioModel) then) =
      _$ServicioModelCopyWithImpl<$Res, ServicioModel>;
  @useResult
  $Res call(
      {int id,
      String nombre,
      String tipo,
      String codigo,
      String codigoPagoExterno,
      String descripcion,
      String canal,
      String codigoCategoria,
      String nombreCategoria,
      String etiqueta,
      bool esEspecial,
      bool esFavorito,
      List<AdicionalServicioModel> adicionales});
}

/// @nodoc
class _$ServicioModelCopyWithImpl<$Res, $Val extends ServicioModel>
    implements $ServicioModelCopyWith<$Res> {
  _$ServicioModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nombre = null,
    Object? tipo = null,
    Object? codigo = null,
    Object? codigoPagoExterno = null,
    Object? descripcion = null,
    Object? canal = null,
    Object? codigoCategoria = null,
    Object? nombreCategoria = null,
    Object? etiqueta = null,
    Object? esEspecial = null,
    Object? esFavorito = null,
    Object? adicionales = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      tipo: null == tipo
          ? _value.tipo
          : tipo // ignore: cast_nullable_to_non_nullable
              as String,
      codigo: null == codigo
          ? _value.codigo
          : codigo // ignore: cast_nullable_to_non_nullable
              as String,
      codigoPagoExterno: null == codigoPagoExterno
          ? _value.codigoPagoExterno
          : codigoPagoExterno // ignore: cast_nullable_to_non_nullable
              as String,
      descripcion: null == descripcion
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
      canal: null == canal
          ? _value.canal
          : canal // ignore: cast_nullable_to_non_nullable
              as String,
      codigoCategoria: null == codigoCategoria
          ? _value.codigoCategoria
          : codigoCategoria // ignore: cast_nullable_to_non_nullable
              as String,
      nombreCategoria: null == nombreCategoria
          ? _value.nombreCategoria
          : nombreCategoria // ignore: cast_nullable_to_non_nullable
              as String,
      etiqueta: null == etiqueta
          ? _value.etiqueta
          : etiqueta // ignore: cast_nullable_to_non_nullable
              as String,
      esEspecial: null == esEspecial
          ? _value.esEspecial
          : esEspecial // ignore: cast_nullable_to_non_nullable
              as bool,
      esFavorito: null == esFavorito
          ? _value.esFavorito
          : esFavorito // ignore: cast_nullable_to_non_nullable
              as bool,
      adicionales: null == adicionales
          ? _value.adicionales
          : adicionales // ignore: cast_nullable_to_non_nullable
              as List<AdicionalServicioModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServicioModelImplCopyWith<$Res>
    implements $ServicioModelCopyWith<$Res> {
  factory _$$ServicioModelImplCopyWith(
          _$ServicioModelImpl value, $Res Function(_$ServicioModelImpl) then) =
      __$$ServicioModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String nombre,
      String tipo,
      String codigo,
      String codigoPagoExterno,
      String descripcion,
      String canal,
      String codigoCategoria,
      String nombreCategoria,
      String etiqueta,
      bool esEspecial,
      bool esFavorito,
      List<AdicionalServicioModel> adicionales});
}

/// @nodoc
class __$$ServicioModelImplCopyWithImpl<$Res>
    extends _$ServicioModelCopyWithImpl<$Res, _$ServicioModelImpl>
    implements _$$ServicioModelImplCopyWith<$Res> {
  __$$ServicioModelImplCopyWithImpl(
      _$ServicioModelImpl _value, $Res Function(_$ServicioModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nombre = null,
    Object? tipo = null,
    Object? codigo = null,
    Object? codigoPagoExterno = null,
    Object? descripcion = null,
    Object? canal = null,
    Object? codigoCategoria = null,
    Object? nombreCategoria = null,
    Object? etiqueta = null,
    Object? esEspecial = null,
    Object? esFavorito = null,
    Object? adicionales = null,
  }) {
    return _then(_$ServicioModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      tipo: null == tipo
          ? _value.tipo
          : tipo // ignore: cast_nullable_to_non_nullable
              as String,
      codigo: null == codigo
          ? _value.codigo
          : codigo // ignore: cast_nullable_to_non_nullable
              as String,
      codigoPagoExterno: null == codigoPagoExterno
          ? _value.codigoPagoExterno
          : codigoPagoExterno // ignore: cast_nullable_to_non_nullable
              as String,
      descripcion: null == descripcion
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
      canal: null == canal
          ? _value.canal
          : canal // ignore: cast_nullable_to_non_nullable
              as String,
      codigoCategoria: null == codigoCategoria
          ? _value.codigoCategoria
          : codigoCategoria // ignore: cast_nullable_to_non_nullable
              as String,
      nombreCategoria: null == nombreCategoria
          ? _value.nombreCategoria
          : nombreCategoria // ignore: cast_nullable_to_non_nullable
              as String,
      etiqueta: null == etiqueta
          ? _value.etiqueta
          : etiqueta // ignore: cast_nullable_to_non_nullable
              as String,
      esEspecial: null == esEspecial
          ? _value.esEspecial
          : esEspecial // ignore: cast_nullable_to_non_nullable
              as bool,
      esFavorito: null == esFavorito
          ? _value.esFavorito
          : esFavorito // ignore: cast_nullable_to_non_nullable
              as bool,
      adicionales: null == adicionales
          ? _value._adicionales
          : adicionales // ignore: cast_nullable_to_non_nullable
              as List<AdicionalServicioModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServicioModelImpl implements _ServicioModel {
  _$ServicioModelImpl(
      {this.id = 0,
      this.nombre = '',
      this.tipo = '',
      this.codigo = '',
      this.codigoPagoExterno = '',
      this.descripcion = '',
      this.canal = '',
      this.codigoCategoria = '',
      this.nombreCategoria = '',
      this.etiqueta = '',
      this.esEspecial = false,
      this.esFavorito = false,
      final List<AdicionalServicioModel> adicionales = const []})
      : _adicionales = adicionales;

  factory _$ServicioModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServicioModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String nombre;
  @override
  @JsonKey()
  final String tipo;
  @override
  @JsonKey()
  final String codigo;
  @override
  @JsonKey()
  final String codigoPagoExterno;
  @override
  @JsonKey()
  final String descripcion;
  @override
  @JsonKey()
  final String canal;
  @override
  @JsonKey()
  final String codigoCategoria;
  @override
  @JsonKey()
  final String nombreCategoria;
  @override
  @JsonKey()
  final String etiqueta;
  @override
  @JsonKey()
  final bool esEspecial;
  @override
  @JsonKey()
  final bool esFavorito;
  final List<AdicionalServicioModel> _adicionales;
  @override
  @JsonKey()
  List<AdicionalServicioModel> get adicionales {
    if (_adicionales is EqualUnmodifiableListView) return _adicionales;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_adicionales);
  }

  @override
  String toString() {
    return 'ServicioModel(id: $id, nombre: $nombre, tipo: $tipo, codigo: $codigo, codigoPagoExterno: $codigoPagoExterno, descripcion: $descripcion, canal: $canal, codigoCategoria: $codigoCategoria, nombreCategoria: $nombreCategoria, etiqueta: $etiqueta, esEspecial: $esEspecial, esFavorito: $esFavorito, adicionales: $adicionales)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServicioModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nombre, nombre) || other.nombre == nombre) &&
            (identical(other.tipo, tipo) || other.tipo == tipo) &&
            (identical(other.codigo, codigo) || other.codigo == codigo) &&
            (identical(other.codigoPagoExterno, codigoPagoExterno) ||
                other.codigoPagoExterno == codigoPagoExterno) &&
            (identical(other.descripcion, descripcion) ||
                other.descripcion == descripcion) &&
            (identical(other.canal, canal) || other.canal == canal) &&
            (identical(other.codigoCategoria, codigoCategoria) ||
                other.codigoCategoria == codigoCategoria) &&
            (identical(other.nombreCategoria, nombreCategoria) ||
                other.nombreCategoria == nombreCategoria) &&
            (identical(other.etiqueta, etiqueta) ||
                other.etiqueta == etiqueta) &&
            (identical(other.esEspecial, esEspecial) ||
                other.esEspecial == esEspecial) &&
            (identical(other.esFavorito, esFavorito) ||
                other.esFavorito == esFavorito) &&
            const DeepCollectionEquality()
                .equals(other._adicionales, _adicionales));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      nombre,
      tipo,
      codigo,
      codigoPagoExterno,
      descripcion,
      canal,
      codigoCategoria,
      nombreCategoria,
      etiqueta,
      esEspecial,
      esFavorito,
      const DeepCollectionEquality().hash(_adicionales));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServicioModelImplCopyWith<_$ServicioModelImpl> get copyWith =>
      __$$ServicioModelImplCopyWithImpl<_$ServicioModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServicioModelImplToJson(
      this,
    );
  }
}

abstract class _ServicioModel implements ServicioModel {
  factory _ServicioModel(
      {final int id,
      final String nombre,
      final String tipo,
      final String codigo,
      final String codigoPagoExterno,
      final String descripcion,
      final String canal,
      final String codigoCategoria,
      final String nombreCategoria,
      final String etiqueta,
      final bool esEspecial,
      final bool esFavorito,
      final List<AdicionalServicioModel> adicionales}) = _$ServicioModelImpl;

  factory _ServicioModel.fromJson(Map<String, dynamic> json) =
      _$ServicioModelImpl.fromJson;

  @override
  int get id;
  @override
  String get nombre;
  @override
  String get tipo;
  @override
  String get codigo;
  @override
  String get codigoPagoExterno;
  @override
  String get descripcion;
  @override
  String get canal;
  @override
  String get codigoCategoria;
  @override
  String get nombreCategoria;
  @override
  String get etiqueta;
  @override
  bool get esEspecial;
  @override
  bool get esFavorito;
  @override
  List<AdicionalServicioModel> get adicionales;
  @override
  @JsonKey(ignore: true)
  _$$ServicioModelImplCopyWith<_$ServicioModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AdicionalServicioModel _$AdicionalServicioModelFromJson(
    Map<String, dynamic> json) {
  return _AdicionalServicioModel.fromJson(json);
}

/// @nodoc
mixin _$AdicionalServicioModel {
  String get etiqueta => throw _privateConstructorUsedError;
  String get campo => throw _privateConstructorUsedError;
  bool get esTexto => throw _privateConstructorUsedError;
  bool get esFecha => throw _privateConstructorUsedError;
  bool get esValor => throw _privateConstructorUsedError;
  bool get esBool => throw _privateConstructorUsedError;
  String get entrada => throw _privateConstructorUsedError;
  bool get requiereEnviarVacio => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdicionalServicioModelCopyWith<AdicionalServicioModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdicionalServicioModelCopyWith<$Res> {
  factory $AdicionalServicioModelCopyWith(AdicionalServicioModel value,
          $Res Function(AdicionalServicioModel) then) =
      _$AdicionalServicioModelCopyWithImpl<$Res, AdicionalServicioModel>;
  @useResult
  $Res call(
      {String etiqueta,
      String campo,
      bool esTexto,
      bool esFecha,
      bool esValor,
      bool esBool,
      String entrada,
      bool requiereEnviarVacio});
}

/// @nodoc
class _$AdicionalServicioModelCopyWithImpl<$Res,
        $Val extends AdicionalServicioModel>
    implements $AdicionalServicioModelCopyWith<$Res> {
  _$AdicionalServicioModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? etiqueta = null,
    Object? campo = null,
    Object? esTexto = null,
    Object? esFecha = null,
    Object? esValor = null,
    Object? esBool = null,
    Object? entrada = null,
    Object? requiereEnviarVacio = null,
  }) {
    return _then(_value.copyWith(
      etiqueta: null == etiqueta
          ? _value.etiqueta
          : etiqueta // ignore: cast_nullable_to_non_nullable
              as String,
      campo: null == campo
          ? _value.campo
          : campo // ignore: cast_nullable_to_non_nullable
              as String,
      esTexto: null == esTexto
          ? _value.esTexto
          : esTexto // ignore: cast_nullable_to_non_nullable
              as bool,
      esFecha: null == esFecha
          ? _value.esFecha
          : esFecha // ignore: cast_nullable_to_non_nullable
              as bool,
      esValor: null == esValor
          ? _value.esValor
          : esValor // ignore: cast_nullable_to_non_nullable
              as bool,
      esBool: null == esBool
          ? _value.esBool
          : esBool // ignore: cast_nullable_to_non_nullable
              as bool,
      entrada: null == entrada
          ? _value.entrada
          : entrada // ignore: cast_nullable_to_non_nullable
              as String,
      requiereEnviarVacio: null == requiereEnviarVacio
          ? _value.requiereEnviarVacio
          : requiereEnviarVacio // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdicionalServicioModelImplCopyWith<$Res>
    implements $AdicionalServicioModelCopyWith<$Res> {
  factory _$$AdicionalServicioModelImplCopyWith(
          _$AdicionalServicioModelImpl value,
          $Res Function(_$AdicionalServicioModelImpl) then) =
      __$$AdicionalServicioModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String etiqueta,
      String campo,
      bool esTexto,
      bool esFecha,
      bool esValor,
      bool esBool,
      String entrada,
      bool requiereEnviarVacio});
}

/// @nodoc
class __$$AdicionalServicioModelImplCopyWithImpl<$Res>
    extends _$AdicionalServicioModelCopyWithImpl<$Res,
        _$AdicionalServicioModelImpl>
    implements _$$AdicionalServicioModelImplCopyWith<$Res> {
  __$$AdicionalServicioModelImplCopyWithImpl(
      _$AdicionalServicioModelImpl _value,
      $Res Function(_$AdicionalServicioModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? etiqueta = null,
    Object? campo = null,
    Object? esTexto = null,
    Object? esFecha = null,
    Object? esValor = null,
    Object? esBool = null,
    Object? entrada = null,
    Object? requiereEnviarVacio = null,
  }) {
    return _then(_$AdicionalServicioModelImpl(
      etiqueta: null == etiqueta
          ? _value.etiqueta
          : etiqueta // ignore: cast_nullable_to_non_nullable
              as String,
      campo: null == campo
          ? _value.campo
          : campo // ignore: cast_nullable_to_non_nullable
              as String,
      esTexto: null == esTexto
          ? _value.esTexto
          : esTexto // ignore: cast_nullable_to_non_nullable
              as bool,
      esFecha: null == esFecha
          ? _value.esFecha
          : esFecha // ignore: cast_nullable_to_non_nullable
              as bool,
      esValor: null == esValor
          ? _value.esValor
          : esValor // ignore: cast_nullable_to_non_nullable
              as bool,
      esBool: null == esBool
          ? _value.esBool
          : esBool // ignore: cast_nullable_to_non_nullable
              as bool,
      entrada: null == entrada
          ? _value.entrada
          : entrada // ignore: cast_nullable_to_non_nullable
              as String,
      requiereEnviarVacio: null == requiereEnviarVacio
          ? _value.requiereEnviarVacio
          : requiereEnviarVacio // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdicionalServicioModelImpl implements _AdicionalServicioModel {
  _$AdicionalServicioModelImpl(
      {this.etiqueta = '',
      this.campo = '',
      this.esTexto = false,
      this.esFecha = false,
      this.esValor = false,
      this.esBool = false,
      this.entrada = '',
      this.requiereEnviarVacio = false});

  factory _$AdicionalServicioModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdicionalServicioModelImplFromJson(json);

  @override
  @JsonKey()
  final String etiqueta;
  @override
  @JsonKey()
  final String campo;
  @override
  @JsonKey()
  final bool esTexto;
  @override
  @JsonKey()
  final bool esFecha;
  @override
  @JsonKey()
  final bool esValor;
  @override
  @JsonKey()
  final bool esBool;
  @override
  @JsonKey()
  final String entrada;
  @override
  @JsonKey()
  final bool requiereEnviarVacio;

  @override
  String toString() {
    return 'AdicionalServicioModel(etiqueta: $etiqueta, campo: $campo, esTexto: $esTexto, esFecha: $esFecha, esValor: $esValor, esBool: $esBool, entrada: $entrada, requiereEnviarVacio: $requiereEnviarVacio)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdicionalServicioModelImpl &&
            (identical(other.etiqueta, etiqueta) ||
                other.etiqueta == etiqueta) &&
            (identical(other.campo, campo) || other.campo == campo) &&
            (identical(other.esTexto, esTexto) || other.esTexto == esTexto) &&
            (identical(other.esFecha, esFecha) || other.esFecha == esFecha) &&
            (identical(other.esValor, esValor) || other.esValor == esValor) &&
            (identical(other.esBool, esBool) || other.esBool == esBool) &&
            (identical(other.entrada, entrada) || other.entrada == entrada) &&
            (identical(other.requiereEnviarVacio, requiereEnviarVacio) ||
                other.requiereEnviarVacio == requiereEnviarVacio));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, etiqueta, campo, esTexto,
      esFecha, esValor, esBool, entrada, requiereEnviarVacio);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdicionalServicioModelImplCopyWith<_$AdicionalServicioModelImpl>
      get copyWith => __$$AdicionalServicioModelImplCopyWithImpl<
          _$AdicionalServicioModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdicionalServicioModelImplToJson(
      this,
    );
  }
}

abstract class _AdicionalServicioModel implements AdicionalServicioModel {
  factory _AdicionalServicioModel(
      {final String etiqueta,
      final String campo,
      final bool esTexto,
      final bool esFecha,
      final bool esValor,
      final bool esBool,
      final String entrada,
      final bool requiereEnviarVacio}) = _$AdicionalServicioModelImpl;

  factory _AdicionalServicioModel.fromJson(Map<String, dynamic> json) =
      _$AdicionalServicioModelImpl.fromJson;

  @override
  String get etiqueta;
  @override
  String get campo;
  @override
  bool get esTexto;
  @override
  bool get esFecha;
  @override
  bool get esValor;
  @override
  bool get esBool;
  @override
  String get entrada;
  @override
  bool get requiereEnviarVacio;
  @override
  @JsonKey(ignore: true)
  _$$AdicionalServicioModelImplCopyWith<_$AdicionalServicioModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProveedorPagoServiciosModel _$ProveedorPagoServiciosModelFromJson(
    Map<String, dynamic> json) {
  return _ProveedorPagoServiciosModel.fromJson(json);
}

/// @nodoc
mixin _$ProveedorPagoServiciosModel {
  String get codigo => throw _privateConstructorUsedError;
  String get nombre => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProveedorPagoServiciosModelCopyWith<ProveedorPagoServiciosModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProveedorPagoServiciosModelCopyWith<$Res> {
  factory $ProveedorPagoServiciosModelCopyWith(
          ProveedorPagoServiciosModel value,
          $Res Function(ProveedorPagoServiciosModel) then) =
      _$ProveedorPagoServiciosModelCopyWithImpl<$Res,
          ProveedorPagoServiciosModel>;
  @useResult
  $Res call({String codigo, String nombre});
}

/// @nodoc
class _$ProveedorPagoServiciosModelCopyWithImpl<$Res,
        $Val extends ProveedorPagoServiciosModel>
    implements $ProveedorPagoServiciosModelCopyWith<$Res> {
  _$ProveedorPagoServiciosModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codigo = null,
    Object? nombre = null,
  }) {
    return _then(_value.copyWith(
      codigo: null == codigo
          ? _value.codigo
          : codigo // ignore: cast_nullable_to_non_nullable
              as String,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProveedorPagoServiciosModelImplCopyWith<$Res>
    implements $ProveedorPagoServiciosModelCopyWith<$Res> {
  factory _$$ProveedorPagoServiciosModelImplCopyWith(
          _$ProveedorPagoServiciosModelImpl value,
          $Res Function(_$ProveedorPagoServiciosModelImpl) then) =
      __$$ProveedorPagoServiciosModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String codigo, String nombre});
}

/// @nodoc
class __$$ProveedorPagoServiciosModelImplCopyWithImpl<$Res>
    extends _$ProveedorPagoServiciosModelCopyWithImpl<$Res,
        _$ProveedorPagoServiciosModelImpl>
    implements _$$ProveedorPagoServiciosModelImplCopyWith<$Res> {
  __$$ProveedorPagoServiciosModelImplCopyWithImpl(
      _$ProveedorPagoServiciosModelImpl _value,
      $Res Function(_$ProveedorPagoServiciosModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codigo = null,
    Object? nombre = null,
  }) {
    return _then(_$ProveedorPagoServiciosModelImpl(
      codigo: null == codigo
          ? _value.codigo
          : codigo // ignore: cast_nullable_to_non_nullable
              as String,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProveedorPagoServiciosModelImpl
    implements _ProveedorPagoServiciosModel {
  _$ProveedorPagoServiciosModelImpl({this.codigo = '', this.nombre = ''});

  factory _$ProveedorPagoServiciosModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ProveedorPagoServiciosModelImplFromJson(json);

  @override
  @JsonKey()
  final String codigo;
  @override
  @JsonKey()
  final String nombre;

  @override
  String toString() {
    return 'ProveedorPagoServiciosModel(codigo: $codigo, nombre: $nombre)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProveedorPagoServiciosModelImpl &&
            (identical(other.codigo, codigo) || other.codigo == codigo) &&
            (identical(other.nombre, nombre) || other.nombre == nombre));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, codigo, nombre);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProveedorPagoServiciosModelImplCopyWith<_$ProveedorPagoServiciosModelImpl>
      get copyWith => __$$ProveedorPagoServiciosModelImplCopyWithImpl<
          _$ProveedorPagoServiciosModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProveedorPagoServiciosModelImplToJson(
      this,
    );
  }
}

abstract class _ProveedorPagoServiciosModel
    implements ProveedorPagoServiciosModel {
  factory _ProveedorPagoServiciosModel(
      {final String codigo,
      final String nombre}) = _$ProveedorPagoServiciosModelImpl;

  factory _ProveedorPagoServiciosModel.fromJson(Map<String, dynamic> json) =
      _$ProveedorPagoServiciosModelImpl.fromJson;

  @override
  String get codigo;
  @override
  String get nombre;
  @override
  @JsonKey(ignore: true)
  _$$ProveedorPagoServiciosModelImplCopyWith<_$ProveedorPagoServiciosModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultaRequisitosPagoServiciosRespuesta
    _$ConsultaRequisitosPagoServiciosRespuestaFromJson(
        Map<String, dynamic> json) {
  return _ConsultaRequisitosPagoServiciosRespuesta.fromJson(json);
}

/// @nodoc
mixin _$ConsultaRequisitosPagoServiciosRespuesta {
  List<ProveedorPagoServiciosModel> get listaPagoServicio =>
      throw _privateConstructorUsedError;
  List<ServicioModel> get servicios => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConsultaRequisitosPagoServiciosRespuestaCopyWith<
          ConsultaRequisitosPagoServiciosRespuesta>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultaRequisitosPagoServiciosRespuestaCopyWith<$Res> {
  factory $ConsultaRequisitosPagoServiciosRespuestaCopyWith(
          ConsultaRequisitosPagoServiciosRespuesta value,
          $Res Function(ConsultaRequisitosPagoServiciosRespuesta) then) =
      _$ConsultaRequisitosPagoServiciosRespuestaCopyWithImpl<$Res,
          ConsultaRequisitosPagoServiciosRespuesta>;
  @useResult
  $Res call(
      {List<ProveedorPagoServiciosModel> listaPagoServicio,
      List<ServicioModel> servicios});
}

/// @nodoc
class _$ConsultaRequisitosPagoServiciosRespuestaCopyWithImpl<$Res,
        $Val extends ConsultaRequisitosPagoServiciosRespuesta>
    implements $ConsultaRequisitosPagoServiciosRespuestaCopyWith<$Res> {
  _$ConsultaRequisitosPagoServiciosRespuestaCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listaPagoServicio = null,
    Object? servicios = null,
  }) {
    return _then(_value.copyWith(
      listaPagoServicio: null == listaPagoServicio
          ? _value.listaPagoServicio
          : listaPagoServicio // ignore: cast_nullable_to_non_nullable
              as List<ProveedorPagoServiciosModel>,
      servicios: null == servicios
          ? _value.servicios
          : servicios // ignore: cast_nullable_to_non_nullable
              as List<ServicioModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConsultaRequisitosPagoServiciosRespuestaImplCopyWith<$Res>
    implements $ConsultaRequisitosPagoServiciosRespuestaCopyWith<$Res> {
  factory _$$ConsultaRequisitosPagoServiciosRespuestaImplCopyWith(
          _$ConsultaRequisitosPagoServiciosRespuestaImpl value,
          $Res Function(_$ConsultaRequisitosPagoServiciosRespuestaImpl) then) =
      __$$ConsultaRequisitosPagoServiciosRespuestaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ProveedorPagoServiciosModel> listaPagoServicio,
      List<ServicioModel> servicios});
}

/// @nodoc
class __$$ConsultaRequisitosPagoServiciosRespuestaImplCopyWithImpl<$Res>
    extends _$ConsultaRequisitosPagoServiciosRespuestaCopyWithImpl<$Res,
        _$ConsultaRequisitosPagoServiciosRespuestaImpl>
    implements _$$ConsultaRequisitosPagoServiciosRespuestaImplCopyWith<$Res> {
  __$$ConsultaRequisitosPagoServiciosRespuestaImplCopyWithImpl(
      _$ConsultaRequisitosPagoServiciosRespuestaImpl _value,
      $Res Function(_$ConsultaRequisitosPagoServiciosRespuestaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listaPagoServicio = null,
    Object? servicios = null,
  }) {
    return _then(_$ConsultaRequisitosPagoServiciosRespuestaImpl(
      listaPagoServicio: null == listaPagoServicio
          ? _value._listaPagoServicio
          : listaPagoServicio // ignore: cast_nullable_to_non_nullable
              as List<ProveedorPagoServiciosModel>,
      servicios: null == servicios
          ? _value._servicios
          : servicios // ignore: cast_nullable_to_non_nullable
              as List<ServicioModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultaRequisitosPagoServiciosRespuestaImpl
    implements _ConsultaRequisitosPagoServiciosRespuesta {
  _$ConsultaRequisitosPagoServiciosRespuestaImpl(
      {final List<ProveedorPagoServiciosModel> listaPagoServicio = const [],
      final List<ServicioModel> servicios = const []})
      : _listaPagoServicio = listaPagoServicio,
        _servicios = servicios;

  factory _$ConsultaRequisitosPagoServiciosRespuestaImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultaRequisitosPagoServiciosRespuestaImplFromJson(json);

  final List<ProveedorPagoServiciosModel> _listaPagoServicio;
  @override
  @JsonKey()
  List<ProveedorPagoServiciosModel> get listaPagoServicio {
    if (_listaPagoServicio is EqualUnmodifiableListView)
      return _listaPagoServicio;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listaPagoServicio);
  }

  final List<ServicioModel> _servicios;
  @override
  @JsonKey()
  List<ServicioModel> get servicios {
    if (_servicios is EqualUnmodifiableListView) return _servicios;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_servicios);
  }

  @override
  String toString() {
    return 'ConsultaRequisitosPagoServiciosRespuesta(listaPagoServicio: $listaPagoServicio, servicios: $servicios)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultaRequisitosPagoServiciosRespuestaImpl &&
            const DeepCollectionEquality()
                .equals(other._listaPagoServicio, _listaPagoServicio) &&
            const DeepCollectionEquality()
                .equals(other._servicios, _servicios));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_listaPagoServicio),
      const DeepCollectionEquality().hash(_servicios));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultaRequisitosPagoServiciosRespuestaImplCopyWith<
          _$ConsultaRequisitosPagoServiciosRespuestaImpl>
      get copyWith =>
          __$$ConsultaRequisitosPagoServiciosRespuestaImplCopyWithImpl<
              _$ConsultaRequisitosPagoServiciosRespuestaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultaRequisitosPagoServiciosRespuestaImplToJson(
      this,
    );
  }
}

abstract class _ConsultaRequisitosPagoServiciosRespuesta
    implements ConsultaRequisitosPagoServiciosRespuesta {
  factory _ConsultaRequisitosPagoServiciosRespuesta(
          {final List<ProveedorPagoServiciosModel> listaPagoServicio,
          final List<ServicioModel> servicios}) =
      _$ConsultaRequisitosPagoServiciosRespuestaImpl;

  factory _ConsultaRequisitosPagoServiciosRespuesta.fromJson(
          Map<String, dynamic> json) =
      _$ConsultaRequisitosPagoServiciosRespuestaImpl.fromJson;

  @override
  List<ProveedorPagoServiciosModel> get listaPagoServicio;
  @override
  List<ServicioModel> get servicios;
  @override
  @JsonKey(ignore: true)
  _$$ConsultaRequisitosPagoServiciosRespuestaImplCopyWith<
          _$ConsultaRequisitosPagoServiciosRespuestaImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PagoServicioState _$PagoServicioStateFromJson(Map<String, dynamic> json) {
  return _PagoServicioState.fromJson(json);
}

/// @nodoc
mixin _$PagoServicioState {
  ConsultaRequisitosPagoServiciosRespuesta? get requisitos =>
      throw _privateConstructorUsedError;
  ServicioModel? get servicioSeleccionado => throw _privateConstructorUsedError;
  CuentaModel? get cuenta => throw _privateConstructorUsedError;
  bool get esIngreso => throw _privateConstructorUsedError;
  bool get esValidacion => throw _privateConstructorUsedError;
  bool get esComprobante => throw _privateConstructorUsedError;
  List<ServicioModel> get servicios => throw _privateConstructorUsedError;
  ConsultaCamposConsultaPagoServiciosRespuesta? get respuestaCamposConsulta =>
      throw _privateConstructorUsedError;
  ConsultaValoresServiciosBasicosRespuesta? get respuestaConsulta =>
      throw _privateConstructorUsedError;
  ProcesaPagoServiciosBasicosRespuesta? get respuestaProceso =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PagoServicioStateCopyWith<PagoServicioState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PagoServicioStateCopyWith<$Res> {
  factory $PagoServicioStateCopyWith(
          PagoServicioState value, $Res Function(PagoServicioState) then) =
      _$PagoServicioStateCopyWithImpl<$Res, PagoServicioState>;
  @useResult
  $Res call(
      {ConsultaRequisitosPagoServiciosRespuesta? requisitos,
      ServicioModel? servicioSeleccionado,
      CuentaModel? cuenta,
      bool esIngreso,
      bool esValidacion,
      bool esComprobante,
      List<ServicioModel> servicios,
      ConsultaCamposConsultaPagoServiciosRespuesta? respuestaCamposConsulta,
      ConsultaValoresServiciosBasicosRespuesta? respuestaConsulta,
      ProcesaPagoServiciosBasicosRespuesta? respuestaProceso});

  $ConsultaRequisitosPagoServiciosRespuestaCopyWith<$Res>? get requisitos;
  $ServicioModelCopyWith<$Res>? get servicioSeleccionado;
  $CuentaModelCopyWith<$Res>? get cuenta;
  $ConsultaCamposConsultaPagoServiciosRespuestaCopyWith<$Res>?
      get respuestaCamposConsulta;
  $ConsultaValoresServiciosBasicosRespuestaCopyWith<$Res>?
      get respuestaConsulta;
  $ProcesaPagoServiciosBasicosRespuestaCopyWith<$Res>? get respuestaProceso;
}

/// @nodoc
class _$PagoServicioStateCopyWithImpl<$Res, $Val extends PagoServicioState>
    implements $PagoServicioStateCopyWith<$Res> {
  _$PagoServicioStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requisitos = freezed,
    Object? servicioSeleccionado = freezed,
    Object? cuenta = freezed,
    Object? esIngreso = null,
    Object? esValidacion = null,
    Object? esComprobante = null,
    Object? servicios = null,
    Object? respuestaCamposConsulta = freezed,
    Object? respuestaConsulta = freezed,
    Object? respuestaProceso = freezed,
  }) {
    return _then(_value.copyWith(
      requisitos: freezed == requisitos
          ? _value.requisitos
          : requisitos // ignore: cast_nullable_to_non_nullable
              as ConsultaRequisitosPagoServiciosRespuesta?,
      servicioSeleccionado: freezed == servicioSeleccionado
          ? _value.servicioSeleccionado
          : servicioSeleccionado // ignore: cast_nullable_to_non_nullable
              as ServicioModel?,
      cuenta: freezed == cuenta
          ? _value.cuenta
          : cuenta // ignore: cast_nullable_to_non_nullable
              as CuentaModel?,
      esIngreso: null == esIngreso
          ? _value.esIngreso
          : esIngreso // ignore: cast_nullable_to_non_nullable
              as bool,
      esValidacion: null == esValidacion
          ? _value.esValidacion
          : esValidacion // ignore: cast_nullable_to_non_nullable
              as bool,
      esComprobante: null == esComprobante
          ? _value.esComprobante
          : esComprobante // ignore: cast_nullable_to_non_nullable
              as bool,
      servicios: null == servicios
          ? _value.servicios
          : servicios // ignore: cast_nullable_to_non_nullable
              as List<ServicioModel>,
      respuestaCamposConsulta: freezed == respuestaCamposConsulta
          ? _value.respuestaCamposConsulta
          : respuestaCamposConsulta // ignore: cast_nullable_to_non_nullable
              as ConsultaCamposConsultaPagoServiciosRespuesta?,
      respuestaConsulta: freezed == respuestaConsulta
          ? _value.respuestaConsulta
          : respuestaConsulta // ignore: cast_nullable_to_non_nullable
              as ConsultaValoresServiciosBasicosRespuesta?,
      respuestaProceso: freezed == respuestaProceso
          ? _value.respuestaProceso
          : respuestaProceso // ignore: cast_nullable_to_non_nullable
              as ProcesaPagoServiciosBasicosRespuesta?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConsultaRequisitosPagoServiciosRespuestaCopyWith<$Res>? get requisitos {
    if (_value.requisitos == null) {
      return null;
    }

    return $ConsultaRequisitosPagoServiciosRespuestaCopyWith<$Res>(
        _value.requisitos!, (value) {
      return _then(_value.copyWith(requisitos: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ServicioModelCopyWith<$Res>? get servicioSeleccionado {
    if (_value.servicioSeleccionado == null) {
      return null;
    }

    return $ServicioModelCopyWith<$Res>(_value.servicioSeleccionado!, (value) {
      return _then(_value.copyWith(servicioSeleccionado: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CuentaModelCopyWith<$Res>? get cuenta {
    if (_value.cuenta == null) {
      return null;
    }

    return $CuentaModelCopyWith<$Res>(_value.cuenta!, (value) {
      return _then(_value.copyWith(cuenta: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ConsultaCamposConsultaPagoServiciosRespuestaCopyWith<$Res>?
      get respuestaCamposConsulta {
    if (_value.respuestaCamposConsulta == null) {
      return null;
    }

    return $ConsultaCamposConsultaPagoServiciosRespuestaCopyWith<$Res>(
        _value.respuestaCamposConsulta!, (value) {
      return _then(_value.copyWith(respuestaCamposConsulta: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ConsultaValoresServiciosBasicosRespuestaCopyWith<$Res>?
      get respuestaConsulta {
    if (_value.respuestaConsulta == null) {
      return null;
    }

    return $ConsultaValoresServiciosBasicosRespuestaCopyWith<$Res>(
        _value.respuestaConsulta!, (value) {
      return _then(_value.copyWith(respuestaConsulta: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProcesaPagoServiciosBasicosRespuestaCopyWith<$Res>? get respuestaProceso {
    if (_value.respuestaProceso == null) {
      return null;
    }

    return $ProcesaPagoServiciosBasicosRespuestaCopyWith<$Res>(
        _value.respuestaProceso!, (value) {
      return _then(_value.copyWith(respuestaProceso: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PagoServicioStateImplCopyWith<$Res>
    implements $PagoServicioStateCopyWith<$Res> {
  factory _$$PagoServicioStateImplCopyWith(_$PagoServicioStateImpl value,
          $Res Function(_$PagoServicioStateImpl) then) =
      __$$PagoServicioStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ConsultaRequisitosPagoServiciosRespuesta? requisitos,
      ServicioModel? servicioSeleccionado,
      CuentaModel? cuenta,
      bool esIngreso,
      bool esValidacion,
      bool esComprobante,
      List<ServicioModel> servicios,
      ConsultaCamposConsultaPagoServiciosRespuesta? respuestaCamposConsulta,
      ConsultaValoresServiciosBasicosRespuesta? respuestaConsulta,
      ProcesaPagoServiciosBasicosRespuesta? respuestaProceso});

  @override
  $ConsultaRequisitosPagoServiciosRespuestaCopyWith<$Res>? get requisitos;
  @override
  $ServicioModelCopyWith<$Res>? get servicioSeleccionado;
  @override
  $CuentaModelCopyWith<$Res>? get cuenta;
  @override
  $ConsultaCamposConsultaPagoServiciosRespuestaCopyWith<$Res>?
      get respuestaCamposConsulta;
  @override
  $ConsultaValoresServiciosBasicosRespuestaCopyWith<$Res>?
      get respuestaConsulta;
  @override
  $ProcesaPagoServiciosBasicosRespuestaCopyWith<$Res>? get respuestaProceso;
}

/// @nodoc
class __$$PagoServicioStateImplCopyWithImpl<$Res>
    extends _$PagoServicioStateCopyWithImpl<$Res, _$PagoServicioStateImpl>
    implements _$$PagoServicioStateImplCopyWith<$Res> {
  __$$PagoServicioStateImplCopyWithImpl(_$PagoServicioStateImpl _value,
      $Res Function(_$PagoServicioStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requisitos = freezed,
    Object? servicioSeleccionado = freezed,
    Object? cuenta = freezed,
    Object? esIngreso = null,
    Object? esValidacion = null,
    Object? esComprobante = null,
    Object? servicios = null,
    Object? respuestaCamposConsulta = freezed,
    Object? respuestaConsulta = freezed,
    Object? respuestaProceso = freezed,
  }) {
    return _then(_$PagoServicioStateImpl(
      requisitos: freezed == requisitos
          ? _value.requisitos
          : requisitos // ignore: cast_nullable_to_non_nullable
              as ConsultaRequisitosPagoServiciosRespuesta?,
      servicioSeleccionado: freezed == servicioSeleccionado
          ? _value.servicioSeleccionado
          : servicioSeleccionado // ignore: cast_nullable_to_non_nullable
              as ServicioModel?,
      cuenta: freezed == cuenta
          ? _value.cuenta
          : cuenta // ignore: cast_nullable_to_non_nullable
              as CuentaModel?,
      esIngreso: null == esIngreso
          ? _value.esIngreso
          : esIngreso // ignore: cast_nullable_to_non_nullable
              as bool,
      esValidacion: null == esValidacion
          ? _value.esValidacion
          : esValidacion // ignore: cast_nullable_to_non_nullable
              as bool,
      esComprobante: null == esComprobante
          ? _value.esComprobante
          : esComprobante // ignore: cast_nullable_to_non_nullable
              as bool,
      servicios: null == servicios
          ? _value._servicios
          : servicios // ignore: cast_nullable_to_non_nullable
              as List<ServicioModel>,
      respuestaCamposConsulta: freezed == respuestaCamposConsulta
          ? _value.respuestaCamposConsulta
          : respuestaCamposConsulta // ignore: cast_nullable_to_non_nullable
              as ConsultaCamposConsultaPagoServiciosRespuesta?,
      respuestaConsulta: freezed == respuestaConsulta
          ? _value.respuestaConsulta
          : respuestaConsulta // ignore: cast_nullable_to_non_nullable
              as ConsultaValoresServiciosBasicosRespuesta?,
      respuestaProceso: freezed == respuestaProceso
          ? _value.respuestaProceso
          : respuestaProceso // ignore: cast_nullable_to_non_nullable
              as ProcesaPagoServiciosBasicosRespuesta?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PagoServicioStateImpl implements _PagoServicioState {
  _$PagoServicioStateImpl(
      {this.requisitos,
      this.servicioSeleccionado,
      this.cuenta,
      this.esIngreso = false,
      this.esValidacion = false,
      this.esComprobante = false,
      final List<ServicioModel> servicios = const [],
      this.respuestaCamposConsulta,
      this.respuestaConsulta,
      this.respuestaProceso})
      : _servicios = servicios;

  factory _$PagoServicioStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$PagoServicioStateImplFromJson(json);

  @override
  final ConsultaRequisitosPagoServiciosRespuesta? requisitos;
  @override
  final ServicioModel? servicioSeleccionado;
  @override
  final CuentaModel? cuenta;
  @override
  @JsonKey()
  final bool esIngreso;
  @override
  @JsonKey()
  final bool esValidacion;
  @override
  @JsonKey()
  final bool esComprobante;
  final List<ServicioModel> _servicios;
  @override
  @JsonKey()
  List<ServicioModel> get servicios {
    if (_servicios is EqualUnmodifiableListView) return _servicios;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_servicios);
  }

  @override
  final ConsultaCamposConsultaPagoServiciosRespuesta? respuestaCamposConsulta;
  @override
  final ConsultaValoresServiciosBasicosRespuesta? respuestaConsulta;
  @override
  final ProcesaPagoServiciosBasicosRespuesta? respuestaProceso;

  @override
  String toString() {
    return 'PagoServicioState(requisitos: $requisitos, servicioSeleccionado: $servicioSeleccionado, cuenta: $cuenta, esIngreso: $esIngreso, esValidacion: $esValidacion, esComprobante: $esComprobante, servicios: $servicios, respuestaCamposConsulta: $respuestaCamposConsulta, respuestaConsulta: $respuestaConsulta, respuestaProceso: $respuestaProceso)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PagoServicioStateImpl &&
            (identical(other.requisitos, requisitos) ||
                other.requisitos == requisitos) &&
            (identical(other.servicioSeleccionado, servicioSeleccionado) ||
                other.servicioSeleccionado == servicioSeleccionado) &&
            (identical(other.cuenta, cuenta) || other.cuenta == cuenta) &&
            (identical(other.esIngreso, esIngreso) ||
                other.esIngreso == esIngreso) &&
            (identical(other.esValidacion, esValidacion) ||
                other.esValidacion == esValidacion) &&
            (identical(other.esComprobante, esComprobante) ||
                other.esComprobante == esComprobante) &&
            const DeepCollectionEquality()
                .equals(other._servicios, _servicios) &&
            (identical(
                    other.respuestaCamposConsulta, respuestaCamposConsulta) ||
                other.respuestaCamposConsulta == respuestaCamposConsulta) &&
            (identical(other.respuestaConsulta, respuestaConsulta) ||
                other.respuestaConsulta == respuestaConsulta) &&
            (identical(other.respuestaProceso, respuestaProceso) ||
                other.respuestaProceso == respuestaProceso));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      requisitos,
      servicioSeleccionado,
      cuenta,
      esIngreso,
      esValidacion,
      esComprobante,
      const DeepCollectionEquality().hash(_servicios),
      respuestaCamposConsulta,
      respuestaConsulta,
      respuestaProceso);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PagoServicioStateImplCopyWith<_$PagoServicioStateImpl> get copyWith =>
      __$$PagoServicioStateImplCopyWithImpl<_$PagoServicioStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PagoServicioStateImplToJson(
      this,
    );
  }
}

abstract class _PagoServicioState implements PagoServicioState {
  factory _PagoServicioState(
          {final ConsultaRequisitosPagoServiciosRespuesta? requisitos,
          final ServicioModel? servicioSeleccionado,
          final CuentaModel? cuenta,
          final bool esIngreso,
          final bool esValidacion,
          final bool esComprobante,
          final List<ServicioModel> servicios,
          final ConsultaCamposConsultaPagoServiciosRespuesta?
              respuestaCamposConsulta,
          final ConsultaValoresServiciosBasicosRespuesta? respuestaConsulta,
          final ProcesaPagoServiciosBasicosRespuesta? respuestaProceso}) =
      _$PagoServicioStateImpl;

  factory _PagoServicioState.fromJson(Map<String, dynamic> json) =
      _$PagoServicioStateImpl.fromJson;

  @override
  ConsultaRequisitosPagoServiciosRespuesta? get requisitos;
  @override
  ServicioModel? get servicioSeleccionado;
  @override
  CuentaModel? get cuenta;
  @override
  bool get esIngreso;
  @override
  bool get esValidacion;
  @override
  bool get esComprobante;
  @override
  List<ServicioModel> get servicios;
  @override
  ConsultaCamposConsultaPagoServiciosRespuesta? get respuestaCamposConsulta;
  @override
  ConsultaValoresServiciosBasicosRespuesta? get respuestaConsulta;
  @override
  ProcesaPagoServiciosBasicosRespuesta? get respuestaProceso;
  @override
  @JsonKey(ignore: true)
  _$$PagoServicioStateImplCopyWith<_$PagoServicioStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ConsultaCamposConsultaPagoServiciosRequerimiento
    _$ConsultaCamposConsultaPagoServiciosRequerimientoFromJson(
        Map<String, dynamic> json) {
  return _ConsultaCamposConsultaPagoServiciosRequerimiento.fromJson(json);
}

/// @nodoc
mixin _$ConsultaCamposConsultaPagoServiciosRequerimiento {
  int get idProducto => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConsultaCamposConsultaPagoServiciosRequerimientoCopyWith<
          ConsultaCamposConsultaPagoServiciosRequerimiento>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultaCamposConsultaPagoServiciosRequerimientoCopyWith<$Res> {
  factory $ConsultaCamposConsultaPagoServiciosRequerimientoCopyWith(
          ConsultaCamposConsultaPagoServiciosRequerimiento value,
          $Res Function(ConsultaCamposConsultaPagoServiciosRequerimiento)
              then) =
      _$ConsultaCamposConsultaPagoServiciosRequerimientoCopyWithImpl<$Res,
          ConsultaCamposConsultaPagoServiciosRequerimiento>;
  @useResult
  $Res call({int idProducto});
}

/// @nodoc
class _$ConsultaCamposConsultaPagoServiciosRequerimientoCopyWithImpl<$Res,
        $Val extends ConsultaCamposConsultaPagoServiciosRequerimiento>
    implements $ConsultaCamposConsultaPagoServiciosRequerimientoCopyWith<$Res> {
  _$ConsultaCamposConsultaPagoServiciosRequerimientoCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idProducto = null,
  }) {
    return _then(_value.copyWith(
      idProducto: null == idProducto
          ? _value.idProducto
          : idProducto // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConsultaCamposConsultaPagoServiciosRequerimientoImplCopyWith<
        $Res>
    implements $ConsultaCamposConsultaPagoServiciosRequerimientoCopyWith<$Res> {
  factory _$$ConsultaCamposConsultaPagoServiciosRequerimientoImplCopyWith(
          _$ConsultaCamposConsultaPagoServiciosRequerimientoImpl value,
          $Res Function(_$ConsultaCamposConsultaPagoServiciosRequerimientoImpl)
              then) =
      __$$ConsultaCamposConsultaPagoServiciosRequerimientoImplCopyWithImpl<
          $Res>;
  @override
  @useResult
  $Res call({int idProducto});
}

/// @nodoc
class __$$ConsultaCamposConsultaPagoServiciosRequerimientoImplCopyWithImpl<$Res>
    extends _$ConsultaCamposConsultaPagoServiciosRequerimientoCopyWithImpl<$Res,
        _$ConsultaCamposConsultaPagoServiciosRequerimientoImpl>
    implements
        _$$ConsultaCamposConsultaPagoServiciosRequerimientoImplCopyWith<$Res> {
  __$$ConsultaCamposConsultaPagoServiciosRequerimientoImplCopyWithImpl(
      _$ConsultaCamposConsultaPagoServiciosRequerimientoImpl _value,
      $Res Function(_$ConsultaCamposConsultaPagoServiciosRequerimientoImpl)
          _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idProducto = null,
  }) {
    return _then(_$ConsultaCamposConsultaPagoServiciosRequerimientoImpl(
      idProducto: null == idProducto
          ? _value.idProducto
          : idProducto // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultaCamposConsultaPagoServiciosRequerimientoImpl
    implements _ConsultaCamposConsultaPagoServiciosRequerimiento {
  _$ConsultaCamposConsultaPagoServiciosRequerimientoImpl({this.idProducto = 0});

  factory _$ConsultaCamposConsultaPagoServiciosRequerimientoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultaCamposConsultaPagoServiciosRequerimientoImplFromJson(json);

  @override
  @JsonKey()
  final int idProducto;

  @override
  String toString() {
    return 'ConsultaCamposConsultaPagoServiciosRequerimiento(idProducto: $idProducto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultaCamposConsultaPagoServiciosRequerimientoImpl &&
            (identical(other.idProducto, idProducto) ||
                other.idProducto == idProducto));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, idProducto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultaCamposConsultaPagoServiciosRequerimientoImplCopyWith<
          _$ConsultaCamposConsultaPagoServiciosRequerimientoImpl>
      get copyWith =>
          __$$ConsultaCamposConsultaPagoServiciosRequerimientoImplCopyWithImpl<
                  _$ConsultaCamposConsultaPagoServiciosRequerimientoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultaCamposConsultaPagoServiciosRequerimientoImplToJson(
      this,
    );
  }
}

abstract class _ConsultaCamposConsultaPagoServiciosRequerimiento
    implements ConsultaCamposConsultaPagoServiciosRequerimiento {
  factory _ConsultaCamposConsultaPagoServiciosRequerimiento(
          {final int idProducto}) =
      _$ConsultaCamposConsultaPagoServiciosRequerimientoImpl;

  factory _ConsultaCamposConsultaPagoServiciosRequerimiento.fromJson(
          Map<String, dynamic> json) =
      _$ConsultaCamposConsultaPagoServiciosRequerimientoImpl.fromJson;

  @override
  int get idProducto;
  @override
  @JsonKey(ignore: true)
  _$$ConsultaCamposConsultaPagoServiciosRequerimientoImplCopyWith<
          _$ConsultaCamposConsultaPagoServiciosRequerimientoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultaCamposConsultaPagoServiciosRespuesta
    _$ConsultaCamposConsultaPagoServiciosRespuestaFromJson(
        Map<String, dynamic> json) {
  return _ConsultaCamposConsultaPagoServiciosRespuesta.fromJson(json);
}

/// @nodoc
mixin _$ConsultaCamposConsultaPagoServiciosRespuesta {
  CamposConsultaDetalle? get camposConsultaDetalle =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConsultaCamposConsultaPagoServiciosRespuestaCopyWith<
          ConsultaCamposConsultaPagoServiciosRespuesta>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultaCamposConsultaPagoServiciosRespuestaCopyWith<$Res> {
  factory $ConsultaCamposConsultaPagoServiciosRespuestaCopyWith(
          ConsultaCamposConsultaPagoServiciosRespuesta value,
          $Res Function(ConsultaCamposConsultaPagoServiciosRespuesta) then) =
      _$ConsultaCamposConsultaPagoServiciosRespuestaCopyWithImpl<$Res,
          ConsultaCamposConsultaPagoServiciosRespuesta>;
  @useResult
  $Res call({CamposConsultaDetalle? camposConsultaDetalle});

  $CamposConsultaDetalleCopyWith<$Res>? get camposConsultaDetalle;
}

/// @nodoc
class _$ConsultaCamposConsultaPagoServiciosRespuestaCopyWithImpl<$Res,
        $Val extends ConsultaCamposConsultaPagoServiciosRespuesta>
    implements $ConsultaCamposConsultaPagoServiciosRespuestaCopyWith<$Res> {
  _$ConsultaCamposConsultaPagoServiciosRespuestaCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? camposConsultaDetalle = freezed,
  }) {
    return _then(_value.copyWith(
      camposConsultaDetalle: freezed == camposConsultaDetalle
          ? _value.camposConsultaDetalle
          : camposConsultaDetalle // ignore: cast_nullable_to_non_nullable
              as CamposConsultaDetalle?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CamposConsultaDetalleCopyWith<$Res>? get camposConsultaDetalle {
    if (_value.camposConsultaDetalle == null) {
      return null;
    }

    return $CamposConsultaDetalleCopyWith<$Res>(_value.camposConsultaDetalle!,
        (value) {
      return _then(_value.copyWith(camposConsultaDetalle: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConsultaCamposConsultaPagoServiciosRespuestaImplCopyWith<$Res>
    implements $ConsultaCamposConsultaPagoServiciosRespuestaCopyWith<$Res> {
  factory _$$ConsultaCamposConsultaPagoServiciosRespuestaImplCopyWith(
          _$ConsultaCamposConsultaPagoServiciosRespuestaImpl value,
          $Res Function(_$ConsultaCamposConsultaPagoServiciosRespuestaImpl)
              then) =
      __$$ConsultaCamposConsultaPagoServiciosRespuestaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CamposConsultaDetalle? camposConsultaDetalle});

  @override
  $CamposConsultaDetalleCopyWith<$Res>? get camposConsultaDetalle;
}

/// @nodoc
class __$$ConsultaCamposConsultaPagoServiciosRespuestaImplCopyWithImpl<$Res>
    extends _$ConsultaCamposConsultaPagoServiciosRespuestaCopyWithImpl<$Res,
        _$ConsultaCamposConsultaPagoServiciosRespuestaImpl>
    implements
        _$$ConsultaCamposConsultaPagoServiciosRespuestaImplCopyWith<$Res> {
  __$$ConsultaCamposConsultaPagoServiciosRespuestaImplCopyWithImpl(
      _$ConsultaCamposConsultaPagoServiciosRespuestaImpl _value,
      $Res Function(_$ConsultaCamposConsultaPagoServiciosRespuestaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? camposConsultaDetalle = freezed,
  }) {
    return _then(_$ConsultaCamposConsultaPagoServiciosRespuestaImpl(
      camposConsultaDetalle: freezed == camposConsultaDetalle
          ? _value.camposConsultaDetalle
          : camposConsultaDetalle // ignore: cast_nullable_to_non_nullable
              as CamposConsultaDetalle?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultaCamposConsultaPagoServiciosRespuestaImpl
    implements _ConsultaCamposConsultaPagoServiciosRespuesta {
  _$ConsultaCamposConsultaPagoServiciosRespuestaImpl(
      {this.camposConsultaDetalle});

  factory _$ConsultaCamposConsultaPagoServiciosRespuestaImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultaCamposConsultaPagoServiciosRespuestaImplFromJson(json);

  @override
  final CamposConsultaDetalle? camposConsultaDetalle;

  @override
  String toString() {
    return 'ConsultaCamposConsultaPagoServiciosRespuesta(camposConsultaDetalle: $camposConsultaDetalle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultaCamposConsultaPagoServiciosRespuestaImpl &&
            (identical(other.camposConsultaDetalle, camposConsultaDetalle) ||
                other.camposConsultaDetalle == camposConsultaDetalle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, camposConsultaDetalle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultaCamposConsultaPagoServiciosRespuestaImplCopyWith<
          _$ConsultaCamposConsultaPagoServiciosRespuestaImpl>
      get copyWith =>
          __$$ConsultaCamposConsultaPagoServiciosRespuestaImplCopyWithImpl<
                  _$ConsultaCamposConsultaPagoServiciosRespuestaImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultaCamposConsultaPagoServiciosRespuestaImplToJson(
      this,
    );
  }
}

abstract class _ConsultaCamposConsultaPagoServiciosRespuesta
    implements ConsultaCamposConsultaPagoServiciosRespuesta {
  factory _ConsultaCamposConsultaPagoServiciosRespuesta(
          {final CamposConsultaDetalle? camposConsultaDetalle}) =
      _$ConsultaCamposConsultaPagoServiciosRespuestaImpl;

  factory _ConsultaCamposConsultaPagoServiciosRespuesta.fromJson(
          Map<String, dynamic> json) =
      _$ConsultaCamposConsultaPagoServiciosRespuestaImpl.fromJson;

  @override
  CamposConsultaDetalle? get camposConsultaDetalle;
  @override
  @JsonKey(ignore: true)
  _$$ConsultaCamposConsultaPagoServiciosRespuestaImplCopyWith<
          _$ConsultaCamposConsultaPagoServiciosRespuestaImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CamposConsultaDetalle _$CamposConsultaDetalleFromJson(
    Map<String, dynamic> json) {
  return _CamposConsultaDetalle.fromJson(json);
}

/// @nodoc
mixin _$CamposConsultaDetalle {
  List<CampoConsulta> get camposConsulta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CamposConsultaDetalleCopyWith<CamposConsultaDetalle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CamposConsultaDetalleCopyWith<$Res> {
  factory $CamposConsultaDetalleCopyWith(CamposConsultaDetalle value,
          $Res Function(CamposConsultaDetalle) then) =
      _$CamposConsultaDetalleCopyWithImpl<$Res, CamposConsultaDetalle>;
  @useResult
  $Res call({List<CampoConsulta> camposConsulta});
}

/// @nodoc
class _$CamposConsultaDetalleCopyWithImpl<$Res,
        $Val extends CamposConsultaDetalle>
    implements $CamposConsultaDetalleCopyWith<$Res> {
  _$CamposConsultaDetalleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? camposConsulta = null,
  }) {
    return _then(_value.copyWith(
      camposConsulta: null == camposConsulta
          ? _value.camposConsulta
          : camposConsulta // ignore: cast_nullable_to_non_nullable
              as List<CampoConsulta>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CamposConsultaDetalleImplCopyWith<$Res>
    implements $CamposConsultaDetalleCopyWith<$Res> {
  factory _$$CamposConsultaDetalleImplCopyWith(
          _$CamposConsultaDetalleImpl value,
          $Res Function(_$CamposConsultaDetalleImpl) then) =
      __$$CamposConsultaDetalleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CampoConsulta> camposConsulta});
}

/// @nodoc
class __$$CamposConsultaDetalleImplCopyWithImpl<$Res>
    extends _$CamposConsultaDetalleCopyWithImpl<$Res,
        _$CamposConsultaDetalleImpl>
    implements _$$CamposConsultaDetalleImplCopyWith<$Res> {
  __$$CamposConsultaDetalleImplCopyWithImpl(_$CamposConsultaDetalleImpl _value,
      $Res Function(_$CamposConsultaDetalleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? camposConsulta = null,
  }) {
    return _then(_$CamposConsultaDetalleImpl(
      camposConsulta: null == camposConsulta
          ? _value._camposConsulta
          : camposConsulta // ignore: cast_nullable_to_non_nullable
              as List<CampoConsulta>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CamposConsultaDetalleImpl implements _CamposConsultaDetalle {
  _$CamposConsultaDetalleImpl(
      {final List<CampoConsulta> camposConsulta = const []})
      : _camposConsulta = camposConsulta;

  factory _$CamposConsultaDetalleImpl.fromJson(Map<String, dynamic> json) =>
      _$$CamposConsultaDetalleImplFromJson(json);

  final List<CampoConsulta> _camposConsulta;
  @override
  @JsonKey()
  List<CampoConsulta> get camposConsulta {
    if (_camposConsulta is EqualUnmodifiableListView) return _camposConsulta;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_camposConsulta);
  }

  @override
  String toString() {
    return 'CamposConsultaDetalle(camposConsulta: $camposConsulta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CamposConsultaDetalleImpl &&
            const DeepCollectionEquality()
                .equals(other._camposConsulta, _camposConsulta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_camposConsulta));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CamposConsultaDetalleImplCopyWith<_$CamposConsultaDetalleImpl>
      get copyWith => __$$CamposConsultaDetalleImplCopyWithImpl<
          _$CamposConsultaDetalleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CamposConsultaDetalleImplToJson(
      this,
    );
  }
}

abstract class _CamposConsultaDetalle implements CamposConsultaDetalle {
  factory _CamposConsultaDetalle({final List<CampoConsulta> camposConsulta}) =
      _$CamposConsultaDetalleImpl;

  factory _CamposConsultaDetalle.fromJson(Map<String, dynamic> json) =
      _$CamposConsultaDetalleImpl.fromJson;

  @override
  List<CampoConsulta> get camposConsulta;
  @override
  @JsonKey(ignore: true)
  _$$CamposConsultaDetalleImplCopyWith<_$CamposConsultaDetalleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CampoConsulta _$CampoConsultaFromJson(Map<String, dynamic> json) {
  return _CampoConsulta.fromJson(json);
}

/// @nodoc
mixin _$CampoConsulta {
  String get id => throw _privateConstructorUsedError;
  String get etiqueta => throw _privateConstructorUsedError;
  String get nombre => throw _privateConstructorUsedError;
  String get tipoDato => throw _privateConstructorUsedError;
  String get valor => throw _privateConstructorUsedError;
  List<Catalogo> get catalogo => throw _privateConstructorUsedError;
  bool get esTexto => throw _privateConstructorUsedError;
  bool get esNumerico => throw _privateConstructorUsedError;
  bool get esFecha => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CampoConsultaCopyWith<CampoConsulta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampoConsultaCopyWith<$Res> {
  factory $CampoConsultaCopyWith(
          CampoConsulta value, $Res Function(CampoConsulta) then) =
      _$CampoConsultaCopyWithImpl<$Res, CampoConsulta>;
  @useResult
  $Res call(
      {String id,
      String etiqueta,
      String nombre,
      String tipoDato,
      String valor,
      List<Catalogo> catalogo,
      bool esTexto,
      bool esNumerico,
      bool esFecha});
}

/// @nodoc
class _$CampoConsultaCopyWithImpl<$Res, $Val extends CampoConsulta>
    implements $CampoConsultaCopyWith<$Res> {
  _$CampoConsultaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? etiqueta = null,
    Object? nombre = null,
    Object? tipoDato = null,
    Object? valor = null,
    Object? catalogo = null,
    Object? esTexto = null,
    Object? esNumerico = null,
    Object? esFecha = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      etiqueta: null == etiqueta
          ? _value.etiqueta
          : etiqueta // ignore: cast_nullable_to_non_nullable
              as String,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      tipoDato: null == tipoDato
          ? _value.tipoDato
          : tipoDato // ignore: cast_nullable_to_non_nullable
              as String,
      valor: null == valor
          ? _value.valor
          : valor // ignore: cast_nullable_to_non_nullable
              as String,
      catalogo: null == catalogo
          ? _value.catalogo
          : catalogo // ignore: cast_nullable_to_non_nullable
              as List<Catalogo>,
      esTexto: null == esTexto
          ? _value.esTexto
          : esTexto // ignore: cast_nullable_to_non_nullable
              as bool,
      esNumerico: null == esNumerico
          ? _value.esNumerico
          : esNumerico // ignore: cast_nullable_to_non_nullable
              as bool,
      esFecha: null == esFecha
          ? _value.esFecha
          : esFecha // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CampoConsultaImplCopyWith<$Res>
    implements $CampoConsultaCopyWith<$Res> {
  factory _$$CampoConsultaImplCopyWith(
          _$CampoConsultaImpl value, $Res Function(_$CampoConsultaImpl) then) =
      __$$CampoConsultaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String etiqueta,
      String nombre,
      String tipoDato,
      String valor,
      List<Catalogo> catalogo,
      bool esTexto,
      bool esNumerico,
      bool esFecha});
}

/// @nodoc
class __$$CampoConsultaImplCopyWithImpl<$Res>
    extends _$CampoConsultaCopyWithImpl<$Res, _$CampoConsultaImpl>
    implements _$$CampoConsultaImplCopyWith<$Res> {
  __$$CampoConsultaImplCopyWithImpl(
      _$CampoConsultaImpl _value, $Res Function(_$CampoConsultaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? etiqueta = null,
    Object? nombre = null,
    Object? tipoDato = null,
    Object? valor = null,
    Object? catalogo = null,
    Object? esTexto = null,
    Object? esNumerico = null,
    Object? esFecha = null,
  }) {
    return _then(_$CampoConsultaImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      etiqueta: null == etiqueta
          ? _value.etiqueta
          : etiqueta // ignore: cast_nullable_to_non_nullable
              as String,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      tipoDato: null == tipoDato
          ? _value.tipoDato
          : tipoDato // ignore: cast_nullable_to_non_nullable
              as String,
      valor: null == valor
          ? _value.valor
          : valor // ignore: cast_nullable_to_non_nullable
              as String,
      catalogo: null == catalogo
          ? _value._catalogo
          : catalogo // ignore: cast_nullable_to_non_nullable
              as List<Catalogo>,
      esTexto: null == esTexto
          ? _value.esTexto
          : esTexto // ignore: cast_nullable_to_non_nullable
              as bool,
      esNumerico: null == esNumerico
          ? _value.esNumerico
          : esNumerico // ignore: cast_nullable_to_non_nullable
              as bool,
      esFecha: null == esFecha
          ? _value.esFecha
          : esFecha // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CampoConsultaImpl implements _CampoConsulta {
  _$CampoConsultaImpl(
      {this.id = '',
      this.etiqueta = '',
      this.nombre = '',
      this.tipoDato = '',
      this.valor = '',
      final List<Catalogo> catalogo = const [],
      this.esTexto = false,
      this.esNumerico = false,
      this.esFecha = false})
      : _catalogo = catalogo;

  factory _$CampoConsultaImpl.fromJson(Map<String, dynamic> json) =>
      _$$CampoConsultaImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String etiqueta;
  @override
  @JsonKey()
  final String nombre;
  @override
  @JsonKey()
  final String tipoDato;
  @override
  @JsonKey()
  final String valor;
  final List<Catalogo> _catalogo;
  @override
  @JsonKey()
  List<Catalogo> get catalogo {
    if (_catalogo is EqualUnmodifiableListView) return _catalogo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_catalogo);
  }

  @override
  @JsonKey()
  final bool esTexto;
  @override
  @JsonKey()
  final bool esNumerico;
  @override
  @JsonKey()
  final bool esFecha;

  @override
  String toString() {
    return 'CampoConsulta(id: $id, etiqueta: $etiqueta, nombre: $nombre, tipoDato: $tipoDato, valor: $valor, catalogo: $catalogo, esTexto: $esTexto, esNumerico: $esNumerico, esFecha: $esFecha)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CampoConsultaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.etiqueta, etiqueta) ||
                other.etiqueta == etiqueta) &&
            (identical(other.nombre, nombre) || other.nombre == nombre) &&
            (identical(other.tipoDato, tipoDato) ||
                other.tipoDato == tipoDato) &&
            (identical(other.valor, valor) || other.valor == valor) &&
            const DeepCollectionEquality().equals(other._catalogo, _catalogo) &&
            (identical(other.esTexto, esTexto) || other.esTexto == esTexto) &&
            (identical(other.esNumerico, esNumerico) ||
                other.esNumerico == esNumerico) &&
            (identical(other.esFecha, esFecha) || other.esFecha == esFecha));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      etiqueta,
      nombre,
      tipoDato,
      valor,
      const DeepCollectionEquality().hash(_catalogo),
      esTexto,
      esNumerico,
      esFecha);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CampoConsultaImplCopyWith<_$CampoConsultaImpl> get copyWith =>
      __$$CampoConsultaImplCopyWithImpl<_$CampoConsultaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CampoConsultaImplToJson(
      this,
    );
  }
}

abstract class _CampoConsulta implements CampoConsulta {
  factory _CampoConsulta(
      {final String id,
      final String etiqueta,
      final String nombre,
      final String tipoDato,
      final String valor,
      final List<Catalogo> catalogo,
      final bool esTexto,
      final bool esNumerico,
      final bool esFecha}) = _$CampoConsultaImpl;

  factory _CampoConsulta.fromJson(Map<String, dynamic> json) =
      _$CampoConsultaImpl.fromJson;

  @override
  String get id;
  @override
  String get etiqueta;
  @override
  String get nombre;
  @override
  String get tipoDato;
  @override
  String get valor;
  @override
  List<Catalogo> get catalogo;
  @override
  bool get esTexto;
  @override
  bool get esNumerico;
  @override
  bool get esFecha;
  @override
  @JsonKey(ignore: true)
  _$$CampoConsultaImplCopyWith<_$CampoConsultaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Catalogo _$CatalogoFromJson(Map<String, dynamic> json) {
  return _Catalogo.fromJson(json);
}

/// @nodoc
mixin _$Catalogo {
  String get valor => throw _privateConstructorUsedError;
  String get descripcion => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatalogoCopyWith<Catalogo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogoCopyWith<$Res> {
  factory $CatalogoCopyWith(Catalogo value, $Res Function(Catalogo) then) =
      _$CatalogoCopyWithImpl<$Res, Catalogo>;
  @useResult
  $Res call({String valor, String descripcion});
}

/// @nodoc
class _$CatalogoCopyWithImpl<$Res, $Val extends Catalogo>
    implements $CatalogoCopyWith<$Res> {
  _$CatalogoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? valor = null,
    Object? descripcion = null,
  }) {
    return _then(_value.copyWith(
      valor: null == valor
          ? _value.valor
          : valor // ignore: cast_nullable_to_non_nullable
              as String,
      descripcion: null == descripcion
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CatalogoImplCopyWith<$Res>
    implements $CatalogoCopyWith<$Res> {
  factory _$$CatalogoImplCopyWith(
          _$CatalogoImpl value, $Res Function(_$CatalogoImpl) then) =
      __$$CatalogoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String valor, String descripcion});
}

/// @nodoc
class __$$CatalogoImplCopyWithImpl<$Res>
    extends _$CatalogoCopyWithImpl<$Res, _$CatalogoImpl>
    implements _$$CatalogoImplCopyWith<$Res> {
  __$$CatalogoImplCopyWithImpl(
      _$CatalogoImpl _value, $Res Function(_$CatalogoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? valor = null,
    Object? descripcion = null,
  }) {
    return _then(_$CatalogoImpl(
      valor: null == valor
          ? _value.valor
          : valor // ignore: cast_nullable_to_non_nullable
              as String,
      descripcion: null == descripcion
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CatalogoImpl implements _Catalogo {
  _$CatalogoImpl({this.valor = '', this.descripcion = ''});

  factory _$CatalogoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CatalogoImplFromJson(json);

  @override
  @JsonKey()
  final String valor;
  @override
  @JsonKey()
  final String descripcion;

  @override
  String toString() {
    return 'Catalogo(valor: $valor, descripcion: $descripcion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatalogoImpl &&
            (identical(other.valor, valor) || other.valor == valor) &&
            (identical(other.descripcion, descripcion) ||
                other.descripcion == descripcion));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, valor, descripcion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CatalogoImplCopyWith<_$CatalogoImpl> get copyWith =>
      __$$CatalogoImplCopyWithImpl<_$CatalogoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CatalogoImplToJson(
      this,
    );
  }
}

abstract class _Catalogo implements Catalogo {
  factory _Catalogo({final String valor, final String descripcion}) =
      _$CatalogoImpl;

  factory _Catalogo.fromJson(Map<String, dynamic> json) =
      _$CatalogoImpl.fromJson;

  @override
  String get valor;
  @override
  String get descripcion;
  @override
  @JsonKey(ignore: true)
  _$$CatalogoImplCopyWith<_$CatalogoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ConsultaValoresServiciosBasicosRequerimiento
    _$ConsultaValoresServiciosBasicosRequerimientoFromJson(
        Map<String, dynamic> json) {
  return _ConsultaValoresServiciosBasicosRequerimiento.fromJson(json);
}

/// @nodoc
mixin _$ConsultaValoresServiciosBasicosRequerimiento {
  int get idProducto => throw _privateConstructorUsedError;
  String get referencia => throw _privateConstructorUsedError;
  CamposConsultaDetalle? get camposConsultaDetalle =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConsultaValoresServiciosBasicosRequerimientoCopyWith<
          ConsultaValoresServiciosBasicosRequerimiento>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultaValoresServiciosBasicosRequerimientoCopyWith<$Res> {
  factory $ConsultaValoresServiciosBasicosRequerimientoCopyWith(
          ConsultaValoresServiciosBasicosRequerimiento value,
          $Res Function(ConsultaValoresServiciosBasicosRequerimiento) then) =
      _$ConsultaValoresServiciosBasicosRequerimientoCopyWithImpl<$Res,
          ConsultaValoresServiciosBasicosRequerimiento>;
  @useResult
  $Res call(
      {int idProducto,
      String referencia,
      CamposConsultaDetalle? camposConsultaDetalle});

  $CamposConsultaDetalleCopyWith<$Res>? get camposConsultaDetalle;
}

/// @nodoc
class _$ConsultaValoresServiciosBasicosRequerimientoCopyWithImpl<$Res,
        $Val extends ConsultaValoresServiciosBasicosRequerimiento>
    implements $ConsultaValoresServiciosBasicosRequerimientoCopyWith<$Res> {
  _$ConsultaValoresServiciosBasicosRequerimientoCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idProducto = null,
    Object? referencia = null,
    Object? camposConsultaDetalle = freezed,
  }) {
    return _then(_value.copyWith(
      idProducto: null == idProducto
          ? _value.idProducto
          : idProducto // ignore: cast_nullable_to_non_nullable
              as int,
      referencia: null == referencia
          ? _value.referencia
          : referencia // ignore: cast_nullable_to_non_nullable
              as String,
      camposConsultaDetalle: freezed == camposConsultaDetalle
          ? _value.camposConsultaDetalle
          : camposConsultaDetalle // ignore: cast_nullable_to_non_nullable
              as CamposConsultaDetalle?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CamposConsultaDetalleCopyWith<$Res>? get camposConsultaDetalle {
    if (_value.camposConsultaDetalle == null) {
      return null;
    }

    return $CamposConsultaDetalleCopyWith<$Res>(_value.camposConsultaDetalle!,
        (value) {
      return _then(_value.copyWith(camposConsultaDetalle: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConsultaValoresServiciosBasicosRequerimientoImplCopyWith<$Res>
    implements $ConsultaValoresServiciosBasicosRequerimientoCopyWith<$Res> {
  factory _$$ConsultaValoresServiciosBasicosRequerimientoImplCopyWith(
          _$ConsultaValoresServiciosBasicosRequerimientoImpl value,
          $Res Function(_$ConsultaValoresServiciosBasicosRequerimientoImpl)
              then) =
      __$$ConsultaValoresServiciosBasicosRequerimientoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int idProducto,
      String referencia,
      CamposConsultaDetalle? camposConsultaDetalle});

  @override
  $CamposConsultaDetalleCopyWith<$Res>? get camposConsultaDetalle;
}

/// @nodoc
class __$$ConsultaValoresServiciosBasicosRequerimientoImplCopyWithImpl<$Res>
    extends _$ConsultaValoresServiciosBasicosRequerimientoCopyWithImpl<$Res,
        _$ConsultaValoresServiciosBasicosRequerimientoImpl>
    implements
        _$$ConsultaValoresServiciosBasicosRequerimientoImplCopyWith<$Res> {
  __$$ConsultaValoresServiciosBasicosRequerimientoImplCopyWithImpl(
      _$ConsultaValoresServiciosBasicosRequerimientoImpl _value,
      $Res Function(_$ConsultaValoresServiciosBasicosRequerimientoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idProducto = null,
    Object? referencia = null,
    Object? camposConsultaDetalle = freezed,
  }) {
    return _then(_$ConsultaValoresServiciosBasicosRequerimientoImpl(
      idProducto: null == idProducto
          ? _value.idProducto
          : idProducto // ignore: cast_nullable_to_non_nullable
              as int,
      referencia: null == referencia
          ? _value.referencia
          : referencia // ignore: cast_nullable_to_non_nullable
              as String,
      camposConsultaDetalle: freezed == camposConsultaDetalle
          ? _value.camposConsultaDetalle
          : camposConsultaDetalle // ignore: cast_nullable_to_non_nullable
              as CamposConsultaDetalle?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultaValoresServiciosBasicosRequerimientoImpl
    implements _ConsultaValoresServiciosBasicosRequerimiento {
  _$ConsultaValoresServiciosBasicosRequerimientoImpl(
      {this.idProducto = 0, this.referencia = '', this.camposConsultaDetalle});

  factory _$ConsultaValoresServiciosBasicosRequerimientoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultaValoresServiciosBasicosRequerimientoImplFromJson(json);

  @override
  @JsonKey()
  final int idProducto;
  @override
  @JsonKey()
  final String referencia;
  @override
  final CamposConsultaDetalle? camposConsultaDetalle;

  @override
  String toString() {
    return 'ConsultaValoresServiciosBasicosRequerimiento(idProducto: $idProducto, referencia: $referencia, camposConsultaDetalle: $camposConsultaDetalle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultaValoresServiciosBasicosRequerimientoImpl &&
            (identical(other.idProducto, idProducto) ||
                other.idProducto == idProducto) &&
            (identical(other.referencia, referencia) ||
                other.referencia == referencia) &&
            (identical(other.camposConsultaDetalle, camposConsultaDetalle) ||
                other.camposConsultaDetalle == camposConsultaDetalle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, idProducto, referencia, camposConsultaDetalle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultaValoresServiciosBasicosRequerimientoImplCopyWith<
          _$ConsultaValoresServiciosBasicosRequerimientoImpl>
      get copyWith =>
          __$$ConsultaValoresServiciosBasicosRequerimientoImplCopyWithImpl<
                  _$ConsultaValoresServiciosBasicosRequerimientoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultaValoresServiciosBasicosRequerimientoImplToJson(
      this,
    );
  }
}

abstract class _ConsultaValoresServiciosBasicosRequerimiento
    implements ConsultaValoresServiciosBasicosRequerimiento {
  factory _ConsultaValoresServiciosBasicosRequerimiento(
          {final int idProducto,
          final String referencia,
          final CamposConsultaDetalle? camposConsultaDetalle}) =
      _$ConsultaValoresServiciosBasicosRequerimientoImpl;

  factory _ConsultaValoresServiciosBasicosRequerimiento.fromJson(
          Map<String, dynamic> json) =
      _$ConsultaValoresServiciosBasicosRequerimientoImpl.fromJson;

  @override
  int get idProducto;
  @override
  String get referencia;
  @override
  CamposConsultaDetalle? get camposConsultaDetalle;
  @override
  @JsonKey(ignore: true)
  _$$ConsultaValoresServiciosBasicosRequerimientoImplCopyWith<
          _$ConsultaValoresServiciosBasicosRequerimientoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultaValoresServiciosBasicosRespuesta
    _$ConsultaValoresServiciosBasicosRespuestaFromJson(
        Map<String, dynamic> json) {
  return _ConsultaValoresServiciosBasicosRespuesta.fromJson(json);
}

/// @nodoc
mixin _$ConsultaValoresServiciosBasicosRespuesta {
  String get guidConsulta => throw _privateConstructorUsedError;
  RubrosPagoExternoDetalle? get rubrosDetalle =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConsultaValoresServiciosBasicosRespuestaCopyWith<
          ConsultaValoresServiciosBasicosRespuesta>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultaValoresServiciosBasicosRespuestaCopyWith<$Res> {
  factory $ConsultaValoresServiciosBasicosRespuestaCopyWith(
          ConsultaValoresServiciosBasicosRespuesta value,
          $Res Function(ConsultaValoresServiciosBasicosRespuesta) then) =
      _$ConsultaValoresServiciosBasicosRespuestaCopyWithImpl<$Res,
          ConsultaValoresServiciosBasicosRespuesta>;
  @useResult
  $Res call({String guidConsulta, RubrosPagoExternoDetalle? rubrosDetalle});

  $RubrosPagoExternoDetalleCopyWith<$Res>? get rubrosDetalle;
}

/// @nodoc
class _$ConsultaValoresServiciosBasicosRespuestaCopyWithImpl<$Res,
        $Val extends ConsultaValoresServiciosBasicosRespuesta>
    implements $ConsultaValoresServiciosBasicosRespuestaCopyWith<$Res> {
  _$ConsultaValoresServiciosBasicosRespuestaCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? guidConsulta = null,
    Object? rubrosDetalle = freezed,
  }) {
    return _then(_value.copyWith(
      guidConsulta: null == guidConsulta
          ? _value.guidConsulta
          : guidConsulta // ignore: cast_nullable_to_non_nullable
              as String,
      rubrosDetalle: freezed == rubrosDetalle
          ? _value.rubrosDetalle
          : rubrosDetalle // ignore: cast_nullable_to_non_nullable
              as RubrosPagoExternoDetalle?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RubrosPagoExternoDetalleCopyWith<$Res>? get rubrosDetalle {
    if (_value.rubrosDetalle == null) {
      return null;
    }

    return $RubrosPagoExternoDetalleCopyWith<$Res>(_value.rubrosDetalle!,
        (value) {
      return _then(_value.copyWith(rubrosDetalle: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConsultaValoresServiciosBasicosRespuestaImplCopyWith<$Res>
    implements $ConsultaValoresServiciosBasicosRespuestaCopyWith<$Res> {
  factory _$$ConsultaValoresServiciosBasicosRespuestaImplCopyWith(
          _$ConsultaValoresServiciosBasicosRespuestaImpl value,
          $Res Function(_$ConsultaValoresServiciosBasicosRespuestaImpl) then) =
      __$$ConsultaValoresServiciosBasicosRespuestaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String guidConsulta, RubrosPagoExternoDetalle? rubrosDetalle});

  @override
  $RubrosPagoExternoDetalleCopyWith<$Res>? get rubrosDetalle;
}

/// @nodoc
class __$$ConsultaValoresServiciosBasicosRespuestaImplCopyWithImpl<$Res>
    extends _$ConsultaValoresServiciosBasicosRespuestaCopyWithImpl<$Res,
        _$ConsultaValoresServiciosBasicosRespuestaImpl>
    implements _$$ConsultaValoresServiciosBasicosRespuestaImplCopyWith<$Res> {
  __$$ConsultaValoresServiciosBasicosRespuestaImplCopyWithImpl(
      _$ConsultaValoresServiciosBasicosRespuestaImpl _value,
      $Res Function(_$ConsultaValoresServiciosBasicosRespuestaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? guidConsulta = null,
    Object? rubrosDetalle = freezed,
  }) {
    return _then(_$ConsultaValoresServiciosBasicosRespuestaImpl(
      guidConsulta: null == guidConsulta
          ? _value.guidConsulta
          : guidConsulta // ignore: cast_nullable_to_non_nullable
              as String,
      rubrosDetalle: freezed == rubrosDetalle
          ? _value.rubrosDetalle
          : rubrosDetalle // ignore: cast_nullable_to_non_nullable
              as RubrosPagoExternoDetalle?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultaValoresServiciosBasicosRespuestaImpl
    implements _ConsultaValoresServiciosBasicosRespuesta {
  _$ConsultaValoresServiciosBasicosRespuestaImpl(
      {this.guidConsulta = '', this.rubrosDetalle});

  factory _$ConsultaValoresServiciosBasicosRespuestaImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultaValoresServiciosBasicosRespuestaImplFromJson(json);

  @override
  @JsonKey()
  final String guidConsulta;
  @override
  final RubrosPagoExternoDetalle? rubrosDetalle;

  @override
  String toString() {
    return 'ConsultaValoresServiciosBasicosRespuesta(guidConsulta: $guidConsulta, rubrosDetalle: $rubrosDetalle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultaValoresServiciosBasicosRespuestaImpl &&
            (identical(other.guidConsulta, guidConsulta) ||
                other.guidConsulta == guidConsulta) &&
            (identical(other.rubrosDetalle, rubrosDetalle) ||
                other.rubrosDetalle == rubrosDetalle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, guidConsulta, rubrosDetalle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultaValoresServiciosBasicosRespuestaImplCopyWith<
          _$ConsultaValoresServiciosBasicosRespuestaImpl>
      get copyWith =>
          __$$ConsultaValoresServiciosBasicosRespuestaImplCopyWithImpl<
              _$ConsultaValoresServiciosBasicosRespuestaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultaValoresServiciosBasicosRespuestaImplToJson(
      this,
    );
  }
}

abstract class _ConsultaValoresServiciosBasicosRespuesta
    implements ConsultaValoresServiciosBasicosRespuesta {
  factory _ConsultaValoresServiciosBasicosRespuesta(
          {final String guidConsulta,
          final RubrosPagoExternoDetalle? rubrosDetalle}) =
      _$ConsultaValoresServiciosBasicosRespuestaImpl;

  factory _ConsultaValoresServiciosBasicosRespuesta.fromJson(
          Map<String, dynamic> json) =
      _$ConsultaValoresServiciosBasicosRespuestaImpl.fromJson;

  @override
  String get guidConsulta;
  @override
  RubrosPagoExternoDetalle? get rubrosDetalle;
  @override
  @JsonKey(ignore: true)
  _$$ConsultaValoresServiciosBasicosRespuestaImplCopyWith<
          _$ConsultaValoresServiciosBasicosRespuestaImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RubrosPagoExternoDetalle _$RubrosPagoExternoDetalleFromJson(
    Map<String, dynamic> json) {
  return _RubrosPagoExternoDetalle.fromJson(json);
}

/// @nodoc
mixin _$RubrosPagoExternoDetalle {
  String get codigoCausal => throw _privateConstructorUsedError;
  int get idAgencia => throw _privateConstructorUsedError;
  String get codigoAgenciaProveedor => throw _privateConstructorUsedError;
  int get idProducto => throw _privateConstructorUsedError;
  String get idTransaccion => throw _privateConstructorUsedError;
  String get identificacion => throw _privateConstructorUsedError;
  String get nombre => throw _privateConstructorUsedError;
  String get referencia => throw _privateConstructorUsedError;
  String get adicionales => throw _privateConstructorUsedError;
  String get datosFactura => throw _privateConstructorUsedError;
  bool get permiteAbono => throw _privateConstructorUsedError;
  bool get permitePagoAbierto => throw _privateConstructorUsedError;
  List<RubroPagoExternoDetalle> get listaRubros =>
      throw _privateConstructorUsedError;
  List<DetalleAdicional> get listaDetallesAdicionales =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RubrosPagoExternoDetalleCopyWith<RubrosPagoExternoDetalle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RubrosPagoExternoDetalleCopyWith<$Res> {
  factory $RubrosPagoExternoDetalleCopyWith(RubrosPagoExternoDetalle value,
          $Res Function(RubrosPagoExternoDetalle) then) =
      _$RubrosPagoExternoDetalleCopyWithImpl<$Res, RubrosPagoExternoDetalle>;
  @useResult
  $Res call(
      {String codigoCausal,
      int idAgencia,
      String codigoAgenciaProveedor,
      int idProducto,
      String idTransaccion,
      String identificacion,
      String nombre,
      String referencia,
      String adicionales,
      String datosFactura,
      bool permiteAbono,
      bool permitePagoAbierto,
      List<RubroPagoExternoDetalle> listaRubros,
      List<DetalleAdicional> listaDetallesAdicionales});
}

/// @nodoc
class _$RubrosPagoExternoDetalleCopyWithImpl<$Res,
        $Val extends RubrosPagoExternoDetalle>
    implements $RubrosPagoExternoDetalleCopyWith<$Res> {
  _$RubrosPagoExternoDetalleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codigoCausal = null,
    Object? idAgencia = null,
    Object? codigoAgenciaProveedor = null,
    Object? idProducto = null,
    Object? idTransaccion = null,
    Object? identificacion = null,
    Object? nombre = null,
    Object? referencia = null,
    Object? adicionales = null,
    Object? datosFactura = null,
    Object? permiteAbono = null,
    Object? permitePagoAbierto = null,
    Object? listaRubros = null,
    Object? listaDetallesAdicionales = null,
  }) {
    return _then(_value.copyWith(
      codigoCausal: null == codigoCausal
          ? _value.codigoCausal
          : codigoCausal // ignore: cast_nullable_to_non_nullable
              as String,
      idAgencia: null == idAgencia
          ? _value.idAgencia
          : idAgencia // ignore: cast_nullable_to_non_nullable
              as int,
      codigoAgenciaProveedor: null == codigoAgenciaProveedor
          ? _value.codigoAgenciaProveedor
          : codigoAgenciaProveedor // ignore: cast_nullable_to_non_nullable
              as String,
      idProducto: null == idProducto
          ? _value.idProducto
          : idProducto // ignore: cast_nullable_to_non_nullable
              as int,
      idTransaccion: null == idTransaccion
          ? _value.idTransaccion
          : idTransaccion // ignore: cast_nullable_to_non_nullable
              as String,
      identificacion: null == identificacion
          ? _value.identificacion
          : identificacion // ignore: cast_nullable_to_non_nullable
              as String,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      referencia: null == referencia
          ? _value.referencia
          : referencia // ignore: cast_nullable_to_non_nullable
              as String,
      adicionales: null == adicionales
          ? _value.adicionales
          : adicionales // ignore: cast_nullable_to_non_nullable
              as String,
      datosFactura: null == datosFactura
          ? _value.datosFactura
          : datosFactura // ignore: cast_nullable_to_non_nullable
              as String,
      permiteAbono: null == permiteAbono
          ? _value.permiteAbono
          : permiteAbono // ignore: cast_nullable_to_non_nullable
              as bool,
      permitePagoAbierto: null == permitePagoAbierto
          ? _value.permitePagoAbierto
          : permitePagoAbierto // ignore: cast_nullable_to_non_nullable
              as bool,
      listaRubros: null == listaRubros
          ? _value.listaRubros
          : listaRubros // ignore: cast_nullable_to_non_nullable
              as List<RubroPagoExternoDetalle>,
      listaDetallesAdicionales: null == listaDetallesAdicionales
          ? _value.listaDetallesAdicionales
          : listaDetallesAdicionales // ignore: cast_nullable_to_non_nullable
              as List<DetalleAdicional>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RubrosPagoExternoDetalleImplCopyWith<$Res>
    implements $RubrosPagoExternoDetalleCopyWith<$Res> {
  factory _$$RubrosPagoExternoDetalleImplCopyWith(
          _$RubrosPagoExternoDetalleImpl value,
          $Res Function(_$RubrosPagoExternoDetalleImpl) then) =
      __$$RubrosPagoExternoDetalleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String codigoCausal,
      int idAgencia,
      String codigoAgenciaProveedor,
      int idProducto,
      String idTransaccion,
      String identificacion,
      String nombre,
      String referencia,
      String adicionales,
      String datosFactura,
      bool permiteAbono,
      bool permitePagoAbierto,
      List<RubroPagoExternoDetalle> listaRubros,
      List<DetalleAdicional> listaDetallesAdicionales});
}

/// @nodoc
class __$$RubrosPagoExternoDetalleImplCopyWithImpl<$Res>
    extends _$RubrosPagoExternoDetalleCopyWithImpl<$Res,
        _$RubrosPagoExternoDetalleImpl>
    implements _$$RubrosPagoExternoDetalleImplCopyWith<$Res> {
  __$$RubrosPagoExternoDetalleImplCopyWithImpl(
      _$RubrosPagoExternoDetalleImpl _value,
      $Res Function(_$RubrosPagoExternoDetalleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codigoCausal = null,
    Object? idAgencia = null,
    Object? codigoAgenciaProveedor = null,
    Object? idProducto = null,
    Object? idTransaccion = null,
    Object? identificacion = null,
    Object? nombre = null,
    Object? referencia = null,
    Object? adicionales = null,
    Object? datosFactura = null,
    Object? permiteAbono = null,
    Object? permitePagoAbierto = null,
    Object? listaRubros = null,
    Object? listaDetallesAdicionales = null,
  }) {
    return _then(_$RubrosPagoExternoDetalleImpl(
      codigoCausal: null == codigoCausal
          ? _value.codigoCausal
          : codigoCausal // ignore: cast_nullable_to_non_nullable
              as String,
      idAgencia: null == idAgencia
          ? _value.idAgencia
          : idAgencia // ignore: cast_nullable_to_non_nullable
              as int,
      codigoAgenciaProveedor: null == codigoAgenciaProveedor
          ? _value.codigoAgenciaProveedor
          : codigoAgenciaProveedor // ignore: cast_nullable_to_non_nullable
              as String,
      idProducto: null == idProducto
          ? _value.idProducto
          : idProducto // ignore: cast_nullable_to_non_nullable
              as int,
      idTransaccion: null == idTransaccion
          ? _value.idTransaccion
          : idTransaccion // ignore: cast_nullable_to_non_nullable
              as String,
      identificacion: null == identificacion
          ? _value.identificacion
          : identificacion // ignore: cast_nullable_to_non_nullable
              as String,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      referencia: null == referencia
          ? _value.referencia
          : referencia // ignore: cast_nullable_to_non_nullable
              as String,
      adicionales: null == adicionales
          ? _value.adicionales
          : adicionales // ignore: cast_nullable_to_non_nullable
              as String,
      datosFactura: null == datosFactura
          ? _value.datosFactura
          : datosFactura // ignore: cast_nullable_to_non_nullable
              as String,
      permiteAbono: null == permiteAbono
          ? _value.permiteAbono
          : permiteAbono // ignore: cast_nullable_to_non_nullable
              as bool,
      permitePagoAbierto: null == permitePagoAbierto
          ? _value.permitePagoAbierto
          : permitePagoAbierto // ignore: cast_nullable_to_non_nullable
              as bool,
      listaRubros: null == listaRubros
          ? _value._listaRubros
          : listaRubros // ignore: cast_nullable_to_non_nullable
              as List<RubroPagoExternoDetalle>,
      listaDetallesAdicionales: null == listaDetallesAdicionales
          ? _value._listaDetallesAdicionales
          : listaDetallesAdicionales // ignore: cast_nullable_to_non_nullable
              as List<DetalleAdicional>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RubrosPagoExternoDetalleImpl implements _RubrosPagoExternoDetalle {
  const _$RubrosPagoExternoDetalleImpl(
      {this.codigoCausal = '',
      this.idAgencia = 0,
      this.codigoAgenciaProveedor = '',
      this.idProducto = 0,
      this.idTransaccion = '',
      this.identificacion = '',
      this.nombre = '',
      this.referencia = '',
      this.adicionales = '',
      this.datosFactura = '',
      this.permiteAbono = false,
      this.permitePagoAbierto = false,
      final List<RubroPagoExternoDetalle> listaRubros = const [],
      final List<DetalleAdicional> listaDetallesAdicionales = const []})
      : _listaRubros = listaRubros,
        _listaDetallesAdicionales = listaDetallesAdicionales;

  factory _$RubrosPagoExternoDetalleImpl.fromJson(Map<String, dynamic> json) =>
      _$$RubrosPagoExternoDetalleImplFromJson(json);

  @override
  @JsonKey()
  final String codigoCausal;
  @override
  @JsonKey()
  final int idAgencia;
  @override
  @JsonKey()
  final String codigoAgenciaProveedor;
  @override
  @JsonKey()
  final int idProducto;
  @override
  @JsonKey()
  final String idTransaccion;
  @override
  @JsonKey()
  final String identificacion;
  @override
  @JsonKey()
  final String nombre;
  @override
  @JsonKey()
  final String referencia;
  @override
  @JsonKey()
  final String adicionales;
  @override
  @JsonKey()
  final String datosFactura;
  @override
  @JsonKey()
  final bool permiteAbono;
  @override
  @JsonKey()
  final bool permitePagoAbierto;
  final List<RubroPagoExternoDetalle> _listaRubros;
  @override
  @JsonKey()
  List<RubroPagoExternoDetalle> get listaRubros {
    if (_listaRubros is EqualUnmodifiableListView) return _listaRubros;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listaRubros);
  }

  final List<DetalleAdicional> _listaDetallesAdicionales;
  @override
  @JsonKey()
  List<DetalleAdicional> get listaDetallesAdicionales {
    if (_listaDetallesAdicionales is EqualUnmodifiableListView)
      return _listaDetallesAdicionales;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listaDetallesAdicionales);
  }

  @override
  String toString() {
    return 'RubrosPagoExternoDetalle(codigoCausal: $codigoCausal, idAgencia: $idAgencia, codigoAgenciaProveedor: $codigoAgenciaProveedor, idProducto: $idProducto, idTransaccion: $idTransaccion, identificacion: $identificacion, nombre: $nombre, referencia: $referencia, adicionales: $adicionales, datosFactura: $datosFactura, permiteAbono: $permiteAbono, permitePagoAbierto: $permitePagoAbierto, listaRubros: $listaRubros, listaDetallesAdicionales: $listaDetallesAdicionales)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RubrosPagoExternoDetalleImpl &&
            (identical(other.codigoCausal, codigoCausal) ||
                other.codigoCausal == codigoCausal) &&
            (identical(other.idAgencia, idAgencia) ||
                other.idAgencia == idAgencia) &&
            (identical(other.codigoAgenciaProveedor, codigoAgenciaProveedor) ||
                other.codigoAgenciaProveedor == codigoAgenciaProveedor) &&
            (identical(other.idProducto, idProducto) ||
                other.idProducto == idProducto) &&
            (identical(other.idTransaccion, idTransaccion) ||
                other.idTransaccion == idTransaccion) &&
            (identical(other.identificacion, identificacion) ||
                other.identificacion == identificacion) &&
            (identical(other.nombre, nombre) || other.nombre == nombre) &&
            (identical(other.referencia, referencia) ||
                other.referencia == referencia) &&
            (identical(other.adicionales, adicionales) ||
                other.adicionales == adicionales) &&
            (identical(other.datosFactura, datosFactura) ||
                other.datosFactura == datosFactura) &&
            (identical(other.permiteAbono, permiteAbono) ||
                other.permiteAbono == permiteAbono) &&
            (identical(other.permitePagoAbierto, permitePagoAbierto) ||
                other.permitePagoAbierto == permitePagoAbierto) &&
            const DeepCollectionEquality()
                .equals(other._listaRubros, _listaRubros) &&
            const DeepCollectionEquality().equals(
                other._listaDetallesAdicionales, _listaDetallesAdicionales));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      codigoCausal,
      idAgencia,
      codigoAgenciaProveedor,
      idProducto,
      idTransaccion,
      identificacion,
      nombre,
      referencia,
      adicionales,
      datosFactura,
      permiteAbono,
      permitePagoAbierto,
      const DeepCollectionEquality().hash(_listaRubros),
      const DeepCollectionEquality().hash(_listaDetallesAdicionales));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RubrosPagoExternoDetalleImplCopyWith<_$RubrosPagoExternoDetalleImpl>
      get copyWith => __$$RubrosPagoExternoDetalleImplCopyWithImpl<
          _$RubrosPagoExternoDetalleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RubrosPagoExternoDetalleImplToJson(
      this,
    );
  }
}

abstract class _RubrosPagoExternoDetalle implements RubrosPagoExternoDetalle {
  const factory _RubrosPagoExternoDetalle(
          {final String codigoCausal,
          final int idAgencia,
          final String codigoAgenciaProveedor,
          final int idProducto,
          final String idTransaccion,
          final String identificacion,
          final String nombre,
          final String referencia,
          final String adicionales,
          final String datosFactura,
          final bool permiteAbono,
          final bool permitePagoAbierto,
          final List<RubroPagoExternoDetalle> listaRubros,
          final List<DetalleAdicional> listaDetallesAdicionales}) =
      _$RubrosPagoExternoDetalleImpl;

  factory _RubrosPagoExternoDetalle.fromJson(Map<String, dynamic> json) =
      _$RubrosPagoExternoDetalleImpl.fromJson;

  @override
  String get codigoCausal;
  @override
  int get idAgencia;
  @override
  String get codigoAgenciaProveedor;
  @override
  int get idProducto;
  @override
  String get idTransaccion;
  @override
  String get identificacion;
  @override
  String get nombre;
  @override
  String get referencia;
  @override
  String get adicionales;
  @override
  String get datosFactura;
  @override
  bool get permiteAbono;
  @override
  bool get permitePagoAbierto;
  @override
  List<RubroPagoExternoDetalle> get listaRubros;
  @override
  List<DetalleAdicional> get listaDetallesAdicionales;
  @override
  @JsonKey(ignore: true)
  _$$RubrosPagoExternoDetalleImplCopyWith<_$RubrosPagoExternoDetalleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RubroPagoExternoDetalle _$RubroPagoExternoDetalleFromJson(
    Map<String, dynamic> json) {
  return _RubroPagoExternoDetalle.fromJson(json);
}

/// @nodoc
mixin _$RubroPagoExternoDetalle {
  double get comision => throw _privateConstructorUsedError;
  set comision(double value) => throw _privateConstructorUsedError;
  double get comisionProveedor => throw _privateConstructorUsedError;
  set comisionProveedor(double value) => throw _privateConstructorUsedError;
  String get descripcion => throw _privateConstructorUsedError;
  set descripcion(String value) => throw _privateConstructorUsedError;
  String get idRubro => throw _privateConstructorUsedError;
  set idRubro(String value) => throw _privateConstructorUsedError;
  int get prioridad => throw _privateConstructorUsedError;
  set prioridad(int value) => throw _privateConstructorUsedError;
  double get valor => throw _privateConstructorUsedError;
  set valor(double value) => throw _privateConstructorUsedError;
  double get valorConComision => throw _privateConstructorUsedError;
  set valorConComision(double value) => throw _privateConstructorUsedError;
  double get valorPago => throw _privateConstructorUsedError;
  set valorPago(double value) => throw _privateConstructorUsedError;
  bool get seleccionado => throw _privateConstructorUsedError;
  set seleccionado(bool value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RubroPagoExternoDetalleCopyWith<RubroPagoExternoDetalle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RubroPagoExternoDetalleCopyWith<$Res> {
  factory $RubroPagoExternoDetalleCopyWith(RubroPagoExternoDetalle value,
          $Res Function(RubroPagoExternoDetalle) then) =
      _$RubroPagoExternoDetalleCopyWithImpl<$Res, RubroPagoExternoDetalle>;
  @useResult
  $Res call(
      {double comision,
      double comisionProveedor,
      String descripcion,
      String idRubro,
      int prioridad,
      double valor,
      double valorConComision,
      double valorPago,
      bool seleccionado});
}

/// @nodoc
class _$RubroPagoExternoDetalleCopyWithImpl<$Res,
        $Val extends RubroPagoExternoDetalle>
    implements $RubroPagoExternoDetalleCopyWith<$Res> {
  _$RubroPagoExternoDetalleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comision = null,
    Object? comisionProveedor = null,
    Object? descripcion = null,
    Object? idRubro = null,
    Object? prioridad = null,
    Object? valor = null,
    Object? valorConComision = null,
    Object? valorPago = null,
    Object? seleccionado = null,
  }) {
    return _then(_value.copyWith(
      comision: null == comision
          ? _value.comision
          : comision // ignore: cast_nullable_to_non_nullable
              as double,
      comisionProveedor: null == comisionProveedor
          ? _value.comisionProveedor
          : comisionProveedor // ignore: cast_nullable_to_non_nullable
              as double,
      descripcion: null == descripcion
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
      idRubro: null == idRubro
          ? _value.idRubro
          : idRubro // ignore: cast_nullable_to_non_nullable
              as String,
      prioridad: null == prioridad
          ? _value.prioridad
          : prioridad // ignore: cast_nullable_to_non_nullable
              as int,
      valor: null == valor
          ? _value.valor
          : valor // ignore: cast_nullable_to_non_nullable
              as double,
      valorConComision: null == valorConComision
          ? _value.valorConComision
          : valorConComision // ignore: cast_nullable_to_non_nullable
              as double,
      valorPago: null == valorPago
          ? _value.valorPago
          : valorPago // ignore: cast_nullable_to_non_nullable
              as double,
      seleccionado: null == seleccionado
          ? _value.seleccionado
          : seleccionado // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RubroPagoExternoDetalleImplCopyWith<$Res>
    implements $RubroPagoExternoDetalleCopyWith<$Res> {
  factory _$$RubroPagoExternoDetalleImplCopyWith(
          _$RubroPagoExternoDetalleImpl value,
          $Res Function(_$RubroPagoExternoDetalleImpl) then) =
      __$$RubroPagoExternoDetalleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double comision,
      double comisionProveedor,
      String descripcion,
      String idRubro,
      int prioridad,
      double valor,
      double valorConComision,
      double valorPago,
      bool seleccionado});
}

/// @nodoc
class __$$RubroPagoExternoDetalleImplCopyWithImpl<$Res>
    extends _$RubroPagoExternoDetalleCopyWithImpl<$Res,
        _$RubroPagoExternoDetalleImpl>
    implements _$$RubroPagoExternoDetalleImplCopyWith<$Res> {
  __$$RubroPagoExternoDetalleImplCopyWithImpl(
      _$RubroPagoExternoDetalleImpl _value,
      $Res Function(_$RubroPagoExternoDetalleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comision = null,
    Object? comisionProveedor = null,
    Object? descripcion = null,
    Object? idRubro = null,
    Object? prioridad = null,
    Object? valor = null,
    Object? valorConComision = null,
    Object? valorPago = null,
    Object? seleccionado = null,
  }) {
    return _then(_$RubroPagoExternoDetalleImpl(
      comision: null == comision
          ? _value.comision
          : comision // ignore: cast_nullable_to_non_nullable
              as double,
      comisionProveedor: null == comisionProveedor
          ? _value.comisionProveedor
          : comisionProveedor // ignore: cast_nullable_to_non_nullable
              as double,
      descripcion: null == descripcion
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
      idRubro: null == idRubro
          ? _value.idRubro
          : idRubro // ignore: cast_nullable_to_non_nullable
              as String,
      prioridad: null == prioridad
          ? _value.prioridad
          : prioridad // ignore: cast_nullable_to_non_nullable
              as int,
      valor: null == valor
          ? _value.valor
          : valor // ignore: cast_nullable_to_non_nullable
              as double,
      valorConComision: null == valorConComision
          ? _value.valorConComision
          : valorConComision // ignore: cast_nullable_to_non_nullable
              as double,
      valorPago: null == valorPago
          ? _value.valorPago
          : valorPago // ignore: cast_nullable_to_non_nullable
              as double,
      seleccionado: null == seleccionado
          ? _value.seleccionado
          : seleccionado // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RubroPagoExternoDetalleImpl implements _RubroPagoExternoDetalle {
  _$RubroPagoExternoDetalleImpl(
      {this.comision = 0.0,
      this.comisionProveedor = 0.0,
      this.descripcion = '',
      this.idRubro = '',
      this.prioridad = 0,
      this.valor = 0.0,
      this.valorConComision = 0.0,
      this.valorPago = 0.0,
      this.seleccionado = false});

  factory _$RubroPagoExternoDetalleImpl.fromJson(Map<String, dynamic> json) =>
      _$$RubroPagoExternoDetalleImplFromJson(json);

  @override
  @JsonKey()
  double comision;
  @override
  @JsonKey()
  double comisionProveedor;
  @override
  @JsonKey()
  String descripcion;
  @override
  @JsonKey()
  String idRubro;
  @override
  @JsonKey()
  int prioridad;
  @override
  @JsonKey()
  double valor;
  @override
  @JsonKey()
  double valorConComision;
  @override
  @JsonKey()
  double valorPago;
  @override
  @JsonKey()
  bool seleccionado;

  @override
  String toString() {
    return 'RubroPagoExternoDetalle(comision: $comision, comisionProveedor: $comisionProveedor, descripcion: $descripcion, idRubro: $idRubro, prioridad: $prioridad, valor: $valor, valorConComision: $valorConComision, valorPago: $valorPago, seleccionado: $seleccionado)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RubroPagoExternoDetalleImplCopyWith<_$RubroPagoExternoDetalleImpl>
      get copyWith => __$$RubroPagoExternoDetalleImplCopyWithImpl<
          _$RubroPagoExternoDetalleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RubroPagoExternoDetalleImplToJson(
      this,
    );
  }
}

abstract class _RubroPagoExternoDetalle implements RubroPagoExternoDetalle {
  factory _RubroPagoExternoDetalle(
      {double comision,
      double comisionProveedor,
      String descripcion,
      String idRubro,
      int prioridad,
      double valor,
      double valorConComision,
      double valorPago,
      bool seleccionado}) = _$RubroPagoExternoDetalleImpl;

  factory _RubroPagoExternoDetalle.fromJson(Map<String, dynamic> json) =
      _$RubroPagoExternoDetalleImpl.fromJson;

  @override
  double get comision;
  set comision(double value);
  @override
  double get comisionProveedor;
  set comisionProveedor(double value);
  @override
  String get descripcion;
  set descripcion(String value);
  @override
  String get idRubro;
  set idRubro(String value);
  @override
  int get prioridad;
  set prioridad(int value);
  @override
  double get valor;
  set valor(double value);
  @override
  double get valorConComision;
  set valorConComision(double value);
  @override
  double get valorPago;
  set valorPago(double value);
  @override
  bool get seleccionado;
  set seleccionado(bool value);
  @override
  @JsonKey(ignore: true)
  _$$RubroPagoExternoDetalleImplCopyWith<_$RubroPagoExternoDetalleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DetalleAdicional _$DetalleAdicionalFromJson(Map<String, dynamic> json) {
  return _DetalleAdicional.fromJson(json);
}

/// @nodoc
mixin _$DetalleAdicional {
  String get etiqueta => throw _privateConstructorUsedError;
  String get valor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetalleAdicionalCopyWith<DetalleAdicional> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetalleAdicionalCopyWith<$Res> {
  factory $DetalleAdicionalCopyWith(
          DetalleAdicional value, $Res Function(DetalleAdicional) then) =
      _$DetalleAdicionalCopyWithImpl<$Res, DetalleAdicional>;
  @useResult
  $Res call({String etiqueta, String valor});
}

/// @nodoc
class _$DetalleAdicionalCopyWithImpl<$Res, $Val extends DetalleAdicional>
    implements $DetalleAdicionalCopyWith<$Res> {
  _$DetalleAdicionalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? etiqueta = null,
    Object? valor = null,
  }) {
    return _then(_value.copyWith(
      etiqueta: null == etiqueta
          ? _value.etiqueta
          : etiqueta // ignore: cast_nullable_to_non_nullable
              as String,
      valor: null == valor
          ? _value.valor
          : valor // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetalleAdicionalImplCopyWith<$Res>
    implements $DetalleAdicionalCopyWith<$Res> {
  factory _$$DetalleAdicionalImplCopyWith(_$DetalleAdicionalImpl value,
          $Res Function(_$DetalleAdicionalImpl) then) =
      __$$DetalleAdicionalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String etiqueta, String valor});
}

/// @nodoc
class __$$DetalleAdicionalImplCopyWithImpl<$Res>
    extends _$DetalleAdicionalCopyWithImpl<$Res, _$DetalleAdicionalImpl>
    implements _$$DetalleAdicionalImplCopyWith<$Res> {
  __$$DetalleAdicionalImplCopyWithImpl(_$DetalleAdicionalImpl _value,
      $Res Function(_$DetalleAdicionalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? etiqueta = null,
    Object? valor = null,
  }) {
    return _then(_$DetalleAdicionalImpl(
      etiqueta: null == etiqueta
          ? _value.etiqueta
          : etiqueta // ignore: cast_nullable_to_non_nullable
              as String,
      valor: null == valor
          ? _value.valor
          : valor // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetalleAdicionalImpl implements _DetalleAdicional {
  const _$DetalleAdicionalImpl({this.etiqueta = '', this.valor = ''});

  factory _$DetalleAdicionalImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetalleAdicionalImplFromJson(json);

  @override
  @JsonKey()
  final String etiqueta;
  @override
  @JsonKey()
  final String valor;

  @override
  String toString() {
    return 'DetalleAdicional(etiqueta: $etiqueta, valor: $valor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetalleAdicionalImpl &&
            (identical(other.etiqueta, etiqueta) ||
                other.etiqueta == etiqueta) &&
            (identical(other.valor, valor) || other.valor == valor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, etiqueta, valor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetalleAdicionalImplCopyWith<_$DetalleAdicionalImpl> get copyWith =>
      __$$DetalleAdicionalImplCopyWithImpl<_$DetalleAdicionalImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetalleAdicionalImplToJson(
      this,
    );
  }
}

abstract class _DetalleAdicional implements DetalleAdicional {
  const factory _DetalleAdicional({final String etiqueta, final String valor}) =
      _$DetalleAdicionalImpl;

  factory _DetalleAdicional.fromJson(Map<String, dynamic> json) =
      _$DetalleAdicionalImpl.fromJson;

  @override
  String get etiqueta;
  @override
  String get valor;
  @override
  @JsonKey(ignore: true)
  _$$DetalleAdicionalImplCopyWith<_$DetalleAdicionalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProcesaPagoServiciosBasicosRequerimiento
    _$ProcesaPagoServiciosBasicosRequerimientoFromJson(
        Map<String, dynamic> json) {
  return _ProcesaPagoServiciosBasicosRequerimiento.fromJson(json);
}

/// @nodoc
mixin _$ProcesaPagoServiciosBasicosRequerimiento {
  int get idProducto => throw _privateConstructorUsedError;
  String get guidConsulta => throw _privateConstructorUsedError;
  String get cuentaDebito => throw _privateConstructorUsedError;
  String get otpIngresado => throw _privateConstructorUsedError;
  String get otpGenerado => throw _privateConstructorUsedError;
  String get emailEnvio => throw _privateConstructorUsedError;
  String get concepto => throw _privateConstructorUsedError;
  RubrosPagoExternoDetalle? get rubrosDetalle =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProcesaPagoServiciosBasicosRequerimientoCopyWith<
          ProcesaPagoServiciosBasicosRequerimiento>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProcesaPagoServiciosBasicosRequerimientoCopyWith<$Res> {
  factory $ProcesaPagoServiciosBasicosRequerimientoCopyWith(
          ProcesaPagoServiciosBasicosRequerimiento value,
          $Res Function(ProcesaPagoServiciosBasicosRequerimiento) then) =
      _$ProcesaPagoServiciosBasicosRequerimientoCopyWithImpl<$Res,
          ProcesaPagoServiciosBasicosRequerimiento>;
  @useResult
  $Res call(
      {int idProducto,
      String guidConsulta,
      String cuentaDebito,
      String otpIngresado,
      String otpGenerado,
      String emailEnvio,
      String concepto,
      RubrosPagoExternoDetalle? rubrosDetalle});

  $RubrosPagoExternoDetalleCopyWith<$Res>? get rubrosDetalle;
}

/// @nodoc
class _$ProcesaPagoServiciosBasicosRequerimientoCopyWithImpl<$Res,
        $Val extends ProcesaPagoServiciosBasicosRequerimiento>
    implements $ProcesaPagoServiciosBasicosRequerimientoCopyWith<$Res> {
  _$ProcesaPagoServiciosBasicosRequerimientoCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idProducto = null,
    Object? guidConsulta = null,
    Object? cuentaDebito = null,
    Object? otpIngresado = null,
    Object? otpGenerado = null,
    Object? emailEnvio = null,
    Object? concepto = null,
    Object? rubrosDetalle = freezed,
  }) {
    return _then(_value.copyWith(
      idProducto: null == idProducto
          ? _value.idProducto
          : idProducto // ignore: cast_nullable_to_non_nullable
              as int,
      guidConsulta: null == guidConsulta
          ? _value.guidConsulta
          : guidConsulta // ignore: cast_nullable_to_non_nullable
              as String,
      cuentaDebito: null == cuentaDebito
          ? _value.cuentaDebito
          : cuentaDebito // ignore: cast_nullable_to_non_nullable
              as String,
      otpIngresado: null == otpIngresado
          ? _value.otpIngresado
          : otpIngresado // ignore: cast_nullable_to_non_nullable
              as String,
      otpGenerado: null == otpGenerado
          ? _value.otpGenerado
          : otpGenerado // ignore: cast_nullable_to_non_nullable
              as String,
      emailEnvio: null == emailEnvio
          ? _value.emailEnvio
          : emailEnvio // ignore: cast_nullable_to_non_nullable
              as String,
      concepto: null == concepto
          ? _value.concepto
          : concepto // ignore: cast_nullable_to_non_nullable
              as String,
      rubrosDetalle: freezed == rubrosDetalle
          ? _value.rubrosDetalle
          : rubrosDetalle // ignore: cast_nullable_to_non_nullable
              as RubrosPagoExternoDetalle?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RubrosPagoExternoDetalleCopyWith<$Res>? get rubrosDetalle {
    if (_value.rubrosDetalle == null) {
      return null;
    }

    return $RubrosPagoExternoDetalleCopyWith<$Res>(_value.rubrosDetalle!,
        (value) {
      return _then(_value.copyWith(rubrosDetalle: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProcesaPagoServiciosBasicosRequerimientoImplCopyWith<$Res>
    implements $ProcesaPagoServiciosBasicosRequerimientoCopyWith<$Res> {
  factory _$$ProcesaPagoServiciosBasicosRequerimientoImplCopyWith(
          _$ProcesaPagoServiciosBasicosRequerimientoImpl value,
          $Res Function(_$ProcesaPagoServiciosBasicosRequerimientoImpl) then) =
      __$$ProcesaPagoServiciosBasicosRequerimientoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int idProducto,
      String guidConsulta,
      String cuentaDebito,
      String otpIngresado,
      String otpGenerado,
      String emailEnvio,
      String concepto,
      RubrosPagoExternoDetalle? rubrosDetalle});

  @override
  $RubrosPagoExternoDetalleCopyWith<$Res>? get rubrosDetalle;
}

/// @nodoc
class __$$ProcesaPagoServiciosBasicosRequerimientoImplCopyWithImpl<$Res>
    extends _$ProcesaPagoServiciosBasicosRequerimientoCopyWithImpl<$Res,
        _$ProcesaPagoServiciosBasicosRequerimientoImpl>
    implements _$$ProcesaPagoServiciosBasicosRequerimientoImplCopyWith<$Res> {
  __$$ProcesaPagoServiciosBasicosRequerimientoImplCopyWithImpl(
      _$ProcesaPagoServiciosBasicosRequerimientoImpl _value,
      $Res Function(_$ProcesaPagoServiciosBasicosRequerimientoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idProducto = null,
    Object? guidConsulta = null,
    Object? cuentaDebito = null,
    Object? otpIngresado = null,
    Object? otpGenerado = null,
    Object? emailEnvio = null,
    Object? concepto = null,
    Object? rubrosDetalle = freezed,
  }) {
    return _then(_$ProcesaPagoServiciosBasicosRequerimientoImpl(
      idProducto: null == idProducto
          ? _value.idProducto
          : idProducto // ignore: cast_nullable_to_non_nullable
              as int,
      guidConsulta: null == guidConsulta
          ? _value.guidConsulta
          : guidConsulta // ignore: cast_nullable_to_non_nullable
              as String,
      cuentaDebito: null == cuentaDebito
          ? _value.cuentaDebito
          : cuentaDebito // ignore: cast_nullable_to_non_nullable
              as String,
      otpIngresado: null == otpIngresado
          ? _value.otpIngresado
          : otpIngresado // ignore: cast_nullable_to_non_nullable
              as String,
      otpGenerado: null == otpGenerado
          ? _value.otpGenerado
          : otpGenerado // ignore: cast_nullable_to_non_nullable
              as String,
      emailEnvio: null == emailEnvio
          ? _value.emailEnvio
          : emailEnvio // ignore: cast_nullable_to_non_nullable
              as String,
      concepto: null == concepto
          ? _value.concepto
          : concepto // ignore: cast_nullable_to_non_nullable
              as String,
      rubrosDetalle: freezed == rubrosDetalle
          ? _value.rubrosDetalle
          : rubrosDetalle // ignore: cast_nullable_to_non_nullable
              as RubrosPagoExternoDetalle?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProcesaPagoServiciosBasicosRequerimientoImpl
    implements _ProcesaPagoServiciosBasicosRequerimiento {
  _$ProcesaPagoServiciosBasicosRequerimientoImpl(
      {this.idProducto = 0,
      this.guidConsulta = '',
      this.cuentaDebito = '',
      this.otpIngresado = '',
      this.otpGenerado = '',
      this.emailEnvio = '',
      this.concepto = '',
      this.rubrosDetalle});

  factory _$ProcesaPagoServiciosBasicosRequerimientoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ProcesaPagoServiciosBasicosRequerimientoImplFromJson(json);

  @override
  @JsonKey()
  final int idProducto;
  @override
  @JsonKey()
  final String guidConsulta;
  @override
  @JsonKey()
  final String cuentaDebito;
  @override
  @JsonKey()
  final String otpIngresado;
  @override
  @JsonKey()
  final String otpGenerado;
  @override
  @JsonKey()
  final String emailEnvio;
  @override
  @JsonKey()
  final String concepto;
  @override
  final RubrosPagoExternoDetalle? rubrosDetalle;

  @override
  String toString() {
    return 'ProcesaPagoServiciosBasicosRequerimiento(idProducto: $idProducto, guidConsulta: $guidConsulta, cuentaDebito: $cuentaDebito, otpIngresado: $otpIngresado, otpGenerado: $otpGenerado, emailEnvio: $emailEnvio, concepto: $concepto, rubrosDetalle: $rubrosDetalle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProcesaPagoServiciosBasicosRequerimientoImpl &&
            (identical(other.idProducto, idProducto) ||
                other.idProducto == idProducto) &&
            (identical(other.guidConsulta, guidConsulta) ||
                other.guidConsulta == guidConsulta) &&
            (identical(other.cuentaDebito, cuentaDebito) ||
                other.cuentaDebito == cuentaDebito) &&
            (identical(other.otpIngresado, otpIngresado) ||
                other.otpIngresado == otpIngresado) &&
            (identical(other.otpGenerado, otpGenerado) ||
                other.otpGenerado == otpGenerado) &&
            (identical(other.emailEnvio, emailEnvio) ||
                other.emailEnvio == emailEnvio) &&
            (identical(other.concepto, concepto) ||
                other.concepto == concepto) &&
            (identical(other.rubrosDetalle, rubrosDetalle) ||
                other.rubrosDetalle == rubrosDetalle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      idProducto,
      guidConsulta,
      cuentaDebito,
      otpIngresado,
      otpGenerado,
      emailEnvio,
      concepto,
      rubrosDetalle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProcesaPagoServiciosBasicosRequerimientoImplCopyWith<
          _$ProcesaPagoServiciosBasicosRequerimientoImpl>
      get copyWith =>
          __$$ProcesaPagoServiciosBasicosRequerimientoImplCopyWithImpl<
              _$ProcesaPagoServiciosBasicosRequerimientoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProcesaPagoServiciosBasicosRequerimientoImplToJson(
      this,
    );
  }
}

abstract class _ProcesaPagoServiciosBasicosRequerimiento
    implements ProcesaPagoServiciosBasicosRequerimiento {
  factory _ProcesaPagoServiciosBasicosRequerimiento(
          {final int idProducto,
          final String guidConsulta,
          final String cuentaDebito,
          final String otpIngresado,
          final String otpGenerado,
          final String emailEnvio,
          final String concepto,
          final RubrosPagoExternoDetalle? rubrosDetalle}) =
      _$ProcesaPagoServiciosBasicosRequerimientoImpl;

  factory _ProcesaPagoServiciosBasicosRequerimiento.fromJson(
          Map<String, dynamic> json) =
      _$ProcesaPagoServiciosBasicosRequerimientoImpl.fromJson;

  @override
  int get idProducto;
  @override
  String get guidConsulta;
  @override
  String get cuentaDebito;
  @override
  String get otpIngresado;
  @override
  String get otpGenerado;
  @override
  String get emailEnvio;
  @override
  String get concepto;
  @override
  RubrosPagoExternoDetalle? get rubrosDetalle;
  @override
  @JsonKey(ignore: true)
  _$$ProcesaPagoServiciosBasicosRequerimientoImplCopyWith<
          _$ProcesaPagoServiciosBasicosRequerimientoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProcesaPagoServiciosBasicosRespuesta
    _$ProcesaPagoServiciosBasicosRespuestaFromJson(Map<String, dynamic> json) {
  return _ProcesaPagoServiciosBasicosRespuesta.fromJson(json);
}

/// @nodoc
mixin _$ProcesaPagoServiciosBasicosRespuesta {
  List<String> get datosRecibo => throw _privateConstructorUsedError;
  String get fecha => throw _privateConstructorUsedError;
  String get documento => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProcesaPagoServiciosBasicosRespuestaCopyWith<
          ProcesaPagoServiciosBasicosRespuesta>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProcesaPagoServiciosBasicosRespuestaCopyWith<$Res> {
  factory $ProcesaPagoServiciosBasicosRespuestaCopyWith(
          ProcesaPagoServiciosBasicosRespuesta value,
          $Res Function(ProcesaPagoServiciosBasicosRespuesta) then) =
      _$ProcesaPagoServiciosBasicosRespuestaCopyWithImpl<$Res,
          ProcesaPagoServiciosBasicosRespuesta>;
  @useResult
  $Res call({List<String> datosRecibo, String fecha, String documento});
}

/// @nodoc
class _$ProcesaPagoServiciosBasicosRespuestaCopyWithImpl<$Res,
        $Val extends ProcesaPagoServiciosBasicosRespuesta>
    implements $ProcesaPagoServiciosBasicosRespuestaCopyWith<$Res> {
  _$ProcesaPagoServiciosBasicosRespuestaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datosRecibo = null,
    Object? fecha = null,
    Object? documento = null,
  }) {
    return _then(_value.copyWith(
      datosRecibo: null == datosRecibo
          ? _value.datosRecibo
          : datosRecibo // ignore: cast_nullable_to_non_nullable
              as List<String>,
      fecha: null == fecha
          ? _value.fecha
          : fecha // ignore: cast_nullable_to_non_nullable
              as String,
      documento: null == documento
          ? _value.documento
          : documento // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProcesaPagoServiciosBasicosRespuestaImplCopyWith<$Res>
    implements $ProcesaPagoServiciosBasicosRespuestaCopyWith<$Res> {
  factory _$$ProcesaPagoServiciosBasicosRespuestaImplCopyWith(
          _$ProcesaPagoServiciosBasicosRespuestaImpl value,
          $Res Function(_$ProcesaPagoServiciosBasicosRespuestaImpl) then) =
      __$$ProcesaPagoServiciosBasicosRespuestaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> datosRecibo, String fecha, String documento});
}

/// @nodoc
class __$$ProcesaPagoServiciosBasicosRespuestaImplCopyWithImpl<$Res>
    extends _$ProcesaPagoServiciosBasicosRespuestaCopyWithImpl<$Res,
        _$ProcesaPagoServiciosBasicosRespuestaImpl>
    implements _$$ProcesaPagoServiciosBasicosRespuestaImplCopyWith<$Res> {
  __$$ProcesaPagoServiciosBasicosRespuestaImplCopyWithImpl(
      _$ProcesaPagoServiciosBasicosRespuestaImpl _value,
      $Res Function(_$ProcesaPagoServiciosBasicosRespuestaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datosRecibo = null,
    Object? fecha = null,
    Object? documento = null,
  }) {
    return _then(_$ProcesaPagoServiciosBasicosRespuestaImpl(
      datosRecibo: null == datosRecibo
          ? _value._datosRecibo
          : datosRecibo // ignore: cast_nullable_to_non_nullable
              as List<String>,
      fecha: null == fecha
          ? _value.fecha
          : fecha // ignore: cast_nullable_to_non_nullable
              as String,
      documento: null == documento
          ? _value.documento
          : documento // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProcesaPagoServiciosBasicosRespuestaImpl
    implements _ProcesaPagoServiciosBasicosRespuesta {
  _$ProcesaPagoServiciosBasicosRespuestaImpl(
      {final List<String> datosRecibo = const [],
      this.fecha = '',
      this.documento = ''})
      : _datosRecibo = datosRecibo;

  factory _$ProcesaPagoServiciosBasicosRespuestaImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ProcesaPagoServiciosBasicosRespuestaImplFromJson(json);

  final List<String> _datosRecibo;
  @override
  @JsonKey()
  List<String> get datosRecibo {
    if (_datosRecibo is EqualUnmodifiableListView) return _datosRecibo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_datosRecibo);
  }

  @override
  @JsonKey()
  final String fecha;
  @override
  @JsonKey()
  final String documento;

  @override
  String toString() {
    return 'ProcesaPagoServiciosBasicosRespuesta(datosRecibo: $datosRecibo, fecha: $fecha, documento: $documento)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProcesaPagoServiciosBasicosRespuestaImpl &&
            const DeepCollectionEquality()
                .equals(other._datosRecibo, _datosRecibo) &&
            (identical(other.fecha, fecha) || other.fecha == fecha) &&
            (identical(other.documento, documento) ||
                other.documento == documento));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_datosRecibo), fecha, documento);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProcesaPagoServiciosBasicosRespuestaImplCopyWith<
          _$ProcesaPagoServiciosBasicosRespuestaImpl>
      get copyWith => __$$ProcesaPagoServiciosBasicosRespuestaImplCopyWithImpl<
          _$ProcesaPagoServiciosBasicosRespuestaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProcesaPagoServiciosBasicosRespuestaImplToJson(
      this,
    );
  }
}

abstract class _ProcesaPagoServiciosBasicosRespuesta
    implements ProcesaPagoServiciosBasicosRespuesta {
  factory _ProcesaPagoServiciosBasicosRespuesta(
      {final List<String> datosRecibo,
      final String fecha,
      final String documento}) = _$ProcesaPagoServiciosBasicosRespuestaImpl;

  factory _ProcesaPagoServiciosBasicosRespuesta.fromJson(
          Map<String, dynamic> json) =
      _$ProcesaPagoServiciosBasicosRespuestaImpl.fromJson;

  @override
  List<String> get datosRecibo;
  @override
  String get fecha;
  @override
  String get documento;
  @override
  @JsonKey(ignore: true)
  _$$ProcesaPagoServiciosBasicosRespuestaImplCopyWith<
          _$ProcesaPagoServiciosBasicosRespuestaImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultaRequisitosTransferenciasRespuesta
    _$ConsultaRequisitosTransferenciasRespuestaFromJson(
        Map<String, dynamic> json) {
  return _ConsultaRequisitosTransferenciasRespuesta.fromJson(json);
}

/// @nodoc
mixin _$ConsultaRequisitosTransferenciasRespuesta {
  double get comision => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConsultaRequisitosTransferenciasRespuestaCopyWith<
          ConsultaRequisitosTransferenciasRespuesta>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultaRequisitosTransferenciasRespuestaCopyWith<$Res> {
  factory $ConsultaRequisitosTransferenciasRespuestaCopyWith(
          ConsultaRequisitosTransferenciasRespuesta value,
          $Res Function(ConsultaRequisitosTransferenciasRespuesta) then) =
      _$ConsultaRequisitosTransferenciasRespuestaCopyWithImpl<$Res,
          ConsultaRequisitosTransferenciasRespuesta>;
  @useResult
  $Res call({double comision});
}

/// @nodoc
class _$ConsultaRequisitosTransferenciasRespuestaCopyWithImpl<$Res,
        $Val extends ConsultaRequisitosTransferenciasRespuesta>
    implements $ConsultaRequisitosTransferenciasRespuestaCopyWith<$Res> {
  _$ConsultaRequisitosTransferenciasRespuestaCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comision = null,
  }) {
    return _then(_value.copyWith(
      comision: null == comision
          ? _value.comision
          : comision // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConsultaRequisitosTransferenciasRespuestaImplCopyWith<$Res>
    implements $ConsultaRequisitosTransferenciasRespuestaCopyWith<$Res> {
  factory _$$ConsultaRequisitosTransferenciasRespuestaImplCopyWith(
          _$ConsultaRequisitosTransferenciasRespuestaImpl value,
          $Res Function(_$ConsultaRequisitosTransferenciasRespuestaImpl) then) =
      __$$ConsultaRequisitosTransferenciasRespuestaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double comision});
}

/// @nodoc
class __$$ConsultaRequisitosTransferenciasRespuestaImplCopyWithImpl<$Res>
    extends _$ConsultaRequisitosTransferenciasRespuestaCopyWithImpl<$Res,
        _$ConsultaRequisitosTransferenciasRespuestaImpl>
    implements _$$ConsultaRequisitosTransferenciasRespuestaImplCopyWith<$Res> {
  __$$ConsultaRequisitosTransferenciasRespuestaImplCopyWithImpl(
      _$ConsultaRequisitosTransferenciasRespuestaImpl _value,
      $Res Function(_$ConsultaRequisitosTransferenciasRespuestaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comision = null,
  }) {
    return _then(_$ConsultaRequisitosTransferenciasRespuestaImpl(
      comision: null == comision
          ? _value.comision
          : comision // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultaRequisitosTransferenciasRespuestaImpl
    implements _ConsultaRequisitosTransferenciasRespuesta {
  _$ConsultaRequisitosTransferenciasRespuestaImpl({this.comision = 0});

  factory _$ConsultaRequisitosTransferenciasRespuestaImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsultaRequisitosTransferenciasRespuestaImplFromJson(json);

  @override
  @JsonKey()
  final double comision;

  @override
  String toString() {
    return 'ConsultaRequisitosTransferenciasRespuesta(comision: $comision)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultaRequisitosTransferenciasRespuestaImpl &&
            (identical(other.comision, comision) ||
                other.comision == comision));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, comision);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultaRequisitosTransferenciasRespuestaImplCopyWith<
          _$ConsultaRequisitosTransferenciasRespuestaImpl>
      get copyWith =>
          __$$ConsultaRequisitosTransferenciasRespuestaImplCopyWithImpl<
                  _$ConsultaRequisitosTransferenciasRespuestaImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultaRequisitosTransferenciasRespuestaImplToJson(
      this,
    );
  }
}

abstract class _ConsultaRequisitosTransferenciasRespuesta
    implements ConsultaRequisitosTransferenciasRespuesta {
  factory _ConsultaRequisitosTransferenciasRespuesta({final double comision}) =
      _$ConsultaRequisitosTransferenciasRespuestaImpl;

  factory _ConsultaRequisitosTransferenciasRespuesta.fromJson(
          Map<String, dynamic> json) =
      _$ConsultaRequisitosTransferenciasRespuestaImpl.fromJson;

  @override
  double get comision;
  @override
  @JsonKey(ignore: true)
  _$$ConsultaRequisitosTransferenciasRespuestaImplCopyWith<
          _$ConsultaRequisitosTransferenciasRespuestaImpl>
      get copyWith => throw _privateConstructorUsedError;
}
