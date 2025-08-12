// ignore_for_file: invalid_annotation_target

import 'package:bancamovilr/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'models.g.dart';
part 'models.freezed.dart';

@freezed
class BaseRequerimiento with _$BaseRequerimiento {
  factory BaseRequerimiento({@Default(0) int idUsuario}) = _BaseRequerimiento;

  factory BaseRequerimiento.fromJson(Map<String, Object?> json) =>
      _$BaseRequerimientoFromJson(json);
}

@freezed
class RegistroRequerimiento with _$RegistroRequerimiento {
  factory RegistroRequerimiento(
    {@Default('') String identificacion,
    @Default('') String codigoUsuario,
    @Default('') String imagen,
    @Default('') String frase,
    @Default('') String otpIngresado}) = _RegistroRequerimiento;
    
  factory RegistroRequerimiento.fromJson(Map<String, Object?> json) =>
  _$RegistroRequerimientoFromJson(json);
}

@freezed
class BaseRespuesta with _$BaseRespuesta {
  factory BaseRespuesta(
    {@Default('') String mbCodigoUsuario,
    @Default('') String mbPwdUsuario,
    @Default('') String mbMaquina,
    @Default(false) @JsonKey(name: 'sF_ExisteError') bool existeError,
    @Default('') @JsonKey(name: 'sF_Error') String error,
    @Default('') String stackTrace,
    @Default(false) bool sfConCabecera,
    @Default('') String mensajeError}) = _BaseRespuesta;
    
  factory BaseRespuesta.fromJson(Map<String, Object?> json) =>
  _$BaseRespuestaFromJson(json);
}

@freezed
class CambioClaveRequerimiento with _$CambioClaveRequerimiento {
  factory CambioClaveRequerimiento(
    {@Default('') String codigoUsuario,
    @Default('') String pwdAnterior,
    @Default('') String pwdNueva}) = _CambioClaveRequerimiento;
  factory CambioClaveRequerimiento.fromJson(Map<String, Object?> json) =>
  _$CambioClaveRequerimientoFromJson(json);
}

@freezed
class LoginRequerimiento with _$LoginRequerimiento {
  factory LoginRequerimiento(
      {@Default(0) int idUsuario,
      @Default(0) int idRegistro,
      @Default('') String codigoUsuario,
      @Default('') String pwdUsuario,
      @Default('') String otpIngresado,
      @Default(true) bool esMovil}) = _LoginRequerimiento;

  factory LoginRequerimiento.fromJson(Map<String, Object?> json) =>
      _$LoginRequerimientoFromJson(json);
}

@freezed
class LoginRespuesta with _$LoginRespuesta {
  factory LoginRespuesta({
    @Default(0) int id,
    @Default(0) int idRegistro,
    @Default(false) bool realizaCambioUsuario,
    @Default(false) bool realizaCambioClave,
    @Default('') String identificacion,
    @Default('') String nombre,
    @Default(0) int segundosInactividad,
    @Default('') String fechaUltimoAcceso,
    @Default(false) @JsonKey(name: 'sF_ExisteError') bool existError,
    @Default('') @JsonKey(name: 'sF_Error') String error,
    @Default('') String mensajeCambioClave,
  }) = _LoginRespuesta;

  factory LoginRespuesta.fromJson(Map<String, Object?> json) =>
      _$LoginRespuestaFromJson(json);
}

@freezed
class ValidaUsuarioRespuesta with _$ValidaUsuarioRespuesta {
  factory ValidaUsuarioRespuesta(
      {@Default('') String imagen,
      @Default('') String frase}) = _ValidaUsuarioRespuesta;

  factory ValidaUsuarioRespuesta.fromJson(Map<String, Object?> json) =>
      _$ValidaUsuarioRespuestaFromJson(json);
}

@freezed
class UsuarioModel with _$UsuarioModel {
  factory UsuarioModel(
      {@Default(0) int id,
      @Default('') String nombre,
      @Default('') String fechaUltimoAcceso,
      @Default('') String codigoUsuario}) = _UsuarioModel;

  factory UsuarioModel.fromJson(Map<String, Object?> json) =>
      _$UsuarioModelFromJson(json);
}

@freezed
class ValidacionOtpAccesoRespuesta with _$ValidacionOtpAccesoRespuesta {
  factory ValidacionOtpAccesoRespuesta(
      {@Default(false) bool esValido,
      @Default('') String token,
      @Default(60) int segundosInactividad,
      UsuarioModel? usuario}) = _ValidacionOtpAccesoRespuesta;

  factory ValidacionOtpAccesoRespuesta.fromJson(Map<String, Object?> json) =>
      _$ValidacionOtpAccesoRespuestaFromJson(json);
}

@freezed
class LoginState with _$LoginState {
  factory LoginState(
      {@Default(false) bool estaValidado,
      @Default(false) bool obscurecerClave,
      @Default(false) bool modoConfirmacion,
      required bool permiteEditarUsuario,
      ValidaUsuarioRespuesta? informacionValidada,
      LoginRespuesta? loginRespuesta,
      ValidacionOtpAccesoRespuesta? validacionOtpRespuesta}) = _LoginState;

  factory LoginState.fromJson(Map<String, Object?> json) =>
      _$LoginStateFromJson(json);
}

@freezed
class RecuperarContraseniaState with _$RecuperarContraseniaState {
  factory RecuperarContraseniaState(
      {@Default(false) bool estaValidado,
      @Default(false) bool obscurecerClave,
      @Default(false) bool modoConfirmacion,
      required bool permiteEditarUsuario}) = _RecuperarContraseniaState;

  factory RecuperarContraseniaState.fromJson(Map<String, Object?> json) =>
      _$RecuperarContraseniaStateFromJson(json);
}

@freezed
class RecuperarUsuarioState with _$RecuperarUsuarioState {
  factory RecuperarUsuarioState(
      {@Default(false) bool estaValidado,
      @Default(false) bool obscurecerClave,
      @Default(false) bool modoConfirmacion,
      required bool permiteEditarUsuario}) = _RecuperarUsuarioState;

  factory RecuperarUsuarioState.fromJson(Map<String, Object?> json) =>
      _$RecuperarUsuarioStateFromJson(json);
}

@freezed
class ActivaCuentaState with _$ActivaCuentaState {
  factory ActivaCuentaState(
      {@Default(false) bool estaValidado,
      @Default(false) bool obscurecerClave,
      @Default(false) bool modoConfirmacion,
      required bool permiteEditarUsuario}) = _ActivaCuentaState;

