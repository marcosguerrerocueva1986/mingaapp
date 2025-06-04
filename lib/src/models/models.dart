// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.g.dart';
part 'models.freezed.dart';

@freezed
class BaseRequerimiento with _$BaseRequerimiento {
  factory BaseRequerimiento(
     {@Default(0) int idUsuario}) = _BaseRequerimiento;

  factory BaseRequerimiento.fromJson(Map<String, Object?> json) =>
     _$BaseRequerimientoFromJson(json);
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
class PosicionConsolidadaRespuesta with _$PosicionConsolidadaRespuesta {
  factory PosicionConsolidadaRespuesta(
      {@Default([]) List<CuentaModel> cuentas, @Default([]) List<InversionModel> inversiones, @Default([]) List<PrestamoModel> prestamos}) = _PosicionConsolidadaRespuesta;

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
  }) = _PrestamoModel;

  factory PrestamoModel.fromJson(Map<String, Object?> json) =>
      _$PrestamoModelFromJson(json);
}

@freezed
class PosicionConsolidadaState with _$PosicionConsolidadaState {
  factory PosicionConsolidadaState(
     {PosicionConsolidadaRespuesta? posicionConsolidada}) = _PosicionConsolidadaState;

  factory PosicionConsolidadaState.fromJson(Map<String, Object?> json) =>
     _$PosicionConsolidadaStateFromJson(json);
}

@freezed
class CuentaDetalleState with _$CuentaDetalleState {
  factory CuentaDetalleState({
    CuentaModel? cuenta, ConsultaMovimientosCuentaRespuesta? respuestaMovimientos
  }) = _CuentaDetalleState;

  factory CuentaDetalleState.fromJson(Map<String, Object?> json) =>
     _$CuentaDetalleStateFromJson(json);
}

@freezed
class ConsultaMovimientosCuentaRequerimiento with _$ConsultaMovimientosCuentaRequerimiento {
  factory ConsultaMovimientosCuentaRequerimiento(
     {@Default(0) int idUsuario, @Default('') String codigoCuenta, @Default(0) int numeroRegistros, DateTime? fechaDesde, DateTime? fechaHasta}) = _ConsultaMovimientosCuentaRequerimiento;

  factory ConsultaMovimientosCuentaRequerimiento.fromJson(Map<String, Object?> json) =>
     _$ConsultaMovimientosCuentaRequerimientoFromJson(json);
}

@freezed
class ConsultaMovimientosCuentaRespuesta with _$ConsultaMovimientosCuentaRespuesta {
  factory ConsultaMovimientosCuentaRespuesta(
     {@Default([]) List<MovimientoCuentaModel> movimientos}) = _ConsultaMovimientosCuentaRespuesta;

  factory ConsultaMovimientosCuentaRespuesta.fromJson(Map<String, Object?> json) =>
     _$ConsultaMovimientosCuentaRespuestaFromJson(json);
}

@freezed
class MovimientoCuentaModel with _$MovimientoCuentaModel {
  factory MovimientoCuentaModel(
     {DateTime? fecha, @Default('') String transaccion, @Default('') String cheque, @Default(0.00) double deposito, @Default(0.00) double retiro, @Default(0.00) double saldo, @Default('') String oficina, @Default('') String documento}) = _MovimientoCuentaModel;

  factory MovimientoCuentaModel.fromJson(Map<String, Object?> json) =>
     _$MovimientoCuentaModelFromJson(json);
}

@freezed
class ConsultaMovimientosInversionRequerimiento with _$ConsultaMovimientosInversionRequerimiento {
  factory ConsultaMovimientosInversionRequerimiento(
     {@Default('') String numeroCuenta}) = _ConsultaMovimientosInversionRequerimiento;

  factory ConsultaMovimientosInversionRequerimiento.fromJson(Map<String, Object?> json) =>
     _$ConsultaMovimientosInversionRequerimientoFromJson(json);
}

