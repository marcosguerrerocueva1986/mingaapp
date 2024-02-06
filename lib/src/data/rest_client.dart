import 'package:bancamovilr/index.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: "")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @POST("/validaUsuario")
  Future<ValidaUsuarioRespuesta> validarUsuario(
      @Body() LoginRequerimiento requerimiento);

  @POST("/login")
  Future<LoginRespuesta> login(@Body() LoginRequerimiento requerimiento);

  @POST("/validaCodigoOtpIngreso")
  Future<ValidacionOtpAccesoRespuesta> validaCodigoOtpIngreso(
      @Body() LoginRequerimiento requerimiento);

  @POST("/consultaConsolidado")
  Future<PosicionConsolidadaRespuesta> consultaConsolidado(
      @Body() BaseRequerimiento requerimiento);

  @POST("/consultaMovimientosCuenta")
  Future<ConsultaMovimientosCuentaRespuesta> consultaMovimientosCuenta(
      @Body() ConsultaMovimientosCuentaRequerimiento requerimiento);

  @POST("/consultaDetalleInversion")
  Future<ConsultaDetalleInversionRespuesta> consultaDetalleInversion(
      @Body() ConsultaDetalleInversionRequerimiento requerimiento);

  @POST("/consultaDetallePrestamo")
  Future<ConsultaDetalePrestamoRespuesta> consultaDetallePrestamo(
      @Body() ConsultaDetallePrestamoRequerimiento requerimiento);

  @POST("/consultaBeneficiarios")
  Future<ConsultaBeneficiariosRespuesta> consultaBeneficiarios(
      @Body() BaseRequerimiento requerimiento);

  @POST("/validatransferenciaygeneraotp")
  Future<ValidaTransferenciaYGeneraOtpRespuesta> validaTransaferenciaYGeneraOtp(
      @Body() ValidaTransferenciaYGeneraOtpRequerimiento requerimiento);

  @POST("/ingresaTransferenciaDirecta")
  Future<ProcesaTransfernciaDirectaRespuesta> ingresaTransferenciaDirecta(
      @Body() ProcesaTransferenciaDirectaRequerimiento requerimiento);

  @POST("/ingresaTransferenciaInterbancaria")
  Future<ProcesaTransfernciaDirectaRespuesta>
      procesaTransaferenciaInterbancaria(
          @Body() ProcesaTransferenciaDirectaRequerimiento requerimiento);

  @POST("/validaAbonoPrestamoYGeneraOtp")
  Future<ProcesaAbonoPrestamoRespuesta> validaAbonoPrestamoYGeneraOtp(
      @Body() ProcesaAbonoPrestamoRequerimiento requerimiento);

  @POST("/ingresaAbonoPrestamo")
  Future<ProcesaAbonoPrestamoRespuesta> procesaAbonoPrestamo(
      @Body() ProcesaAbonoPrestamoRequerimiento requerimiento);

  @POST("/generaOtpBeneficiario")
  Future<MantenimientoBeneficiarioRequerimiento> generaOtpBeneficiario(
      @Body() MantenimientoBeneficiarioRequerimiento requerimiento);

  @POST("/mantenimientoBeneficiario")
  Future<MantenimientoBeneficiarioRequerimiento> mantenimientoBeneficiario(
      @Body() MantenimientoBeneficiarioRequerimiento requerimiento);

  @POST("/eliminaBeneficiario")
  Future<MantenimientoBeneficiarioRequerimiento> eliminaBeneficiario(
      @Body() BeneficiarioModel requerimiento);

  @POST("/consultaRequisitosBeneficiarios")
  Future<ConsultaRequisitosBeneficiarioRespuesta>
      consultaRequisitosBeneficiarios(@Body() BaseRequerimiento requerimiento);

    @POST("/consultaAgenciasCajeros")
  Future<ConsultaAgenciaCajeroRespuesta>
      consultaAgenciasCajeros(@Body() BaseRequerimiento requerimiento);

  @POST("/registroPinAcceso")
  Future<BaseRequerimiento> registraPinAcceso(
      @Body() RegistroPinAccesoRequerimiento requerimiento);

  @POST("/validaPinAcceso")
  Future<ValidacionOtpAccesoRespuesta> validaPinAcceso(
      @Body() ValidaPinAccesoRequerimiento  requerimiento);
}