  factory ActivaCuentaState.fromJson(Map<String, Object?> json) =>
      _$ActivaCuentaStateFromJson(json);
}

@freezed
class CambiarContraseniaState with _$CambiarContraseniaState {
  factory CambiarContraseniaState(
  {@Default(false) bool modoConfirmacion,
  @Default(false) bool obscurecerClave,
    required bool permiteEditarUsuario,}) = _CambiarContraseniaState;
    factory CambiarContraseniaState.fromJson(Map<String, Object?> json) =>
      _$CambiarContraseniaStateFromJson(json);
}

@freezed
class CambiarContraseniaLoginState with _$CambiarContraseniaLoginState {
  factory CambiarContraseniaLoginState(
  {@Default(false) bool modoConfirmacion,
  @Default(false) bool obscurecerClave,
    required bool permiteEditarUsuario,}) = _CambiarContraseniaLoginState;
    factory CambiarContraseniaLoginState.fromJson(Map<String, Object?> json) =>
      _$CambiarContraseniaLoginStateFromJson(json);
}

@freezed
class PersonaModel with _$PersonaModel {
  factory PersonaModel({
    @Default('') String identificacion,
    @Default('') String nombre,
    @Default('') String estadoCivil,
    @Default('') String direccion,
    @Default('') String telefono,
    DateTime? fechaNacimiento,
    @Default('') String email,
  }) = _PersonaModel;

  factory PersonaModel.fromJson(Map<String, Object?> json) =>
      _$PersonaModelFromJson(json);
}

@freezed
class PosicionConsolidadaRespuesta with _$PosicionConsolidadaRespuesta {
  factory PosicionConsolidadaRespuesta(
          {@Default([]) List<CuentaModel> cuentas,
          @Default([]) List<InversionModel> inversiones,
          @Default([]) List<PrestamoModel> prestamos,
          PersonaModel? persona}) =
      _PosicionConsolidadaRespuesta;

  factory PosicionConsolidadaRespuesta.fromJson(Map<String, Object?> json) =>
      _$PosicionConsolidadaRespuestaFromJson(json);
}

@freezed
class CuentaModel with _$CuentaModel {
  factory CuentaModel({
    @Default('') String codigo,
    @Default('') String nombre,
    @Default('') String tipo,
    @Default(0.00) double saldo,
    @Default(0.00) double saldoContable,
    @Default('') String estado,
    @Default('') String oficina,
    @Default(false) bool permiteUsoBancaElectronica,
  }) = _CuentaModel;

  factory CuentaModel.fromJson(Map<String, Object?> json) =>
      _$CuentaModelFromJson(json);
}

@freezed
class InversionModel with _$InversionModel {
  factory InversionModel(
      {@Default('') String codigo,
      @Default('') String nombre,
      @Default('') String tipo,
      @Default(0.00) double monto,
      @Default(0) int plazo,
      DateTime? fechaVencimiento,
      @Default('') String estado,
      @Default(0.00) double totalRecibir,
      @Default('') String oficina}) = _InversionModel;

  factory InversionModel.fromJson(Map<String, Object?> json) =>
      _$InversionModelFromJson(json);
}

@freezed
class PrestamoModel with _$PrestamoModel {
  factory PrestamoModel({
    @Default('') String codigo,
    @Default('') String tipo,
    @Default(0.00) double deudaInicial,
    @Default(0.00) double saldo,
    DateTime? fechaAdjudicacion,
    @Default('') String estado,
    @Default('') String oficina,
    @Default(0.00) double valorParaEstarAlDia,
    @Default(0.00) double valorCuota,
    @Default(0.00) double valorCancelarPrestamo,
    DateTime? fechaProximoPago,
    @Default('') String cuotasCanceladas,
  }) = _PrestamoModel;

  factory PrestamoModel.fromJson(Map<String, Object?> json) =>
      _$PrestamoModelFromJson(json);
}



@freezed
class PosicionConsolidadaState with _$PosicionConsolidadaState {
  const factory PosicionConsolidadaState({
    @Default(true) bool isLoading,
    PosicionConsolidadaRespuesta? posicionConsolidada,
    String? errorMessage,
  }) = _PosicionConsolidadaState;

  factory PosicionConsolidadaState.fromJson(Map<String, Object?> json) =>
      _$PosicionConsolidadaStateFromJson(json);
}

@freezed
class CuentaDetalleState with _$CuentaDetalleState {
  factory CuentaDetalleState(
          {CuentaModel? cuenta,
          ConsultaMovimientosCuentaRespuesta? respuestaMovimientos}) =
      _CuentaDetalleState;

  factory CuentaDetalleState.fromJson(Map<String, Object?> json) =>
      _$CuentaDetalleStateFromJson(json);
}

@freezed
class ConsultaMovimientosCuentaRequerimiento
    with _$ConsultaMovimientosCuentaRequerimiento {
  factory ConsultaMovimientosCuentaRequerimiento(
      {@Default(0) int idUsuario,
      @Default('') String codigoCuenta,
      @Default(0) int numeroRegistros,
      DateTime? fechaDesde,
      DateTime? fechaHasta}) = _ConsultaMovimientosCuentaRequerimiento;

  factory ConsultaMovimientosCuentaRequerimiento.fromJson(
          Map<String, Object?> json) =>
      _$ConsultaMovimientosCuentaRequerimientoFromJson(json);
}

@freezed
class ConsultaMovimientosCuentaRespuesta
    with _$ConsultaMovimientosCuentaRespuesta {
  factory ConsultaMovimientosCuentaRespuesta(
          {@Default([]) List<MovimientoModel> movimientos}) =
      _ConsultaMovimientosCuentaRespuesta;

  factory ConsultaMovimientosCuentaRespuesta.fromJson(
          Map<String, Object?> json) =>
      _$ConsultaMovimientosCuentaRespuestaFromJson(json);
}

@freezed
class MovimientoModel with _$MovimientoModel {
  factory MovimientoModel(
      {@Default(0) int id,
      DateTime? fecha,
      @Default('') String transaccion,
      @Default('') String cheque,
      @Default(0.00) double deposito,
      @Default(0.00) double retiro,
      @Default(0.00) double saldo,
      @Default('') String oficina,
      @Default('') String documento}) = _MovimientoModel;

  factory MovimientoModel.fromJson(Map<String, Object?> json) =>
      _$MovimientoModelFromJson(json);
}