@freezed
class ConsultaMovimientosInversionRespuesta with _$ConsultaMovimientosInversionRespuesta {
  factory ConsultaMovimientosInversionRespuesta(
     {@Default([]) List<MovimientoInversionModel> movimientos}) = _ConsultaMovimientosInversionRespuesta;

  factory ConsultaMovimientosInversionRespuesta.fromJson(Map<String, Object?> json) =>
     _$ConsultaMovimientosInversionRespuestaFromJson(json);
}

@freezed
class MovimientoInversionModel with _$MovimientoInversionModel {
  factory MovimientoInversionModel(
     {DateTime? fecha, @Default('') String transaccion, @Default(0.00) double valor, @Default(0.00) double saldo, @Default('') String oficina, @Default('') String documento}) = _MovimientoInversionModel;

  factory MovimientoInversionModel.fromJson(Map<String, Object?> json) =>
     _$MovimientoInversionModelFromJson(json);
}

@freezed
class ConsultaDetallePrestamoRequerimiento with _$ConsultaDetallePrestamoRequerimiento {
  factory ConsultaDetallePrestamoRequerimiento(
     {@Default('') String codigoPrestamo, @Default(0) int idUsuario, DateTime? fechaInicio, DateTime? fechaFin}) = _ConsultaDetallePrestamoRequerimiento;

  factory ConsultaDetallePrestamoRequerimiento.fromJson(Map<String, Object?> json) =>
     _$ConsultaDetallePrestamoRequerimientoFromJson(json);
}

@freezed
class ConsultaDetalePrestamoRespuesta with _$ConsultaDetalePrestamoRespuesta {
  factory ConsultaDetalePrestamoRespuesta(
     {InformacionPrestamo? informacionPrestamo, @Default([]) List<DetallePrestamo> detalles}) = _ConsultaDetalePrestamoRespuesta;

  factory ConsultaDetalePrestamoRespuesta.fromJson(Map<String, Object?> json) =>
     _$ConsultaDetalePrestamoRespuestaFromJson(json);
}

@freezed
class InformacionPrestamo with _$InformacionPrestamo {
  factory InformacionPrestamo(
     {@Default(0.00) double deudaInicial, @Default(0.00) double saldo, @Default(0.00) double valorDia, @Default(0.00) double valorCuota, @Default(0.00) double valorHastaCuota, @Default(0.00) double valorCancelarPrestamo,
     DateTime? fechaAdjudicacion, @Default(0) int cuotasVencidas}) = _InformacionPrestamo;

  factory InformacionPrestamo.fromJson(Map<String, Object?> json) =>
     _$InformacionPrestamoFromJson(json);
}

@freezed
class DetallePrestamo with _$DetallePrestamo {
  factory DetallePrestamo(
     {DateTime? fechaVencimiento, @Default(0) int numeroCuota, @Default(0.00) double saldoAdeudado, @Default(0.00) double capital, @Default(0.00) double interes, @Default(0.00) double mora, @Default(0.00) double extrajudicial,
     @Default(0.00) double judicial, @Default(0.00) double otros, @Default(0.00) double total, @Default('') String fechaPago, @Default(0.00) double diasMora, @Default('') String estado}) = _DetallePrestamo;

  factory DetallePrestamo.fromJson(Map<String, Object?> json) =>
     _$DetallePrestamoFromJson(json);
}


@freezed
class ConsultaBeneficiarioRequerimiento with _$ConsultaBeneficiarioRequerimiento {
  factory ConsultaBeneficiarioRequerimiento(
     {@Default('') String numeroCuenta}) = _ConsultaBeneficiarioRequerimiento;

  factory ConsultaBeneficiarioRequerimiento.fromJson(Map<String, Object?> json) =>
     _$ConsultaBeneficiarioRequerimientoFromJson(json);
}

