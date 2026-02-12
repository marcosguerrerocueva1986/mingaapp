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

  @POST("/logout")
  Future<LoginRespuesta> logout();

  @POST("/validaCodigoOtpIngreso")
  Future<ValidacionOtpAccesoRespuesta> validaCodigoOtpIngreso(
      @Body() LoginRequerimiento requerimiento);

    @POST("/validaOtpRegistro")
  Future<BaseRespuesta> validaCodigoOtpRegistro(
      @Body() RegistroRequerimiento requerimiento);

  @POST("/consultaConsolidado")
  Future<PosicionConsolidadaRespuesta> consultaConsolidado(
      @Body() BaseRequerimiento requerimiento);

   @POST("/consultaImagenPrincipal")
  Future<PosicionConsolidadaRespuesta> consultaImagenPrincipal(
      @Body() BaseRequerimiento requerimiento);

  @POST("/consultaMovimientosCuenta")
  Future<ConsultaMovimientosCuentaRespuesta> consultaMovimientosCuenta(
      @Body() ConsultaMovimientosCuentaRequerimiento requerimiento);

  @POST("/consultaEstadoCuenta")
  Future<ConsultaMovimientosCuentaRespuesta> consultaEstadoCuenta(
      @Body() ConsultaMovimientosCuentaRequerimiento requerimiento);

  @POST("/consultaMovimientosInversion")
  Future<ConsultaMovimientosInversionRespuesta> consultaMovimientosInversion(
      @Body() ConsultaMovimientosInversionRequerimiento requerimiento);

  @POST("/consultaMovimientosPrestamo")
  Future<ConsultaMovimientosPrestamoRespuesta> consultaMovimientosPrestamo(
      @Body() ConsultaDetallePrestamoRequerimiento requerimiento);

  @POST("/consultaDetalleInversion")
  Future<ConsultaDetalleInversionRespuesta> consultaDetalleInversion(
      @Body() ConsultaDetalleInversionRequerimiento requerimiento);

  @POST("/consultaDetallePrestamo")
  Future<ConsultaDetalePrestamoRespuesta> consultaDetallePrestamo(
      @Body() ConsultaDetallePrestamoRequerimiento requerimiento);

  @POST("/validaBeneficiarioCuentaInterno")
  Future<MantenimientoBeneficiarioRequerimiento> validaBeneficiarioCuentaInterno(
      @Body() ConsultaBeneficiarioRequerimiento requerimiento);

  @POST("/consultaBeneficiarios")
  Future<ConsultaBeneficiariosRespuesta> consultaBeneficiarios(
      @Body() BaseRequerimiento requerimiento);

  @POST("/validatransferenciaygeneraotp")
  Future<ValidaTransferenciaYGeneraOtpRespuesta> validaTransaferenciaYGeneraOtp(
      @Body() ValidaTransferenciaYGeneraOtpRequerimiento requerimiento);

  @POST("/validatransferenciadiariaygeneraotp")
  Future<ValidaTransferenciaYGeneraOtpRespuesta> validaTransaferenciaDiariaYGeneraOtp(
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
  Future<ConsultaAgenciaCajeroRespuesta> consultaAgenciasCajeros(
      @Body() BaseRequerimiento requerimiento);

  @POST("/registroPinAcceso")
  Future<BaseRequerimiento> registraPinAcceso(
      @Body() RegistroPinAccesoRequerimiento requerimiento);

  @POST("/registrolimiteTransaccion")
  Future<BaseRequerimiento> registroLimiteTransaccion(
      @Body() ClienteMontosLimite requerimiento);

  @POST("/validaPinAcceso")
  Future<ValidacionOtpAccesoRespuesta> validaPinAcceso(
      @Body() LoginClienteRequerimiento requerimiento);
  
  @POST("/validaPinAccesoMovil")
  Future<ValidacionOtpAccesoRespuesta> validaPinAccesoMovil(
      @Body() LoginClienteRequerimiento requerimiento);
  
  @POST("/validaAccesoBiometrico")
  Future<ValidacionOtpAccesoRespuesta> validaAccesoBiometrico(
      @Body() ValidacionOtpAccesoRespuesta requerimiento);
  
  @POST("/cambioClave")
  Future<BaseRespuesta> cambioClave(
      @Body() CambioClaveRequerimiento requerimiento);
  
  @POST("/olvideUsuario")
  Future<BaseRespuesta> olvideUsuario(
      @Body() RegistroRequerimiento requerimiento);

  @POST("/generaClaveTemporalCambioContrasenia")
  Future<BaseRespuesta> generaClaveTemporalCambioContrasenia(
      @Body() RegistroRequerimiento requerimiento);

  @POST("/consultaCuentaVinculadaQR")
  Future<ConsultaCuentaVinculadaQRRespuesta> consultaCuentaVinculadaQR(
      @Body() ConsultaCuentaVinculadaQRRequerimiento requerimiento);

  @POST("/procesaPagoQR")
  Future<ProcesaPagoQRRespuesta> procesaPagoQR(
      @Body() ProcesaPagoQRRequerimiento requerimiento);

  @POST("/consultaRequisitosPagoServicios")
  Future<ConsultaRequisitosPagoServiciosRespuesta>
      consultaRequisitosPagoServicios(@Body() BaseRequerimiento requerimiento);

  @POST("/consultarCamposConsultaPagoServicios")
  Future<ConsultaCamposConsultaPagoServiciosRespuesta>
      consultarCamposConsultaPagoServicios(
          @Body()
          ConsultaCamposConsultaPagoServiciosRequerimiento requerimiento);

  @POST("/consultaRubrosPagoServicio")
  Future<ConsultaValoresServiciosBasicosRespuesta> consultaRubrosPagoServicio(
      @Body() ConsultaValoresServiciosBasicosRequerimiento requerimiento);

  @POST("/generaOtpServiciosBasicos")
  Future<BaseRequerimiento> generaOtpServiciosBasicos(
      @Body() ProcesaPagoServiciosBasicosRequerimiento requerimiento);

  @POST("/procesaTransaccionPagoServicios")
  Future<ProcesaPagoServiciosBasicosRespuesta> procesaTransaccionPagoServicios(
      @Body() ProcesaPagoServiciosBasicosRequerimiento requerimiento);

  @POST("/consultaRequisitosTransferenciaInterbancaria")
  Future<ConsultaRequisitosTransferenciasRespuesta>
      consultaRequisitosTransferenciaInterbancaria(
          @Body() BaseRequerimiento requerimiento);
      
  @POST("/consultaConceptos")
  Future<ConsultaConceptosRespuesta> consultaConceptos(
      @Body() BaseRequerimiento requerimiento);
  
  @POST("/registro")
  Future<BaseRespuesta> activaCuenta(
      @Body() RegistroRequerimiento requerimiento);
  
  @POST("/validaBeneficiarioInterno")
  Future<MantenimientoBeneficiarioRespuesta> validaCuentaBeneficiarioInterno(
      @Body() ConsultaBeneficiarioRequerimiento requerimiento);
}