@freezed
class ConsultaMovimientosInversionRequerimiento
    with _$ConsultaMovimientosInversionRequerimiento {
  factory ConsultaMovimientosInversionRequerimiento(
          {@Default('') String codigoCuenta,
           @Default(0) int idUsuario,
           @Default(0) int numeroRegistros,}) =
      _ConsultaMovimientosInversionRequerimiento;

  factory ConsultaMovimientosInversionRequerimiento.fromJson(
          Map<String, Object?> json) =>
      _$ConsultaMovimientosInversionRequerimientoFromJson(json);
}

@freezed
class ConsultaMovimientosPrestamoRespuesta
    with _$ConsultaMovimientosPrestamoRespuesta {
  factory ConsultaMovimientosPrestamoRespuesta(
          {@Default([]) List<MovimientoPrestamoModel> listaPrestamoMovimiento}) =
      _ConsultaMovimientosPrestamoRespuesta;

  factory ConsultaMovimientosPrestamoRespuesta.fromJson(
          Map<String, Object?> json) =>
      _$ConsultaMovimientosPrestamoRespuestaFromJson(json);
}

@freezed
class MovimientoPrestamoModel with _$MovimientoPrestamoModel {
  factory MovimientoPrestamoModel({
    DateTime? fechaProceso,
    DateTime? fechaSistema,
    @Default('') String documento,
    @Default('') String transaccion,
    @Default(0.00) double valor, 
    @Default(0.00) double saldo,   
    @Default('') String tipo,
    @Default('') String agencia,
    @Default('') String usuario,
    @Default([]) List<RubroMovimientoPrestamoModel> listaRubroMovimiento, 
  }) = _MovimientoPrestamoModel;

  factory MovimientoPrestamoModel.fromJson(Map<String, Object?> json) =>
      _$MovimientoPrestamoModelFromJson(json);
}

@freezed
class RubroMovimientoPrestamoModel with _$RubroMovimientoPrestamoModel {
  factory RubroMovimientoPrestamoModel({
    @Default(0) int indice,
    @Default('') String documento,
    @Default(0) int cuota,
    @Default('') String rubro,
    @Default(0.00) double valor, 
  }) = _RubroMovimientoPrestamoModel;

  factory RubroMovimientoPrestamoModel.fromJson(Map<String, Object?> json) =>
      _$RubroMovimientoPrestamoModelFromJson(json);
}

@freezed
class ConsultaMovimientosInversionRespuesta
    with _$ConsultaMovimientosInversionRespuesta {
  factory ConsultaMovimientosInversionRespuesta(
          {@Default([]) List<MovimientoInversionModel> movimientos}) =
      _ConsultaMovimientosInversionRespuesta;

  factory ConsultaMovimientosInversionRespuesta.fromJson(
          Map<String, Object?> json) =>
      _$ConsultaMovimientosInversionRespuestaFromJson(json);
}

@freezed
class MovimientoInversionModel with _$MovimientoInversionModel {
  factory MovimientoInversionModel(
      {DateTime? fecha,
      @Default('') String transaccion,
      @Default(0.00) double valor,
      @Default(0.00) double saldo,
      @Default('') String oficina,
      @Default('') String documento}) = _MovimientoInversionModel;

  factory MovimientoInversionModel.fromJson(Map<String, Object?> json) =>
      _$MovimientoInversionModelFromJson(json);
}

@freezed
class ConsultaDetallePrestamoRequerimiento
    with _$ConsultaDetallePrestamoRequerimiento {
  factory ConsultaDetallePrestamoRequerimiento(
      {@Default('') String codigoPrestamo,
      @Default(0) int idUsuario,
      DateTime? fechaInicio,
      DateTime? fechaFin,
      @Default(0) int numeroRegistros}) = _ConsultaDetallePrestamoRequerimiento;

  factory ConsultaDetallePrestamoRequerimiento.fromJson(
          Map<String, Object?> json) =>
      _$ConsultaDetallePrestamoRequerimientoFromJson(json);
}

@freezed
class ConsultaDetalePrestamoRespuesta with _$ConsultaDetalePrestamoRespuesta {
  factory ConsultaDetalePrestamoRespuesta(
          {InformacionPrestamo? informacionPrestamo,
          @Default([]) List<DetallePrestamo> detalles}) =
      _ConsultaDetalePrestamoRespuesta;

  factory ConsultaDetalePrestamoRespuesta.fromJson(Map<String, Object?> json) =>
      _$ConsultaDetalePrestamoRespuestaFromJson(json);
}

@freezed
class InformacionPrestamo with _$InformacionPrestamo {
  factory InformacionPrestamo(
      {@Default(0.00) double deudaInicial,
      @Default(0.00) double saldo,
      @Default(0.00) double valorDia,
      @Default(0.00) double valorCuota,
      @Default(0.00) double valorHastaCuota,
      @Default(0.00) double valorCancelarPrestamo,
      DateTime? fechaAdjudicacion,
      @Default(0) int cuotasVencidas}) = _InformacionPrestamo;

  factory InformacionPrestamo.fromJson(Map<String, Object?> json) =>
      _$InformacionPrestamoFromJson(json);
}

@freezed
class DetallePrestamo with _$DetallePrestamo {
  factory DetallePrestamo(
      {DateTime? fechaVencimiento,
      @Default(0) int numeroCuota,
      @Default(0.00) double saldoAdeudado,
      @Default(0.00) double capital,
      @Default(0.00) double interes,
      @Default(0.00) double mora,
      @Default(0.00) double extrajudicial,
      @Default(0.00) double judicial,
      @Default(0.00) double otros,
      @Default(0.00) double total,
      @Default('') String fechaPago,
      @Default(0.00) double diasMora,
      @Default('') String estado}) = _DetallePrestamo;

  factory DetallePrestamo.fromJson(Map<String, Object?> json) =>
      _$DetallePrestamoFromJson(json);
}

@freezed
class ConsultaBeneficiarioRequerimiento
    with _$ConsultaBeneficiarioRequerimiento {
  factory ConsultaBeneficiarioRequerimiento(
      {@Default('') String numeroCuenta}) = _ConsultaBeneficiarioRequerimiento;

  factory ConsultaBeneficiarioRequerimiento.fromJson(
          Map<String, Object?> json) =>
      _$ConsultaBeneficiarioRequerimientoFromJson(json);
}

@freezed
class BeneficiarioModel with _$BeneficiarioModel {
  factory BeneficiarioModel(
      {@Default(0) int id,
      @Default(0) int idUsuario,
      @Default('') String codigoTipoId,
      @Default('') String identificacion,
      @Default('') String nombre,
      @Default('') String apellido,
      @Default('') String codigoTipoInstitucion,
      @Default('') String tipoInstitucion,
      @Default(0) int idInstitucion,
      @Default('') String institucion,
      @Default('') String codigoTipoCuenta,
      @Default('') String tipoCuenta,
      @Default('') String numeroCuenta,
      @Default(false) bool esInterno,
      @Default('') String email,
      @Default(false) bool activo}) = _BeneficiarioModel;