@freezed
class BeneficiarioModel with _$BeneficiarioModel {
  factory BeneficiarioModel(
     {@Default(0) int id, @Default(0) int idUsuario, @Default('') String codigoTipoId, @Default('') String identificacion, @Default('') String nombre, @Default('') String apellido, @Default('') String codigoTipoInstitucion, @Default('') String tipoInstitucion, 
     @Default(0) int idInstitucion, @Default('') String institucion, @Default('') String codigoTipoCuenta, @Default('') String tipoCuenta, @Default('') String numeroCuenta, @Default(false) bool esInterno,
     @Default('') String email, @Default(false) bool activo}) = _BeneficiarioModel;

  factory BeneficiarioModel.fromJson(Map<String, Object?> json) =>
     _$BeneficiarioModelFromJson(json);
}

@freezed
class ConsultaBeneficiariosRespuesta with _$ConsultaBeneficiariosRespuesta {
  factory ConsultaBeneficiariosRespuesta(
     {@Default([]) List<BeneficiarioModel> beneficiarioLista}) = _ConsultaBeneficiariosRespuesta;

  factory ConsultaBeneficiariosRespuesta.fromJson(Map<String, Object?> json) =>
     _$ConsultaBeneficiariosRespuestaFromJson(json);
}


@freezed
class ConsultaRequisitosBeneficiarioRespuesta with _$ConsultaRequisitosBeneficiarioRespuesta {
  factory ConsultaRequisitosBeneficiarioRespuesta(
     {@Default([]) List<TipoInstitucionModel> tiposIntitucion, @Default([]) List<InstitucionFinancieraModel> institucionesFinancieras,
     @Default([]) List<TipoCuentaModel> tiposCuenta, @Default([]) List<TipoIdentificacionModel> tiposIdentificacion}) = _ConsultaRequisitosBeneficiarioRespuesta;

  factory ConsultaRequisitosBeneficiarioRespuesta.fromJson(Map<String, Object?> json) =>
     _$ConsultaRequisitosBeneficiarioRespuestaFromJson(json);
}

@freezed
class TipoInstitucionModel with _$TipoInstitucionModel {
  factory TipoInstitucionModel(
     {@Default('') String codigo, @Default('') String nombre }) = _TipoInstitucionModel;

  factory TipoInstitucionModel.fromJson(Map<String, Object?> json) =>
     _$TipoInstitucionModelFromJson(json);
}

@freezed
class InstitucionFinancieraModel with _$InstitucionFinancieraModel {
  factory InstitucionFinancieraModel(
     {@Default(0) int id, @Default('') String codigoTipo, @Default('') String nombre }) = _InstitucionFinancieraModel;

  factory InstitucionFinancieraModel.fromJson(Map<String, Object?> json) =>
     _$InstitucionFinancieraModelFromJson(json);
}

@freezed
class TipoCuentaModel with _$TipoCuentaModel {
  factory TipoCuentaModel(
     {@Default('') String codigo, @Default('') String nombre }) = _TipoCuentaModel;

  factory TipoCuentaModel.fromJson(Map<String, Object?> json) =>
     _$TipoCuentaModelFromJson(json);
}

@freezed
class TipoIdentificacionModel with _$TipoIdentificacionModel {
  factory TipoIdentificacionModel(
     {@Default('') String codigo, @Default('') String nombre }) = _TipoIdentificacionModel;

  factory TipoIdentificacionModel.fromJson(Map<String, Object?> json) =>
     _$TipoIdentificacionModelFromJson(json);
}

@freezed
class MantenimientoBeneficiarioRequerimiento with _$MantenimientoBeneficiarioRequerimiento {
  factory MantenimientoBeneficiarioRequerimiento(
     {BeneficiarioModel? beneficiario, @Default('') String otpIngresado}) = _MantenimientoBeneficiarioRequerimiento;

  factory MantenimientoBeneficiarioRequerimiento.fromJson(Map<String, Object?> json) =>
     _$MantenimientoBeneficiarioRequerimientoFromJson(json);
}

@freezed
class MantenimientoBeneficiarioRespuesta with _$MantenimientoBeneficiarioRespuesta {
  factory MantenimientoBeneficiarioRespuesta(
     {@Default('') String nombrePersona}) = _MantenimientoBeneficiarioRespuesta;