  factory BeneficiarioModel.fromJson(Map<String, Object?> json) =>
      _$BeneficiarioModelFromJson(json);
}

@freezed
class ConsultaBeneficiariosRespuesta with _$ConsultaBeneficiariosRespuesta {
  factory ConsultaBeneficiariosRespuesta(
          {@Default([]) List<BeneficiarioModel> beneficiarioLista}) =
      _ConsultaBeneficiariosRespuesta;

  factory ConsultaBeneficiariosRespuesta.fromJson(Map<String, Object?> json) =>
      _$ConsultaBeneficiariosRespuestaFromJson(json);
}

@freezed
class ConsultaRequisitosBeneficiarioRespuesta
    with _$ConsultaRequisitosBeneficiarioRespuesta {
  factory ConsultaRequisitosBeneficiarioRespuesta(
      {@Default([]) List<TipoInstitucionModel> tiposIntitucion,
      @Default([]) List<InstitucionFinancieraModel> institucionesFinancieras,
      @Default([]) List<TipoCuentaModel> tiposCuenta,
      @Default([])
      List<TipoIdentificacionModel>
          tiposIdentificacion}) = _ConsultaRequisitosBeneficiarioRespuesta;

  factory ConsultaRequisitosBeneficiarioRespuesta.fromJson(
          Map<String, Object?> json) =>
      _$ConsultaRequisitosBeneficiarioRespuestaFromJson(json);
}

@freezed
class TipoInstitucionModel with _$TipoInstitucionModel {
  factory TipoInstitucionModel(
      {@Default('') String codigo,
      @Default('') String nombre}) = _TipoInstitucionModel;

  factory TipoInstitucionModel.fromJson(Map<String, Object?> json) =>
      _$TipoInstitucionModelFromJson(json);
}

@freezed
class InstitucionFinancieraModel with _$InstitucionFinancieraModel {
  factory InstitucionFinancieraModel(
      {@Default(0) int id,
      @Default('') String codigoTipo,
      @Default('') String nombre}) = _InstitucionFinancieraModel;

  factory InstitucionFinancieraModel.fromJson(Map<String, Object?> json) =>
      _$InstitucionFinancieraModelFromJson(json);
}

@freezed
class TipoCuentaModel with _$TipoCuentaModel {
  factory TipoCuentaModel(
      {@Default('') String codigo,
      @Default('') String nombre}) = _TipoCuentaModel;

  factory TipoCuentaModel.fromJson(Map<String, Object?> json) =>
      _$TipoCuentaModelFromJson(json);
}

@freezed
class TipoIdentificacionModel with _$TipoIdentificacionModel {
  factory TipoIdentificacionModel(
      {@Default('') String codigo,
      @Default('') String nombre}) = _TipoIdentificacionModel;

  factory TipoIdentificacionModel.fromJson(Map<String, Object?> json) =>
      _$TipoIdentificacionModelFromJson(json);
}

@freezed
class MantenimientoBeneficiarioRequerimiento
    with _$MantenimientoBeneficiarioRequerimiento {
  factory MantenimientoBeneficiarioRequerimiento(
          {BeneficiarioModel? beneficiario, @Default('') String otpIngresado}) =
      _MantenimientoBeneficiarioRequerimiento;

  factory MantenimientoBeneficiarioRequerimiento.fromJson(
          Map<String, Object?> json) =>
      _$MantenimientoBeneficiarioRequerimientoFromJson(json);
}

@freezed
class MantenimientoBeneficiarioRespuesta
    with _$MantenimientoBeneficiarioRespuesta {
  factory MantenimientoBeneficiarioRespuesta(
          {@Default('') String nombrePersona}) =
      _MantenimientoBeneficiarioRespuesta;

  factory MantenimientoBeneficiarioRespuesta.fromJson(
          Map<String, Object?> json) =>
      _$MantenimientoBeneficiarioRespuestaFromJson(json);
}

@freezed
class ValidaTransferenciaYGeneraOtpRequerimiento
    with _$ValidaTransferenciaYGeneraOtpRequerimiento {
  factory ValidaTransferenciaYGeneraOtpRequerimiento(
          {@Default(0) int idUsuario,
          @Default('') String cuentaOrigen,
          @Default(0) int idBeneficiario,
          @Default('') String codigoConcepto,
          @Default('') String cuentaDestino,
          @Default(0.00) double monto,
          @Default('') String descripcion,
          @Default('') String emailEnvio,
          @Default('') String celularEnvio,
          @Default(false) bool esDirecta}) =
      _ValidaTransferenciaYGeneraOtpRequerimiento;

  factory ValidaTransferenciaYGeneraOtpRequerimiento.fromJson(
          Map<String, Object?> json) =>
      _$ValidaTransferenciaYGeneraOtpRequerimientoFromJson(json);
}

@freezed
class ValidaTransferenciaYGeneraOtpRespuesta
    with _$ValidaTransferenciaYGeneraOtpRespuesta {
  factory ValidaTransferenciaYGeneraOtpRespuesta(
      {@Default('') String otp,
      DateTime? expira}) = _ValidaTransferenciaYGeneraOtpRespuesta;

  factory ValidaTransferenciaYGeneraOtpRespuesta.fromJson(
          Map<String, Object?> json) =>
      _$ValidaTransferenciaYGeneraOtpRespuestaFromJson(json);
}

@freezed
class ProcesaTransferenciaDirectaRequerimiento
    with _$ProcesaTransferenciaDirectaRequerimiento {
  factory ProcesaTransferenciaDirectaRequerimiento(
          {@Default(0) int idUsuario,
          @Default('') String codigoTxEmpresa,
          @Default('') String cuentaOrigen,
          @Default(0) int idBeneficiario,
          @Default('') String codigoConcepto,
          @Default('') String cuentaDestino,
          @Default(0.00) double monto,
          @Default('') String descripcion,
          @Default('') String emailEnvio,
          @Default('') String celularEnvio,
          @Default('') String otpIngresado,
          @Default('') String otpGenerado}) =
      _ProcesaTransferenciaDirectaRequerimiento;

  factory ProcesaTransferenciaDirectaRequerimiento.fromJson(
          Map<String, Object?> json) =>
      _$ProcesaTransferenciaDirectaRequerimientoFromJson(json);
}

@freezed
class ProcesaTransfernciaDirectaRespuesta
    with _$ProcesaTransfernciaDirectaRespuesta {
  factory ProcesaTransfernciaDirectaRespuesta(
      {@Default('') String documento,
      @Default('') String fecha}) = _ProcesaTransfernciaDirectaRespuesta;

  factory ProcesaTransfernciaDirectaRespuesta.fromJson(
          Map<String, Object?> json) =>
      _$ProcesaTransfernciaDirectaRespuestaFromJson(json);
}

@freezed
class ConsultaRequisitosTransferenciaRespuesta
    with _$ConsultaRequisitosTransferenciaRespuesta {
  factory ConsultaRequisitosTransferenciaRespuesta(
          {@Default(0.00) double comision,
          @Default([])
          List<ConceptoTransferenciaModel> conceptosTransferencia}) =
      _ConsultaRequisitosTransferenciaRespuesta;

  factory ConsultaRequisitosTransferenciaRespuesta.fromJson(
          Map<String, Object?> json) =>
      _$ConsultaRequisitosTransferenciaRespuestaFromJson(json);
}

@freezed
class ConceptoTransferenciaModel with _$ConceptoTransferenciaModel {
  factory ConceptoTransferenciaModel(
      {@Default('') String codigo,
      @Default('') String nombre}) = _ConceptoTransferenciaModel;

  factory ConceptoTransferenciaModel.fromJson(Map<String, Object?> json) =>
      _$ConceptoTransferenciaModelFromJson(json);
}

@freezed
class ProcesaAbonoPrestamoRequerimiento
    with _$ProcesaAbonoPrestamoRequerimiento {
  factory ProcesaAbonoPrestamoRequerimiento(
      {@Default(0) int idUsuario,
      @Default('') String codigoPrestamo,
      @Default('') String cuentaDebito,
      @Default(0.00) double monto,
      @Default('') String emailEnvio,
      @Default('') String concepto,
      @Default('') String otpIngresado,
      @Default('') String otpGenerado}) = _ProcesaAbonoPrestamoRequerimiento;

  factory ProcesaAbonoPrestamoRequerimiento.fromJson(
          Map<String, Object?> json) =>
      _$ProcesaAbonoPrestamoRequerimientoFromJson(json);
}

@freezed
class ProcesaAbonoPrestamoRespuesta with _$ProcesaAbonoPrestamoRespuesta {
  factory ProcesaAbonoPrestamoRespuesta(
      {@Default('') String documento,
      @Default('') String fecha}) = _ProcesaAbonoPrestamoRespuesta;

  factory ProcesaAbonoPrestamoRespuesta.fromJson(Map<String, Object?> json) =>
      _$ProcesaAbonoPrestamoRespuestaFromJson(json);
}

@freezed
class DetalleInversionModel with _$DetalleInversionModel {
  factory DetalleInversionModel(
      {DateTime? fecha,
      @Default(0.00) double retencion,
      @Default(0.00) double valor,
      @Default('') String item,
      @Default('') String estado}) = _DetalleInversionModel;

  factory DetalleInversionModel.fromJson(Map<String, Object?> json) =>
      _$DetalleInversionModelFromJson(json);
}

@freezed
class ConsultaDetalleInversionRequerimiento
    with _$ConsultaDetalleInversionRequerimiento {
  factory ConsultaDetalleInversionRequerimiento(
      {@Default('') String codigoInversion,
      @Default(0) int idUsuario}) = _ConsultaDetalleInversionRequerimiento;

  factory ConsultaDetalleInversionRequerimiento.fromJson(
          Map<String, Object?> json) =>
      _$ConsultaDetalleInversionRequerimientoFromJson(json);
}

@freezed
class ConsultaDetalleInversionRespuesta
    with _$ConsultaDetalleInversionRespuesta {
  factory ConsultaDetalleInversionRespuesta(
          {@Default([]) List<DetalleInversionModel> detalles}) =
      _ConsultaDetalleInversionRespuesta;

  factory ConsultaDetalleInversionRespuesta.fromJson(
          Map<String, Object?> json) =>
      _$ConsultaDetalleInversionRespuestaFromJson(json);
}

@freezed
class DepositoDetalleState with _$DepositoDetalleState {
  factory DepositoDetalleState(
          {InversionModel? deposito,
          ConsultaDetalleInversionRespuesta? respuestaDetalles,
          ConsultaMovimientosInversionRespuesta? respuestaMovimientos}) =
      _DepositoDetalleState;

  factory DepositoDetalleState.fromJson(Map<String, Object?> json) =>
      _$DepositoDetalleStateFromJson(json);
}

@freezed
class PrestamoDetalleState with _$PrestamoDetalleState {
  factory PrestamoDetalleState(
          {PrestamoModel? prestamo,
          ConsultaDetalePrestamoRespuesta? respuestaDetalles,
          ConsultaMovimientosInversionRespuesta? respuestaMovimientos}) =
      _PrestamoDetalleState;

  factory PrestamoDetalleState.fromJson(Map<String, Object?> json) =>
      _$PrestamoDetalleStateFromJson(json);
}

@freezed
class TransferenciaState with _$TransferenciaState {
  factory TransferenciaState(
          {CuentaModel? cuenta,
          BeneficiarioModel? beneficiario,
          CuentaModel? cuentaDestino,
          @Default(false) bool esValidacion,
          @Default(false) bool esComprobante,
          ConsultaRequisitosTransferenciasRespuesta? requisitosTransferencia,
          ProcesaTransfernciaDirectaRespuesta? respuestaProceso,
          ConceptoModel? concepto}) =
      _TransferenciaState;

  factory TransferenciaState.fromJson(Map<String, Object?> json) =>
      _$TransferenciaStateFromJson(json);
}

enum TipoTransferencia { misCuentas, directa, interbancaria }

@freezed
class SeleccionBeneficiarioState with _$SeleccionBeneficiarioState {
  factory SeleccionBeneficiarioState(
          {@Default([]) List<BeneficiarioModel> beneficiarios}) =
      _SeleccionBeneficiarioState;

  factory SeleccionBeneficiarioState.fromJson(Map<String, Object?> json) =>
      _$SeleccionBeneficiarioStateFromJson(json);
}

@freezed
class EtiquetaValorRecibo with _$EtiquetaValorRecibo {
  factory EtiquetaValorRecibo(
      {@Default('') String etiqueta,
      @Default('') String valor,
      @JsonKey(ignore: true) IconData? icon}) = _EtiquetaValorRecibo;