  factory MantenimientoBeneficiarioRespuesta.fromJson(Map<String, Object?> json) =>
     _$MantenimientoBeneficiarioRespuestaFromJson(json);
}

@freezed
class ValidaTransferenciaYGeneraOtpRequerimiento with _$ValidaTransferenciaYGeneraOtpRequerimiento {
  factory ValidaTransferenciaYGeneraOtpRequerimiento(
    {@Default(0) int idUsuario, @Default('') String cuentaOrigen, @Default(0) int idBeneficiario, @Default('') String codigoConcepto, @Default('') String cuentaDestino, @Default(0.00) double monto, @Default('') String descripcion,
     @Default('') String emailEnvio, @Default('') String celularEnvio, @Default(false) bool esDirecta }) = _ValidaTransferenciaYGeneraOtpRequerimiento;

  factory ValidaTransferenciaYGeneraOtpRequerimiento.fromJson(Map<String, Object?> json) =>
     _$ValidaTransferenciaYGeneraOtpRequerimientoFromJson(json);
}

@freezed
class ValidaTransferenciaYGeneraOtpRespuesta with _$ValidaTransferenciaYGeneraOtpRespuesta {
  factory ValidaTransferenciaYGeneraOtpRespuesta(
     {@Default('') String otp, DateTime? expira}) = _ValidaTransferenciaYGeneraOtpRespuesta;

  factory ValidaTransferenciaYGeneraOtpRespuesta.fromJson(Map<String, Object?> json) =>
     _$ValidaTransferenciaYGeneraOtpRespuestaFromJson(json);
}

@freezed
class ProcesaTransferenciaDirectaRequerimiento with _$ProcesaTransferenciaDirectaRequerimiento {
  factory ProcesaTransferenciaDirectaRequerimiento(
     {@Default(0) int idUsuario, @Default('') String codigoTxEmpresa, @Default('') String cuentaOrigen, @Default(0) int idBeneficiario, @Default('') String codigoConcepto, @Default('') String cuentaDestino, @Default(0.00) double monto, @Default('') String descripcion,
     @Default('') String emailEnvio, @Default('') String celularEnvio, @Default('') String otpIngresado, @Default('') String otpGenerado }) = _ProcesaTransferenciaDirectaRequerimiento;

  factory ProcesaTransferenciaDirectaRequerimiento.fromJson(Map<String, Object?> json) =>
     _$ProcesaTransferenciaDirectaRequerimientoFromJson(json);
}

@freezed
class ProcesaTransfernciaDirectaRespuesta with _$ProcesaTransfernciaDirectaRespuesta {
  factory ProcesaTransfernciaDirectaRespuesta(
     {@Default('') String documento, @Default('') String fecha}) = _ProcesaTransfernciaDirectaRespuesta;

  factory ProcesaTransfernciaDirectaRespuesta.fromJson(Map<String, Object?> json) =>
     _$ProcesaTransfernciaDirectaRespuestaFromJson(json);
}

@freezed
class ConsultaRequisitosTransferenciaRespuesta with _$ConsultaRequisitosTransferenciaRespuesta {
  factory ConsultaRequisitosTransferenciaRespuesta(
     {@Default(0.00) double comision, @Default([]) List<ConceptoTransferenciaModel> conceptosTransferencia}) = _ConsultaRequisitosTransferenciaRespuesta;

  factory ConsultaRequisitosTransferenciaRespuesta.fromJson(Map<String, Object?> json) =>
     _$ConsultaRequisitosTransferenciaRespuestaFromJson(json);
}

@freezed
class ConceptoTransferenciaModel with _$ConceptoTransferenciaModel {
  factory ConceptoTransferenciaModel(
     {@Default('') String codigo, @Default('') String nombre }) = _ConceptoTransferenciaModel;

  factory ConceptoTransferenciaModel.fromJson(Map<String, Object?> json) =>
     _$ConceptoTransferenciaModelFromJson(json);
}

@freezed
class ProcesaAbonoPrestamoRequerimiento with _$ProcesaAbonoPrestamoRequerimiento {
  factory ProcesaAbonoPrestamoRequerimiento(
     {@Default(0) int idUsuario, @Default('') String codigoPrestamo, @Default('') String cuentaDebito, @Default(0.00) double monto,
     @Default('') String emailEnvio, @Default('') String concepto, @Default('') String otpIngresado, @Default('') String otpGenerado}) = _ProcesaAbonoPrestamoRequerimiento;

  factory ProcesaAbonoPrestamoRequerimiento.fromJson(Map<String, Object?> json) =>
     _$ProcesaAbonoPrestamoRequerimientoFromJson(json);
}

@freezed
class ProcesaAbonoPrestamoRespuesta with _$ProcesaAbonoPrestamoRespuesta {
  factory ProcesaAbonoPrestamoRespuesta(
     {@Default('') String documento, @Default('') String fecha}) = _ProcesaAbonoPrestamoRespuesta;

  factory ProcesaAbonoPrestamoRespuesta.fromJson(Map<String, Object?> json) =>
     _$ProcesaAbonoPrestamoRespuestaFromJson(json);
}

@freezed
class DetalleInversionModel with _$DetalleInversionModel {
  factory DetalleInversionModel(
     { DateTime? fecha, @Default(0.00) double retencion, @Default(0.00) double valor, @Default('') String item, @Default('') String estado}) = _DetalleInversionModel;

  factory DetalleInversionModel.fromJson(Map<String, Object?> json) =>
     _$DetalleInversionModelFromJson(json);
}

@freezed
class ConsultaDetalleInversionRequerimiento with _$ConsultaDetalleInversionRequerimiento {
  factory ConsultaDetalleInversionRequerimiento(
     {@Default('') String codigoInversion, @Default(0) int idUsuario}) = _ConsultaDetalleInversionRequerimiento;

  factory ConsultaDetalleInversionRequerimiento.fromJson(Map<String, Object?> json) =>
     _$ConsultaDetalleInversionRequerimientoFromJson(json);
}

@freezed
class ConsultaDetalleInversionRespuesta with _$ConsultaDetalleInversionRespuesta {
  factory ConsultaDetalleInversionRespuesta(
     {@Default([]) List<DetalleInversionModel> detalles}) = _ConsultaDetalleInversionRespuesta;

  factory ConsultaDetalleInversionRespuesta.fromJson(Map<String, Object?> json) =>
     _$ConsultaDetalleInversionRespuestaFromJson(json);
}

@freezed
class DepositoDetalleState with _$DepositoDetalleState {
  factory DepositoDetalleState({
    InversionModel? deposito, ConsultaDetalleInversionRespuesta? respuestaDetalles
  }) = _DepositoDetalleState;

  factory DepositoDetalleState.fromJson(Map<String, Object?> json) =>
     _$DepositoDetalleStateFromJson(json);
}

@freezed
class PrestamoDetalleState with _$PrestamoDetalleState {
  factory PrestamoDetalleState({
    PrestamoModel? prestamo, ConsultaDetalePrestamoRespuesta? respuestaDetalles
  }) = _PrestamoDetalleState;

  factory PrestamoDetalleState.fromJson(Map<String, Object?> json) =>
     _$PrestamoDetalleStateFromJson(json);
}


@freezed
class TransferenciaState with _$TransferenciaState {
  factory TransferenciaState(
     {CuentaModel? cuenta, BeneficiarioModel? beneficiario, CuentaModel? cuentaDestino, @Default(false) bool esValidacion, @Default(false) bool esComprobante, ProcesaTransfernciaDirectaRespuesta? respuestaProceso, ConceptoModel? concepto}) = _TransferenciaState;

  factory TransferenciaState.fromJson(Map<String, Object?> json) =>
     _$TransferenciaStateFromJson(json);
}

enum TipoTransferencia { misCuentas, directa, interbancaria }

@freezed
class SeleccionBeneficiarioState with _$SeleccionBeneficiarioState {
  factory SeleccionBeneficiarioState(
     {@Default([]) List<BeneficiarioModel> beneficiarios}) = _SeleccionBeneficiarioState;