  factory EtiquetaValorRecibo.fromJson(Map<String, Object?> json) =>
      _$EtiquetaValorReciboFromJson(json);
}

@freezed
class AbonoState with _$AbonoState {
  factory AbonoState(
      {CuentaModel? cuenta,
      PrestamoModel? prestamo,
      @Default(false) bool esValidacion,
      @Default(false) bool esComprobante,
      ProcesaAbonoPrestamoRespuesta? respuestaProceso}) = _AbonoState;

  factory AbonoState.fromJson(Map<String, Object?> json) =>
      _$AbonoStateFromJson(json);
}

@freezed
class BeneficiarioState with _$BeneficiarioState {
  factory BeneficiarioState(
          {@Default([]) List<BeneficiarioModel> beneficiarios}) =
      _BeneficiarioState;

  factory BeneficiarioState.fromJson(Map<String, Object?> json) =>
      _$BeneficiarioStateFromJson(json);
}

@freezed
class BeneficiarioEdicionState with _$BeneficiarioEdicionState {
  factory BeneficiarioEdicionState(
      {@Default(0) int id,
      @Default(false) bool esInterno,
      BeneficiarioModel? beneficiario,
      ConsultaRequisitosBeneficiarioRespuesta? requisitosRespuesta,
      @Default(false) bool esValidacion}) = _BeneficiarioEdicionState;

  factory BeneficiarioEdicionState.fromJson(Map<String, Object?> json) =>
      _$BeneficiarioEdicionStateFromJson(json);
}

@freezed
class ConsultaAgenciaCajeroRespuesta with _$ConsultaAgenciaCajeroRespuesta {
  factory ConsultaAgenciaCajeroRespuesta(
          {@Default([]) List<AgenciaCajeroItem> agenciaCajeroLista}) =
      _ConsultaAgenciaCajeroRespuesta;

  factory ConsultaAgenciaCajeroRespuesta.fromJson(Map<String, Object?> json) =>
      _$ConsultaAgenciaCajeroRespuestaFromJson(json);
}

@freezed
class AgenciaCajeroItem with _$AgenciaCajeroItem {
  factory AgenciaCajeroItem(
      {@Default('') String nombre,
      @Default('') String descripcion,
      @Default('') String telefono,
      @Default(0.00) double latitud,
      @Default(0.00) double longitud,
      @Default(false) bool esCajero}) = _AgenciaCajeroItem;

  factory AgenciaCajeroItem.fromJson(Map<String, Object?> json) =>
      _$AgenciaCajeroItemFromJson(json);
}

@freezed
class AgenciaState with _$AgenciaState {
  factory AgenciaState(
      {@Default([]) List<AgenciaCajeroItem> agencias,
      AgenciaCajeroItem? agenciaSeleccionada}) = _AgenciaState;

  factory AgenciaState.fromJson(Map<String, Object?> json) =>
      _$AgenciaStateFromJson(json);
}

@freezed
class RegistroPinAccesoRequerimiento with _$RegistroPinAccesoRequerimiento {
  factory RegistroPinAccesoRequerimiento({@Default('') String pinAcceso}) =
      _RegistroPinAccesoRequerimiento;

  factory RegistroPinAccesoRequerimiento.fromJson(Map<String, Object?> json) =>
      _$RegistroPinAccesoRequerimientoFromJson(json);
}

@freezed
class ValidaPinAccesoRequerimiento with _$ValidaPinAccesoRequerimiento {
  factory ValidaPinAccesoRequerimiento(
      {@Default(0) int idRegistro,
      @Default('') String textoOriginal,
      @Default('') String firma}) = _ValidaPinAccesoRequerimiento;

  factory ValidaPinAccesoRequerimiento.fromJson(Map<String, Object?> json) =>
      _$ValidaPinAccesoRequerimientoFromJson(json);
}

@freezed
class ConceptoModel with _$ConceptoModel {
  factory ConceptoModel(
     {@Default('') String codigo, 
     @Default('') String nombre}) = _ConceptoModel;

  factory ConceptoModel.fromJson(Map<String, Object?> json) =>
     _$ConceptoModelFromJson(json);
}

@freezed
class SeleccionConceptoState with _$SeleccionConceptoState{
  factory SeleccionConceptoState(
     {@Default([]) List<ConceptoModel> conceptos,
      ConceptoModel? concepto
     }) = _SeleccionConceptoState;

  factory SeleccionConceptoState.fromJson(Map<String, Object?> json) =>
     _$SeleccionConceptoStateFromJson(json);
}

@freezed
class ConsultaConceptosRespuesta with _$ConsultaConceptosRespuesta {
  factory ConsultaConceptosRespuesta(
     {@Default([]) List<ConceptoModel> conceptoLista}) = _ConsultaConceptosRespuesta;

  factory ConsultaConceptosRespuesta.fromJson(Map<String, Object?> json) =>
     _$ConsultaConceptosRespuestaFromJson(json);
}


@freezed
class ComunItemModel with _$ComunItemModel {
  factory ComunItemModel(
     { @Default('') String codigo, @Default('') String nombre}) = _ComunItemModel;

  factory ComunItemModel.fromJson(Map<String, Object?> json) =>
     _$ComunItemModelFromJson(json);
}



@freezed
class PagoDeunaState with _$PagoDeunaState {
  factory PagoDeunaState(
      {CuentaModel? cuenta,
      BeneficiarioModel? beneficiario,
      CuentaModel? cuentaDestino,
      @Default(false) bool esValidacion,
      @Default(false) bool esComprobante,
      @Default(false) bool montoSoloLectura,
      ConsultaCuentaVinculadaQRRespuesta? infoCuentaVinculada,
      ProcesaPagoQRRequerimiento? requerimientoProceso,
      ProcesaPagoQRRespuesta? respuestaProceso}) = _PagoDeunaState;

  factory PagoDeunaState.fromJson(Map<String, Object?> json) =>
      _$PagoDeunaStateFromJson(json);
}

@freezed
class ConsultaCuentaVinculadaQRRequerimiento
    with _$ConsultaCuentaVinculadaQRRequerimiento {
  factory ConsultaCuentaVinculadaQRRequerimiento({required String value}) =
      _ConsultaCuentaVinculadaQRRequerimiento;

  factory ConsultaCuentaVinculadaQRRequerimiento.fromJson(
          Map<String, Object?> json) =>
      _$ConsultaCuentaVinculadaQRRequerimientoFromJson(json);
}

@freezed
class ConsultaCuentaVinculadaQRRespuesta
    with _$ConsultaCuentaVinculadaQRRespuesta {
  const factory ConsultaCuentaVinculadaQRRespuesta({
    required String transactionId,
    required String trackingId,
    required AccountModel account,
    @Default(0.00) double montoDisponible,
  }) = _ConsultaCuentaVinculadaQRRespuesta;

  factory ConsultaCuentaVinculadaQRRespuesta.fromJson(
          Map<String, dynamic> json) =>
      _$ConsultaCuentaVinculadaQRRespuestaFromJson(json);
}

@freezed
class AccountModel with _$AccountModel {
  const factory AccountModel({
    @Default('') String name,
    @Default('') String number,
    @Default('') String maskedNumber,
    @Default('') String documentNumber,
    @Default('') String documentType,
    @Default('') String accountType,
    @Default('') String clientType,
    @Default('') String qrType,
    @Default('') String accountVersion,
    @Default('') String amount,
    @Default('') String currencyCode,
    required MerchantModel merchant,
  }) = _AccountModel;

  const AccountModel._();

  bool get isMerchant => clientType.toLowerCase() == 'merchant';

  factory AccountModel.fromJson(Map<String, dynamic> json) =>
      _$AccountModelFromJson(json);
}

@freezed
class MerchantModel with _$MerchantModel {
  const factory MerchantModel({
    @Default('') String pos,
    @Default('') String branch,
    @Default('') String contact,
    @Default('') String branchName,
  }) = _MerchantModel;

  factory MerchantModel.fromJson(Map<String, dynamic> json) =>
      _$MerchantModelFromJson(json);
}

@freezed
class ProcesaPagoQRRequerimiento with _$ProcesaPagoQRRequerimiento {
  const factory ProcesaPagoQRRequerimiento({
    required String transactionId,
    required double monto,
    required String moneda,
    @Default('') String descripcion,
    required String numeroCuenta,
  }) = _ProcesaPagoQRRequerimiento;

  factory ProcesaPagoQRRequerimiento.fromJson(Map<String, dynamic> json) =>
      _$ProcesaPagoQRRequerimientoFromJson(json);
}

@freezed
class ProcesaPagoQRRespuesta with _$ProcesaPagoQRRespuesta {
  factory ProcesaPagoQRRespuesta(
      {@Default('') String documento,
      @Default('') String fecha}) = _ProcesaPagoQRRespuesta;

  factory ProcesaPagoQRRespuesta.fromJson(Map<String, Object?> json) =>
      _$ProcesaPagoQRRespuestaFromJson(json);
}

@freezed
class ServicioModel with _$ServicioModel {
  factory ServicioModel({
    @Default(0) int id,
    @Default('') String nombre,
    @Default('') String tipo,
    @Default('') String codigo,
    @Default('') String codigoPagoExterno,
    @Default('') String descripcion,
    @Default('') String canal,
    @Default('') String codigoCategoria,
    @Default('') String nombreCategoria,
    @Default('') String etiqueta,
    @Default(false) bool esEspecial,
    @Default(false) bool esFavorito,
    @Default([]) List<AdicionalServicioModel> adicionales,
  }) = _ServicioModel;

  factory ServicioModel.fromJson(Map<String, Object?> json) =>
      _$ServicioModelFromJson(json);
}

@freezed
class AdicionalServicioModel with _$AdicionalServicioModel {
  factory AdicionalServicioModel(
      {@Default('') String etiqueta,
      @Default('') String campo,
      @Default(false) bool esTexto,
      @Default(false) bool esFecha,
      @Default(false) bool esValor,
      @Default(false) bool esBool,
      @Default('') String entrada,
      @Default(false) bool requiereEnviarVacio}) = _AdicionalServicioModel;

  factory AdicionalServicioModel.fromJson(Map<String, Object?> json) =>
      _$AdicionalServicioModelFromJson(json);
}

@freezed
class ProveedorPagoServiciosModel with _$ProveedorPagoServiciosModel {
  factory ProveedorPagoServiciosModel(
      {@Default('') String codigo,
      @Default('') String nombre}) = _ProveedorPagoServiciosModel;

  factory ProveedorPagoServiciosModel.fromJson(Map<String, Object?> json) =>
      _$ProveedorPagoServiciosModelFromJson(json);
}

@freezed
class ConsultaRequisitosPagoServiciosRespuesta
    with _$ConsultaRequisitosPagoServiciosRespuesta {
  factory ConsultaRequisitosPagoServiciosRespuesta({
    @Default([]) List<ProveedorPagoServiciosModel> listaPagoServicio,
    @Default([]) List<ServicioModel> servicios,
  }) = _ConsultaRequisitosPagoServiciosRespuesta;

  factory ConsultaRequisitosPagoServiciosRespuesta.fromJson(
          Map<String, Object?> json) =>
      _$ConsultaRequisitosPagoServiciosRespuestaFromJson(json);
}

@freezed
class PagoServicioState with _$PagoServicioState {
  factory PagoServicioState(
          {ConsultaRequisitosPagoServiciosRespuesta? requisitos,
          ServicioModel? servicioSeleccionado,
          CuentaModel? cuenta,
          @Default(false) bool esIngreso,
          @Default(false) bool esValidacion,
          @Default(false) bool esComprobante,
          @Default([]) List<ServicioModel> servicios,
          ConsultaCamposConsultaPagoServiciosRespuesta? respuestaCamposConsulta,
          ConsultaValoresServiciosBasicosRespuesta? respuestaConsulta,
          ProcesaPagoServiciosBasicosRespuesta? respuestaProceso}) =
      _PagoServicioState;

  factory PagoServicioState.fromJson(Map<String, Object?> json) =>
      _$PagoServicioStateFromJson(json);
}

@freezed
class ConsultaCamposConsultaPagoServiciosRequerimiento
    with _$ConsultaCamposConsultaPagoServiciosRequerimiento {
  factory ConsultaCamposConsultaPagoServiciosRequerimiento(
          {@Default(0) int idProducto}) =
      _ConsultaCamposConsultaPagoServiciosRequerimiento;

  factory ConsultaCamposConsultaPagoServiciosRequerimiento.fromJson(
          Map<String, Object?> json) =>
      _$ConsultaCamposConsultaPagoServiciosRequerimientoFromJson(json);
}

@freezed
class ConsultaCamposConsultaPagoServiciosRespuesta
    with _$ConsultaCamposConsultaPagoServiciosRespuesta {
  factory ConsultaCamposConsultaPagoServiciosRespuesta(
          {CamposConsultaDetalle? camposConsultaDetalle}) =
      _ConsultaCamposConsultaPagoServiciosRespuesta;

  factory ConsultaCamposConsultaPagoServiciosRespuesta.fromJson(
          Map<String, Object?> json) =>
      _$ConsultaCamposConsultaPagoServiciosRespuestaFromJson(json);
}