  factory SeleccionBeneficiarioState.fromJson(Map<String, Object?> json) =>
     _$SeleccionBeneficiarioStateFromJson(json);
}

@freezed
class EtiquetaValorRecibo with _$EtiquetaValorRecibo {
  factory EtiquetaValorRecibo(
     {@Default('') String etiqueta, @Default('') String valor}) = _EtiquetaValorRecibo;

  factory EtiquetaValorRecibo.fromJson(Map<String, Object?> json) =>
     _$EtiquetaValorReciboFromJson(json);
}


@freezed
class AbonoState with _$AbonoState {
  factory AbonoState(
     {CuentaModel? cuenta, PrestamoModel? prestamo, @Default(false) bool esValidacion, @Default(false) bool esComprobante, ProcesaAbonoPrestamoRespuesta? respuestaProceso}) = _AbonoState;

  factory AbonoState.fromJson(Map<String, Object?> json) =>
     _$AbonoStateFromJson(json);
}


@freezed
class BeneficiarioState with _$BeneficiarioState {
  factory BeneficiarioState(
     {@Default([]) List<BeneficiarioModel> beneficiarios}) = _BeneficiarioState;

  factory BeneficiarioState.fromJson(Map<String, Object?> json) =>
     _$BeneficiarioStateFromJson(json);
}


@freezed
class BeneficiarioEdicionState with _$BeneficiarioEdicionState {
  factory BeneficiarioEdicionState(
     {@Default(0) int id, @Default(false) bool esInterno, BeneficiarioModel? beneficiario, ConsultaRequisitosBeneficiarioRespuesta? requisitosRespuesta, @Default(false) bool esValidacion}) = _BeneficiarioEdicionState;

  factory BeneficiarioEdicionState.fromJson(Map<String, Object?> json) =>
     _$BeneficiarioEdicionStateFromJson(json);
}

@freezed
class ConsultaAgenciaCajeroRespuesta with _$ConsultaAgenciaCajeroRespuesta {
  factory ConsultaAgenciaCajeroRespuesta(
     {@Default([]) List<AgenciaCajeroItem> agenciaCajeroLista}) = _ConsultaAgenciaCajeroRespuesta;

  factory ConsultaAgenciaCajeroRespuesta.fromJson(Map<String, Object?> json) =>
     _$ConsultaAgenciaCajeroRespuestaFromJson(json);
}

@freezed
class AgenciaCajeroItem with _$AgenciaCajeroItem {
  factory AgenciaCajeroItem(
     {@Default('') String nombre, @Default('') String descripcion, @Default('') String telefono, @Default(0.00) double latitud, @Default(0.00) double longitud, @Default(false) bool esCajero }) = _AgenciaCajeroItem;

  factory AgenciaCajeroItem.fromJson(Map<String, Object?> json) =>
     _$AgenciaCajeroItemFromJson(json);
}

@freezed
class AgenciaState with _$AgenciaState {
  factory AgenciaState(
     {@Default([]) List<AgenciaCajeroItem> agencias, AgenciaCajeroItem? agenciaSeleccionada}) = _AgenciaState;

  factory AgenciaState.fromJson(Map<String, Object?> json) =>
     _$AgenciaStateFromJson(json);
}

@freezed
class RegistroPinAccesoRequerimiento with _$RegistroPinAccesoRequerimiento {
  factory RegistroPinAccesoRequerimiento(
     {@Default('') String pinAcceso}) = _RegistroPinAccesoRequerimiento;

  factory RegistroPinAccesoRequerimiento.fromJson(Map<String, Object?> json) =>
     _$RegistroPinAccesoRequerimientoFromJson(json);
}

@freezed
class ValidaPinAccesoRequerimiento with _$ValidaPinAccesoRequerimiento {
  factory ValidaPinAccesoRequerimiento(
     {@Default(0) int idRegistro, @Default('') String textoOriginal, @Default('') String firma}) = _ValidaPinAccesoRequerimiento;

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