@freezed
class CamposConsultaDetalle with _$CamposConsultaDetalle {
  factory CamposConsultaDetalle(
          {@Default([]) List<CampoConsulta> camposConsulta}) =
      _CamposConsultaDetalle;

  factory CamposConsultaDetalle.fromJson(Map<String, Object?> json) =>
      _$CamposConsultaDetalleFromJson(json);
}

@freezed
class CampoConsulta with _$CampoConsulta {
  factory CampoConsulta({
    @Default('') String id,
    @Default('') String etiqueta,
    @Default('') String nombre,
    @Default('') String tipoDato,
    @Default('') String valor,
    @Default([]) List<Catalogo> catalogo,
    @Default(false) bool esTexto,
    @Default(false) bool esNumerico,
    @Default(false) bool esFecha,
  }) = _CampoConsulta;

  factory CampoConsulta.fromJson(Map<String, Object?> json) =>
      _$CampoConsultaFromJson(json);
}

@freezed
class Catalogo with _$Catalogo {
  factory Catalogo({
    @Default('') String valor,
    @Default('') String descripcion,
  }) = _Catalogo;

  factory Catalogo.fromJson(Map<String, Object?> json) =>
      _$CatalogoFromJson(json);
}

@freezed
class ConsultaValoresServiciosBasicosRequerimiento
    with _$ConsultaValoresServiciosBasicosRequerimiento {
  factory ConsultaValoresServiciosBasicosRequerimiento(
          {@Default(0) int idProducto,
          @Default('') String referencia,
          CamposConsultaDetalle? camposConsultaDetalle}) =
      _ConsultaValoresServiciosBasicosRequerimiento;

  factory ConsultaValoresServiciosBasicosRequerimiento.fromJson(
          Map<String, Object?> json) =>
      _$ConsultaValoresServiciosBasicosRequerimientoFromJson(json);
}

@freezed
class ConsultaValoresServiciosBasicosRespuesta
    with _$ConsultaValoresServiciosBasicosRespuesta {
  factory ConsultaValoresServiciosBasicosRespuesta(
          {@Default('') String guidConsulta,
          RubrosPagoExternoDetalle? rubrosDetalle}) =
      _ConsultaValoresServiciosBasicosRespuesta;

  factory ConsultaValoresServiciosBasicosRespuesta.fromJson(
          Map<String, Object?> json) =>
      _$ConsultaValoresServiciosBasicosRespuestaFromJson(json);
}

@freezed
class RubrosPagoExternoDetalle with _$RubrosPagoExternoDetalle {
  const factory RubrosPagoExternoDetalle({
    @Default('') String codigoCausal,
    @Default(0) int idAgencia,
    @Default('') String codigoAgenciaProveedor,
    @Default(0) int idProducto,
    @Default('') String idTransaccion,
    @Default('') String identificacion,
    @Default('') String nombre,
    @Default('') String referencia,
    @Default('') String adicionales,
    @Default('') String datosFactura,
    @Default(false) bool permiteAbono,
    @Default(false) bool permitePagoAbierto,
    @Default([]) List<RubroPagoExternoDetalle> listaRubros,
    @Default([]) List<DetalleAdicional> listaDetallesAdicionales,
  }) = _RubrosPagoExternoDetalle;

  factory RubrosPagoExternoDetalle.fromJson(Map<String, dynamic> json) =>
      _$RubrosPagoExternoDetalleFromJson(json);
}

@unfreezed
class RubroPagoExternoDetalle with _$RubroPagoExternoDetalle {
  factory RubroPagoExternoDetalle({
    @Default(0.0) double comision,
    @Default(0.0) double comisionProveedor,
    @Default('') String descripcion,
    @Default('') String idRubro,
    @Default(0) int prioridad,
    @Default(0.0) double valor,
    @Default(0.0) double valorConComision,
    @Default(0.0) double valorPago,
    @Default(false) bool seleccionado,
  }) = _RubroPagoExternoDetalle;

  factory RubroPagoExternoDetalle.fromJson(Map<String, dynamic> json) =>
      _$RubroPagoExternoDetalleFromJson(json);
}

@freezed
class DetalleAdicional with _$DetalleAdicional {
  const factory DetalleAdicional({
    @Default('') String etiqueta,
    @Default('') String valor,
  }) = _DetalleAdicional;

  factory DetalleAdicional.fromJson(Map<String, dynamic> json) =>
      _$DetalleAdicionalFromJson(json);
}

@freezed
class ProcesaPagoServiciosBasicosRequerimiento
    with _$ProcesaPagoServiciosBasicosRequerimiento {
  factory ProcesaPagoServiciosBasicosRequerimiento(
          {@Default(0) int idProducto,
          @Default('') String guidConsulta,
          @Default('') String cuentaDebito,
          @Default('') String otpIngresado,
          @Default('') String otpGenerado,
          @Default('') String emailEnvio,
          @Default('') String concepto,
          RubrosPagoExternoDetalle? rubrosDetalle}) =
      _ProcesaPagoServiciosBasicosRequerimiento;

  factory ProcesaPagoServiciosBasicosRequerimiento.fromJson(
          Map<String, Object?> json) =>
      _$ProcesaPagoServiciosBasicosRequerimientoFromJson(json);
}

@freezed
class ProcesaPagoServiciosBasicosRespuesta
    with _$ProcesaPagoServiciosBasicosRespuesta {
  factory ProcesaPagoServiciosBasicosRespuesta(
      {@Default([]) List<String> datosRecibo,
      @Default('') String fecha,
      @Default('') String documento}) = _ProcesaPagoServiciosBasicosRespuesta;

  factory ProcesaPagoServiciosBasicosRespuesta.fromJson(
          Map<String, Object?> json) =>
      _$ProcesaPagoServiciosBasicosRespuestaFromJson(json);
}

@freezed
class ConsultaRequisitosTransferenciasRespuesta
    with _$ConsultaRequisitosTransferenciasRespuesta {
  factory ConsultaRequisitosTransferenciasRespuesta(
          {@Default(0) double comision}) =
      _ConsultaRequisitosTransferenciasRespuesta;

  factory ConsultaRequisitosTransferenciasRespuesta.fromJson(
          Map<String, Object?> json) =>
      _$ConsultaRequisitosTransferenciasRespuestaFromJson(json);
}
