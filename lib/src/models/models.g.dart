// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseRequerimientoImpl _$$BaseRequerimientoImplFromJson(
        Map<String, dynamic> json) =>
    _$BaseRequerimientoImpl(
      idUsuario: json['idUsuario'] as int? ?? 0,
    );

Map<String, dynamic> _$$BaseRequerimientoImplToJson(
        _$BaseRequerimientoImpl instance) =>
    <String, dynamic>{
      'idUsuario': instance.idUsuario,
    };

_$LoginRequerimientoImpl _$$LoginRequerimientoImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginRequerimientoImpl(
      idUsuario: json['idUsuario'] as int? ?? 0,
      idRegistro: json['idRegistro'] as int? ?? 0,
      codigoUsuario: json['codigoUsuario'] as String? ?? '',
      pwdUsuario: json['pwdUsuario'] as String? ?? '',
      otpIngresado: json['otpIngresado'] as String? ?? '',
      esMovil: json['esMovil'] as bool? ?? true,
    );

Map<String, dynamic> _$$LoginRequerimientoImplToJson(
        _$LoginRequerimientoImpl instance) =>
    <String, dynamic>{
      'idUsuario': instance.idUsuario,
      'idRegistro': instance.idRegistro,
      'codigoUsuario': instance.codigoUsuario,
      'pwdUsuario': instance.pwdUsuario,
      'otpIngresado': instance.otpIngresado,
      'esMovil': instance.esMovil,
    };

_$LoginRespuestaImpl _$$LoginRespuestaImplFromJson(Map<String, dynamic> json) =>
    _$LoginRespuestaImpl(
      id: json['id'] as int? ?? 0,
      idRegistro: json['idRegistro'] as int? ?? 0,
      realizaCambioUsuario: json['realizaCambioUsuario'] as bool? ?? false,
      realizaCambioClave: json['realizaCambioClave'] as bool? ?? false,
      identificacion: json['identificacion'] as String? ?? '',
      nombre: json['nombre'] as String? ?? '',
      segundosInactividad: json['segundosInactividad'] as int? ?? 0,
      fechaUltimoAcceso: json['fechaUltimoAcceso'] as String? ?? '',
      existError: json['sF_ExisteError'] as bool? ?? false,
      error: json['sF_Error'] as String? ?? '',
      mensajeCambioClave: json['mensajeCambioClave'] as String? ?? '',
    );

Map<String, dynamic> _$$LoginRespuestaImplToJson(
        _$LoginRespuestaImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'idRegistro': instance.idRegistro,
      'realizaCambioUsuario': instance.realizaCambioUsuario,
      'realizaCambioClave': instance.realizaCambioClave,
      'identificacion': instance.identificacion,
      'nombre': instance.nombre,
      'segundosInactividad': instance.segundosInactividad,
      'fechaUltimoAcceso': instance.fechaUltimoAcceso,
      'sF_ExisteError': instance.existError,
      'sF_Error': instance.error,
      'mensajeCambioClave': instance.mensajeCambioClave,
    };

_$ValidaUsuarioRespuestaImpl _$$ValidaUsuarioRespuestaImplFromJson(
        Map<String, dynamic> json) =>
    _$ValidaUsuarioRespuestaImpl(
      imagen: json['imagen'] as String? ?? '',
      frase: json['frase'] as String? ?? '',
    );

Map<String, dynamic> _$$ValidaUsuarioRespuestaImplToJson(
        _$ValidaUsuarioRespuestaImpl instance) =>
    <String, dynamic>{
      'imagen': instance.imagen,
      'frase': instance.frase,
    };

_$UsuarioModelImpl _$$UsuarioModelImplFromJson(Map<String, dynamic> json) =>
    _$UsuarioModelImpl(
      id: json['id'] as int? ?? 0,
      nombre: json['nombre'] as String? ?? '',
      fechaUltimoAcceso: json['fechaUltimoAcceso'] as String? ?? '',
      codigoUsuario: json['codigoUsuario'] as String? ?? '',
    );

Map<String, dynamic> _$$UsuarioModelImplToJson(_$UsuarioModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nombre': instance.nombre,
      'fechaUltimoAcceso': instance.fechaUltimoAcceso,
      'codigoUsuario': instance.codigoUsuario,
    };

_$ValidacionOtpAccesoRespuestaImpl _$$ValidacionOtpAccesoRespuestaImplFromJson(
        Map<String, dynamic> json) =>
    _$ValidacionOtpAccesoRespuestaImpl(
      esValido: json['esValido'] as bool? ?? false,
      token: json['token'] as String? ?? '',
      segundosInactividad: json['segundosInactividad'] as int? ?? 60,
      usuario: json['usuario'] == null
          ? null
          : UsuarioModel.fromJson(json['usuario'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ValidacionOtpAccesoRespuestaImplToJson(
        _$ValidacionOtpAccesoRespuestaImpl instance) =>
    <String, dynamic>{
      'esValido': instance.esValido,
      'token': instance.token,
      'segundosInactividad': instance.segundosInactividad,
      'usuario': instance.usuario,
    };

_$LoginStateImpl _$$LoginStateImplFromJson(Map<String, dynamic> json) =>
    _$LoginStateImpl(
      estaValidado: json['estaValidado'] as bool? ?? false,
      obscurecerClave: json['obscurecerClave'] as bool? ?? false,
      modoConfirmacion: json['modoConfirmacion'] as bool? ?? false,
      permiteEditarUsuario: json['permiteEditarUsuario'] as bool,
      informacionValidada: json['informacionValidada'] == null
          ? null
          : ValidaUsuarioRespuesta.fromJson(
              json['informacionValidada'] as Map<String, dynamic>),
      loginRespuesta: json['loginRespuesta'] == null
          ? null
          : LoginRespuesta.fromJson(
              json['loginRespuesta'] as Map<String, dynamic>),
      validacionOtpRespuesta: json['validacionOtpRespuesta'] == null
          ? null
          : ValidacionOtpAccesoRespuesta.fromJson(
              json['validacionOtpRespuesta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoginStateImplToJson(_$LoginStateImpl instance) =>
    <String, dynamic>{
      'estaValidado': instance.estaValidado,
      'obscurecerClave': instance.obscurecerClave,
      'modoConfirmacion': instance.modoConfirmacion,
      'permiteEditarUsuario': instance.permiteEditarUsuario,
      'informacionValidada': instance.informacionValidada,
      'loginRespuesta': instance.loginRespuesta,
      'validacionOtpRespuesta': instance.validacionOtpRespuesta,
    };

_$PosicionConsolidadaRespuestaImpl _$$PosicionConsolidadaRespuestaImplFromJson(
        Map<String, dynamic> json) =>
    _$PosicionConsolidadaRespuestaImpl(
      cuentas: (json['cuentas'] as List<dynamic>?)
              ?.map((e) => CuentaModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      inversiones: (json['inversiones'] as List<dynamic>?)
              ?.map((e) => InversionModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      prestamos: (json['prestamos'] as List<dynamic>?)
              ?.map((e) => PrestamoModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$PosicionConsolidadaRespuestaImplToJson(
        _$PosicionConsolidadaRespuestaImpl instance) =>
    <String, dynamic>{
      'cuentas': instance.cuentas,
      'inversiones': instance.inversiones,
      'prestamos': instance.prestamos,
    };

_$CuentaModelImpl _$$CuentaModelImplFromJson(Map<String, dynamic> json) =>
    _$CuentaModelImpl(
      codigo: json['codigo'] as String? ?? '',
      nombre: json['nombre'] as String? ?? '',
      tipo: json['tipo'] as String? ?? '',
      saldo: (json['saldo'] as num?)?.toDouble() ?? 0.00,
      saldoContable: (json['saldoContable'] as num?)?.toDouble() ?? 0.00,
      estado: json['estado'] as String? ?? '',
      oficina: json['oficina'] as String? ?? '',
      permiteUsoBancaElectronica:
          json['permiteUsoBancaElectronica'] as bool? ?? false,
    );

Map<String, dynamic> _$$CuentaModelImplToJson(_$CuentaModelImpl instance) =>
    <String, dynamic>{
      'codigo': instance.codigo,
      'nombre': instance.nombre,
      'tipo': instance.tipo,
      'saldo': instance.saldo,
      'saldoContable': instance.saldoContable,
      'estado': instance.estado,
      'oficina': instance.oficina,
      'permiteUsoBancaElectronica': instance.permiteUsoBancaElectronica,
    };

_$InversionModelImpl _$$InversionModelImplFromJson(Map<String, dynamic> json) =>
    _$InversionModelImpl(
      codigo: json['codigo'] as String? ?? '',
      nombre: json['nombre'] as String? ?? '',
      tipo: json['tipo'] as String? ?? '',
      monto: (json['monto'] as num?)?.toDouble() ?? 0.00,
      fechaVencimiento: json['fechaVencimiento'] == null
          ? null
          : DateTime.parse(json['fechaVencimiento'] as String),
      estado: json['estado'] as String? ?? '',
      totalRecibir: (json['totalRecibir'] as num?)?.toDouble() ?? 0.00,
      oficina: json['oficina'] as String? ?? '',
    );

Map<String, dynamic> _$$InversionModelImplToJson(
        _$InversionModelImpl instance) =>
    <String, dynamic>{
      'codigo': instance.codigo,
      'nombre': instance.nombre,
      'tipo': instance.tipo,
      'monto': instance.monto,
      'fechaVencimiento': instance.fechaVencimiento?.toIso8601String(),
      'estado': instance.estado,
      'totalRecibir': instance.totalRecibir,
      'oficina': instance.oficina,
    };

_$PrestamoModelImpl _$$PrestamoModelImplFromJson(Map<String, dynamic> json) =>
    _$PrestamoModelImpl(
      codigo: json['codigo'] as String? ?? '',
      tipo: json['tipo'] as String? ?? '',
      deudaInicial: (json['deudaInicial'] as num?)?.toDouble() ?? 0.00,
      saldo: (json['saldo'] as num?)?.toDouble() ?? 0.00,
      fechaAdjudicacion: json['fechaAdjudicacion'] == null
          ? null
          : DateTime.parse(json['fechaAdjudicacion'] as String),
      estado: json['estado'] as String? ?? '',
      oficina: json['oficina'] as String? ?? '',
      valorParaEstarAlDia:
          (json['valorParaEstarAlDia'] as num?)?.toDouble() ?? 0.00,
      valorCuota: (json['valorCuota'] as num?)?.toDouble() ?? 0.00,
      valorCancelarPrestamo:
          (json['valorCancelarPrestamo'] as num?)?.toDouble() ?? 0.00,
    );

Map<String, dynamic> _$$PrestamoModelImplToJson(_$PrestamoModelImpl instance) =>
    <String, dynamic>{
      'codigo': instance.codigo,
      'tipo': instance.tipo,
      'deudaInicial': instance.deudaInicial,
      'saldo': instance.saldo,
      'fechaAdjudicacion': instance.fechaAdjudicacion?.toIso8601String(),
      'estado': instance.estado,
      'oficina': instance.oficina,
      'valorParaEstarAlDia': instance.valorParaEstarAlDia,
      'valorCuota': instance.valorCuota,
      'valorCancelarPrestamo': instance.valorCancelarPrestamo,
    };

_$PosicionConsolidadaStateImpl _$$PosicionConsolidadaStateImplFromJson(
        Map<String, dynamic> json) =>
    _$PosicionConsolidadaStateImpl(
      posicionConsolidada: json['posicionConsolidada'] == null
          ? null
          : PosicionConsolidadaRespuesta.fromJson(
              json['posicionConsolidada'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PosicionConsolidadaStateImplToJson(
        _$PosicionConsolidadaStateImpl instance) =>
    <String, dynamic>{
      'posicionConsolidada': instance.posicionConsolidada,
    };

_$CuentaDetalleStateImpl _$$CuentaDetalleStateImplFromJson(
        Map<String, dynamic> json) =>
    _$CuentaDetalleStateImpl(
      cuenta: json['cuenta'] == null
          ? null
          : CuentaModel.fromJson(json['cuenta'] as Map<String, dynamic>),
      respuestaMovimientos: json['respuestaMovimientos'] == null
          ? null
          : ConsultaMovimientosCuentaRespuesta.fromJson(
              json['respuestaMovimientos'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CuentaDetalleStateImplToJson(
        _$CuentaDetalleStateImpl instance) =>
    <String, dynamic>{
      'cuenta': instance.cuenta,
      'respuestaMovimientos': instance.respuestaMovimientos,
    };

_$ConsultaMovimientosCuentaRequerimientoImpl
    _$$ConsultaMovimientosCuentaRequerimientoImplFromJson(
            Map<String, dynamic> json) =>
        _$ConsultaMovimientosCuentaRequerimientoImpl(
          idUsuario: json['idUsuario'] as int? ?? 0,
          codigoCuenta: json['codigoCuenta'] as String? ?? '',
          numeroRegistros: json['numeroRegistros'] as int? ?? 0,
          fechaDesde: json['fechaDesde'] == null
              ? null
              : DateTime.parse(json['fechaDesde'] as String),
          fechaHasta: json['fechaHasta'] == null
              ? null
              : DateTime.parse(json['fechaHasta'] as String),
        );

Map<String, dynamic> _$$ConsultaMovimientosCuentaRequerimientoImplToJson(
        _$ConsultaMovimientosCuentaRequerimientoImpl instance) =>
    <String, dynamic>{
      'idUsuario': instance.idUsuario,
      'codigoCuenta': instance.codigoCuenta,
      'numeroRegistros': instance.numeroRegistros,
      'fechaDesde': instance.fechaDesde?.toIso8601String(),
      'fechaHasta': instance.fechaHasta?.toIso8601String(),
    };

_$ConsultaMovimientosCuentaRespuestaImpl
    _$$ConsultaMovimientosCuentaRespuestaImplFromJson(
            Map<String, dynamic> json) =>
        _$ConsultaMovimientosCuentaRespuestaImpl(
          movimientos: (json['movimientos'] as List<dynamic>?)
                  ?.map((e) =>
                      MovimientoCuentaModel.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              const [],
        );

Map<String, dynamic> _$$ConsultaMovimientosCuentaRespuestaImplToJson(
        _$ConsultaMovimientosCuentaRespuestaImpl instance) =>
    <String, dynamic>{
      'movimientos': instance.movimientos,
    };

_$MovimientoCuentaModelImpl _$$MovimientoCuentaModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MovimientoCuentaModelImpl(
      fecha: json['fecha'] == null
          ? null
          : DateTime.parse(json['fecha'] as String),
      transaccion: json['transaccion'] as String? ?? '',
      cheque: json['cheque'] as String? ?? '',
      deposito: (json['deposito'] as num?)?.toDouble() ?? 0.00,
      retiro: (json['retiro'] as num?)?.toDouble() ?? 0.00,
      saldo: (json['saldo'] as num?)?.toDouble() ?? 0.00,
      oficina: json['oficina'] as String? ?? '',
      documento: json['documento'] as String? ?? '',
    );

Map<String, dynamic> _$$MovimientoCuentaModelImplToJson(
        _$MovimientoCuentaModelImpl instance) =>
    <String, dynamic>{
      'fecha': instance.fecha?.toIso8601String(),
      'transaccion': instance.transaccion,
      'cheque': instance.cheque,
      'deposito': instance.deposito,
      'retiro': instance.retiro,
      'saldo': instance.saldo,
      'oficina': instance.oficina,
      'documento': instance.documento,
    };

_$ConsultaMovimientosInversionRequerimientoImpl
    _$$ConsultaMovimientosInversionRequerimientoImplFromJson(
            Map<String, dynamic> json) =>
        _$ConsultaMovimientosInversionRequerimientoImpl(
          numeroCuenta: json['numeroCuenta'] as String? ?? '',
        );

Map<String, dynamic> _$$ConsultaMovimientosInversionRequerimientoImplToJson(
        _$ConsultaMovimientosInversionRequerimientoImpl instance) =>
    <String, dynamic>{
      'numeroCuenta': instance.numeroCuenta,
    };

_$ConsultaMovimientosInversionRespuestaImpl
    _$$ConsultaMovimientosInversionRespuestaImplFromJson(
            Map<String, dynamic> json) =>
        _$ConsultaMovimientosInversionRespuestaImpl(
          movimientos: (json['movimientos'] as List<dynamic>?)
                  ?.map((e) => MovimientoInversionModel.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              const [],
        );

Map<String, dynamic> _$$ConsultaMovimientosInversionRespuestaImplToJson(
        _$ConsultaMovimientosInversionRespuestaImpl instance) =>
    <String, dynamic>{
      'movimientos': instance.movimientos,
    };

_$MovimientoInversionModelImpl _$$MovimientoInversionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MovimientoInversionModelImpl(
      fecha: json['fecha'] == null
          ? null
          : DateTime.parse(json['fecha'] as String),
      transaccion: json['transaccion'] as String? ?? '',
      valor: (json['valor'] as num?)?.toDouble() ?? 0.00,
      saldo: (json['saldo'] as num?)?.toDouble() ?? 0.00,
      oficina: json['oficina'] as String? ?? '',
      documento: json['documento'] as String? ?? '',
    );

Map<String, dynamic> _$$MovimientoInversionModelImplToJson(
        _$MovimientoInversionModelImpl instance) =>
    <String, dynamic>{
      'fecha': instance.fecha?.toIso8601String(),
      'transaccion': instance.transaccion,
      'valor': instance.valor,
      'saldo': instance.saldo,
      'oficina': instance.oficina,
      'documento': instance.documento,
    };

_$ConsultaDetallePrestamoRequerimientoImpl
    _$$ConsultaDetallePrestamoRequerimientoImplFromJson(
            Map<String, dynamic> json) =>
        _$ConsultaDetallePrestamoRequerimientoImpl(
          codigoPrestamo: json['codigoPrestamo'] as String? ?? '',
          idUsuario: json['idUsuario'] as int? ?? 0,
          fechaInicio: json['fechaInicio'] == null
              ? null
              : DateTime.parse(json['fechaInicio'] as String),
          fechaFin: json['fechaFin'] == null
              ? null
              : DateTime.parse(json['fechaFin'] as String),
        );

Map<String, dynamic> _$$ConsultaDetallePrestamoRequerimientoImplToJson(
        _$ConsultaDetallePrestamoRequerimientoImpl instance) =>
    <String, dynamic>{
      'codigoPrestamo': instance.codigoPrestamo,
      'idUsuario': instance.idUsuario,
      'fechaInicio': instance.fechaInicio?.toIso8601String(),
      'fechaFin': instance.fechaFin?.toIso8601String(),
    };

_$ConsultaDetalePrestamoRespuestaImpl
    _$$ConsultaDetalePrestamoRespuestaImplFromJson(Map<String, dynamic> json) =>
        _$ConsultaDetalePrestamoRespuestaImpl(
          informacionPrestamo: json['informacionPrestamo'] == null
              ? null
              : InformacionPrestamo.fromJson(
                  json['informacionPrestamo'] as Map<String, dynamic>),
          detalles: (json['detalles'] as List<dynamic>?)
                  ?.map((e) =>
                      DetallePrestamo.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              const [],
        );

Map<String, dynamic> _$$ConsultaDetalePrestamoRespuestaImplToJson(
        _$ConsultaDetalePrestamoRespuestaImpl instance) =>
    <String, dynamic>{
      'informacionPrestamo': instance.informacionPrestamo,
      'detalles': instance.detalles,
    };

_$InformacionPrestamoImpl _$$InformacionPrestamoImplFromJson(
        Map<String, dynamic> json) =>
    _$InformacionPrestamoImpl(
      deudaInicial: (json['deudaInicial'] as num?)?.toDouble() ?? 0.00,
      saldo: (json['saldo'] as num?)?.toDouble() ?? 0.00,
      valorDia: (json['valorDia'] as num?)?.toDouble() ?? 0.00,
      valorCuota: (json['valorCuota'] as num?)?.toDouble() ?? 0.00,
      valorHastaCuota: (json['valorHastaCuota'] as num?)?.toDouble() ?? 0.00,
      valorCancelarPrestamo:
          (json['valorCancelarPrestamo'] as num?)?.toDouble() ?? 0.00,
      fechaAdjudicacion: json['fechaAdjudicacion'] == null
          ? null
          : DateTime.parse(json['fechaAdjudicacion'] as String),
      cuotasVencidas: json['cuotasVencidas'] as int? ?? 0,
    );

Map<String, dynamic> _$$InformacionPrestamoImplToJson(
        _$InformacionPrestamoImpl instance) =>
    <String, dynamic>{
      'deudaInicial': instance.deudaInicial,
      'saldo': instance.saldo,
      'valorDia': instance.valorDia,
      'valorCuota': instance.valorCuota,
      'valorHastaCuota': instance.valorHastaCuota,
      'valorCancelarPrestamo': instance.valorCancelarPrestamo,
      'fechaAdjudicacion': instance.fechaAdjudicacion?.toIso8601String(),
      'cuotasVencidas': instance.cuotasVencidas,
    };

_$DetallePrestamoImpl _$$DetallePrestamoImplFromJson(
        Map<String, dynamic> json) =>
    _$DetallePrestamoImpl(
      fechaVencimiento: json['fechaVencimiento'] == null
          ? null
          : DateTime.parse(json['fechaVencimiento'] as String),
      numeroCuota: json['numeroCuota'] as int? ?? 0,
      saldoAdeudado: (json['saldoAdeudado'] as num?)?.toDouble() ?? 0.00,
      capital: (json['capital'] as num?)?.toDouble() ?? 0.00,
      interes: (json['interes'] as num?)?.toDouble() ?? 0.00,
      mora: (json['mora'] as num?)?.toDouble() ?? 0.00,
      extrajudicial: (json['extrajudicial'] as num?)?.toDouble() ?? 0.00,
      judicial: (json['judicial'] as num?)?.toDouble() ?? 0.00,
      otros: (json['otros'] as num?)?.toDouble() ?? 0.00,
      total: (json['total'] as num?)?.toDouble() ?? 0.00,
      fechaPago: json['fechaPago'] as String? ?? '',
      diasMora: (json['diasMora'] as num?)?.toDouble() ?? 0.00,
      estado: json['estado'] as String? ?? '',
    );

Map<String, dynamic> _$$DetallePrestamoImplToJson(
        _$DetallePrestamoImpl instance) =>
    <String, dynamic>{
      'fechaVencimiento': instance.fechaVencimiento?.toIso8601String(),
      'numeroCuota': instance.numeroCuota,
      'saldoAdeudado': instance.saldoAdeudado,
      'capital': instance.capital,
      'interes': instance.interes,
      'mora': instance.mora,
      'extrajudicial': instance.extrajudicial,
      'judicial': instance.judicial,
      'otros': instance.otros,
      'total': instance.total,
      'fechaPago': instance.fechaPago,
      'diasMora': instance.diasMora,
      'estado': instance.estado,
    };

_$ConsultaBeneficiarioRequerimientoImpl
    _$$ConsultaBeneficiarioRequerimientoImplFromJson(
            Map<String, dynamic> json) =>
        _$ConsultaBeneficiarioRequerimientoImpl(
          numeroCuenta: json['numeroCuenta'] as String? ?? '',
        );

Map<String, dynamic> _$$ConsultaBeneficiarioRequerimientoImplToJson(
        _$ConsultaBeneficiarioRequerimientoImpl instance) =>
    <String, dynamic>{
      'numeroCuenta': instance.numeroCuenta,
    };

_$BeneficiarioModelImpl _$$BeneficiarioModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BeneficiarioModelImpl(
      id: json['id'] as int? ?? 0,
      idUsuario: json['idUsuario'] as int? ?? 0,
      codigoTipoId: json['codigoTipoId'] as String? ?? '',
      identificacion: json['identificacion'] as String? ?? '',
      nombre: json['nombre'] as String? ?? '',
      apellido: json['apellido'] as String? ?? '',
      codigoTipoInstitucion: json['codigoTipoInstitucion'] as String? ?? '',
      tipoInstitucion: json['tipoInstitucion'] as String? ?? '',
      idInstitucion: json['idInstitucion'] as int? ?? 0,
      institucion: json['institucion'] as String? ?? '',
      codigoTipoCuenta: json['codigoTipoCuenta'] as String? ?? '',
      tipoCuenta: json['tipoCuenta'] as String? ?? '',
      numeroCuenta: json['numeroCuenta'] as String? ?? '',
      esInterno: json['esInterno'] as bool? ?? false,
      email: json['email'] as String? ?? '',
      activo: json['activo'] as bool? ?? false,
    );

Map<String, dynamic> _$$BeneficiarioModelImplToJson(
        _$BeneficiarioModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'idUsuario': instance.idUsuario,
      'codigoTipoId': instance.codigoTipoId,
      'identificacion': instance.identificacion,
      'nombre': instance.nombre,
      'apellido': instance.apellido,
      'codigoTipoInstitucion': instance.codigoTipoInstitucion,
      'tipoInstitucion': instance.tipoInstitucion,
      'idInstitucion': instance.idInstitucion,
      'institucion': instance.institucion,
      'codigoTipoCuenta': instance.codigoTipoCuenta,
      'tipoCuenta': instance.tipoCuenta,
      'numeroCuenta': instance.numeroCuenta,
      'esInterno': instance.esInterno,
      'email': instance.email,
      'activo': instance.activo,
    };

_$ConsultaBeneficiariosRespuestaImpl
    _$$ConsultaBeneficiariosRespuestaImplFromJson(Map<String, dynamic> json) =>
        _$ConsultaBeneficiariosRespuestaImpl(
          beneficiarioLista: (json['beneficiarioLista'] as List<dynamic>?)
                  ?.map((e) =>
                      BeneficiarioModel.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              const [],
        );

Map<String, dynamic> _$$ConsultaBeneficiariosRespuestaImplToJson(
        _$ConsultaBeneficiariosRespuestaImpl instance) =>
    <String, dynamic>{
      'beneficiarioLista': instance.beneficiarioLista,
    };

_$ConsultaRequisitosBeneficiarioRespuestaImpl
    _$$ConsultaRequisitosBeneficiarioRespuestaImplFromJson(
            Map<String, dynamic> json) =>
        _$ConsultaRequisitosBeneficiarioRespuestaImpl(
          tiposIntitucion: (json['tiposIntitucion'] as List<dynamic>?)
                  ?.map((e) =>
                      TipoInstitucionModel.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              const [],
          institucionesFinancieras:
              (json['institucionesFinancieras'] as List<dynamic>?)
                      ?.map((e) => InstitucionFinancieraModel.fromJson(
                          e as Map<String, dynamic>))
                      .toList() ??
                  const [],
          tiposCuenta: (json['tiposCuenta'] as List<dynamic>?)
                  ?.map((e) =>
                      TipoCuentaModel.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              const [],
          tiposIdentificacion: (json['tiposIdentificacion'] as List<dynamic>?)
                  ?.map((e) => TipoIdentificacionModel.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              const [],
        );

Map<String, dynamic> _$$ConsultaRequisitosBeneficiarioRespuestaImplToJson(
        _$ConsultaRequisitosBeneficiarioRespuestaImpl instance) =>
    <String, dynamic>{
      'tiposIntitucion': instance.tiposIntitucion,
      'institucionesFinancieras': instance.institucionesFinancieras,
      'tiposCuenta': instance.tiposCuenta,
      'tiposIdentificacion': instance.tiposIdentificacion,
    };

_$TipoInstitucionModelImpl _$$TipoInstitucionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TipoInstitucionModelImpl(
      codigo: json['codigo'] as String? ?? '',
      nombre: json['nombre'] as String? ?? '',
    );

Map<String, dynamic> _$$TipoInstitucionModelImplToJson(
        _$TipoInstitucionModelImpl instance) =>
    <String, dynamic>{
      'codigo': instance.codigo,
      'nombre': instance.nombre,
    };

_$InstitucionFinancieraModelImpl _$$InstitucionFinancieraModelImplFromJson(
        Map<String, dynamic> json) =>
    _$InstitucionFinancieraModelImpl(
      id: json['id'] as int? ?? 0,
      codigoTipo: json['codigoTipo'] as String? ?? '',
      nombre: json['nombre'] as String? ?? '',
    );

Map<String, dynamic> _$$InstitucionFinancieraModelImplToJson(
        _$InstitucionFinancieraModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'codigoTipo': instance.codigoTipo,
      'nombre': instance.nombre,
    };

_$TipoCuentaModelImpl _$$TipoCuentaModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TipoCuentaModelImpl(
      codigo: json['codigo'] as String? ?? '',
      nombre: json['nombre'] as String? ?? '',
    );

Map<String, dynamic> _$$TipoCuentaModelImplToJson(
        _$TipoCuentaModelImpl instance) =>
    <String, dynamic>{
      'codigo': instance.codigo,
      'nombre': instance.nombre,
    };

_$TipoIdentificacionModelImpl _$$TipoIdentificacionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TipoIdentificacionModelImpl(
      codigo: json['codigo'] as String? ?? '',
      nombre: json['nombre'] as String? ?? '',
    );

Map<String, dynamic> _$$TipoIdentificacionModelImplToJson(
        _$TipoIdentificacionModelImpl instance) =>
    <String, dynamic>{
      'codigo': instance.codigo,
      'nombre': instance.nombre,
    };

_$MantenimientoBeneficiarioRequerimientoImpl
    _$$MantenimientoBeneficiarioRequerimientoImplFromJson(
            Map<String, dynamic> json) =>
        _$MantenimientoBeneficiarioRequerimientoImpl(
          beneficiario: json['beneficiario'] == null
              ? null
              : BeneficiarioModel.fromJson(
                  json['beneficiario'] as Map<String, dynamic>),
          otpIngresado: json['otpIngresado'] as String? ?? '',
        );

Map<String, dynamic> _$$MantenimientoBeneficiarioRequerimientoImplToJson(
        _$MantenimientoBeneficiarioRequerimientoImpl instance) =>
    <String, dynamic>{
      'beneficiario': instance.beneficiario,
      'otpIngresado': instance.otpIngresado,
    };

_$MantenimientoBeneficiarioRespuestaImpl
    _$$MantenimientoBeneficiarioRespuestaImplFromJson(
            Map<String, dynamic> json) =>
        _$MantenimientoBeneficiarioRespuestaImpl(
          nombrePersona: json['nombrePersona'] as String? ?? '',
        );

Map<String, dynamic> _$$MantenimientoBeneficiarioRespuestaImplToJson(
        _$MantenimientoBeneficiarioRespuestaImpl instance) =>
    <String, dynamic>{
      'nombrePersona': instance.nombrePersona,
    };

_$ValidaTransferenciaYGeneraOtpRequerimientoImpl
    _$$ValidaTransferenciaYGeneraOtpRequerimientoImplFromJson(
            Map<String, dynamic> json) =>
        _$ValidaTransferenciaYGeneraOtpRequerimientoImpl(
          idUsuario: json['idUsuario'] as int? ?? 0,
          cuentaOrigen: json['cuentaOrigen'] as String? ?? '',
          idBeneficiario: json['idBeneficiario'] as int? ?? 0,
          codigoConcepto: json['codigoConcepto'] as String? ?? '',
          cuentaDestino: json['cuentaDestino'] as String? ?? '',
          monto: (json['monto'] as num?)?.toDouble() ?? 0.00,
          descripcion: json['descripcion'] as String? ?? '',
          emailEnvio: json['emailEnvio'] as String? ?? '',
          celularEnvio: json['celularEnvio'] as String? ?? '',
          esDirecta: json['esDirecta'] as bool? ?? false,
        );

Map<String, dynamic> _$$ValidaTransferenciaYGeneraOtpRequerimientoImplToJson(
        _$ValidaTransferenciaYGeneraOtpRequerimientoImpl instance) =>
    <String, dynamic>{
      'idUsuario': instance.idUsuario,
      'cuentaOrigen': instance.cuentaOrigen,
      'idBeneficiario': instance.idBeneficiario,
      'codigoConcepto': instance.codigoConcepto,
      'cuentaDestino': instance.cuentaDestino,
      'monto': instance.monto,
      'descripcion': instance.descripcion,
      'emailEnvio': instance.emailEnvio,
      'celularEnvio': instance.celularEnvio,
      'esDirecta': instance.esDirecta,
    };

_$ValidaTransferenciaYGeneraOtpRespuestaImpl
    _$$ValidaTransferenciaYGeneraOtpRespuestaImplFromJson(
            Map<String, dynamic> json) =>
        _$ValidaTransferenciaYGeneraOtpRespuestaImpl(
          otp: json['otp'] as String? ?? '',
          expira: json['expira'] == null
              ? null
              : DateTime.parse(json['expira'] as String),
        );

Map<String, dynamic> _$$ValidaTransferenciaYGeneraOtpRespuestaImplToJson(
        _$ValidaTransferenciaYGeneraOtpRespuestaImpl instance) =>
    <String, dynamic>{
      'otp': instance.otp,
      'expira': instance.expira?.toIso8601String(),
    };

_$ProcesaTransferenciaDirectaRequerimientoImpl
    _$$ProcesaTransferenciaDirectaRequerimientoImplFromJson(
            Map<String, dynamic> json) =>
        _$ProcesaTransferenciaDirectaRequerimientoImpl(
          idUsuario: json['idUsuario'] as int? ?? 0,
          codigoTxEmpresa: json['codigoTxEmpresa'] as String? ?? '',
          cuentaOrigen: json['cuentaOrigen'] as String? ?? '',
          idBeneficiario: json['idBeneficiario'] as int? ?? 0,
          codigoConcepto: json['codigoConcepto'] as String? ?? '',
          cuentaDestino: json['cuentaDestino'] as String? ?? '',
          monto: (json['monto'] as num?)?.toDouble() ?? 0.00,
          descripcion: json['descripcion'] as String? ?? '',
          emailEnvio: json['emailEnvio'] as String? ?? '',
          celularEnvio: json['celularEnvio'] as String? ?? '',
          otpIngresado: json['otpIngresado'] as String? ?? '',
          otpGenerado: json['otpGenerado'] as String? ?? '',
        );

Map<String, dynamic> _$$ProcesaTransferenciaDirectaRequerimientoImplToJson(
        _$ProcesaTransferenciaDirectaRequerimientoImpl instance) =>
    <String, dynamic>{
      'idUsuario': instance.idUsuario,
      'codigoTxEmpresa': instance.codigoTxEmpresa,
      'cuentaOrigen': instance.cuentaOrigen,
      'idBeneficiario': instance.idBeneficiario,
      'codigoConcepto': instance.codigoConcepto,
      'cuentaDestino': instance.cuentaDestino,
      'monto': instance.monto,
      'descripcion': instance.descripcion,
      'emailEnvio': instance.emailEnvio,
      'celularEnvio': instance.celularEnvio,
      'otpIngresado': instance.otpIngresado,
      'otpGenerado': instance.otpGenerado,
    };

_$ProcesaTransfernciaDirectaRespuestaImpl
    _$$ProcesaTransfernciaDirectaRespuestaImplFromJson(
            Map<String, dynamic> json) =>
        _$ProcesaTransfernciaDirectaRespuestaImpl(
          documento: json['documento'] as String? ?? '',
          fecha: json['fecha'] as String? ?? '',
        );

Map<String, dynamic> _$$ProcesaTransfernciaDirectaRespuestaImplToJson(
        _$ProcesaTransfernciaDirectaRespuestaImpl instance) =>
    <String, dynamic>{
      'documento': instance.documento,
      'fecha': instance.fecha,
    };

_$ConsultaRequisitosTransferenciaRespuestaImpl
    _$$ConsultaRequisitosTransferenciaRespuestaImplFromJson(
            Map<String, dynamic> json) =>
        _$ConsultaRequisitosTransferenciaRespuestaImpl(
          comision: (json['comision'] as num?)?.toDouble() ?? 0.00,
          conceptosTransferencia:
              (json['conceptosTransferencia'] as List<dynamic>?)
                      ?.map((e) => ConceptoTransferenciaModel.fromJson(
                          e as Map<String, dynamic>))
                      .toList() ??
                  const [],
        );

Map<String, dynamic> _$$ConsultaRequisitosTransferenciaRespuestaImplToJson(
        _$ConsultaRequisitosTransferenciaRespuestaImpl instance) =>
    <String, dynamic>{
      'comision': instance.comision,
      'conceptosTransferencia': instance.conceptosTransferencia,
    };

_$ConceptoTransferenciaModelImpl _$$ConceptoTransferenciaModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ConceptoTransferenciaModelImpl(
      codigo: json['codigo'] as String? ?? '',
      nombre: json['nombre'] as String? ?? '',
    );

Map<String, dynamic> _$$ConceptoTransferenciaModelImplToJson(
        _$ConceptoTransferenciaModelImpl instance) =>
    <String, dynamic>{
      'codigo': instance.codigo,
      'nombre': instance.nombre,
    };

_$ProcesaAbonoPrestamoRequerimientoImpl
    _$$ProcesaAbonoPrestamoRequerimientoImplFromJson(
            Map<String, dynamic> json) =>
        _$ProcesaAbonoPrestamoRequerimientoImpl(
          idUsuario: json['idUsuario'] as int? ?? 0,
          codigoPrestamo: json['codigoPrestamo'] as String? ?? '',
          cuentaDebito: json['cuentaDebito'] as String? ?? '',
          monto: (json['monto'] as num?)?.toDouble() ?? 0.00,
          emailEnvio: json['emailEnvio'] as String? ?? '',
          concepto: json['concepto'] as String? ?? '',
          otpIngresado: json['otpIngresado'] as String? ?? '',
          otpGenerado: json['otpGenerado'] as String? ?? '',
        );

Map<String, dynamic> _$$ProcesaAbonoPrestamoRequerimientoImplToJson(
        _$ProcesaAbonoPrestamoRequerimientoImpl instance) =>
    <String, dynamic>{
      'idUsuario': instance.idUsuario,
      'codigoPrestamo': instance.codigoPrestamo,
      'cuentaDebito': instance.cuentaDebito,
      'monto': instance.monto,
      'emailEnvio': instance.emailEnvio,
      'concepto': instance.concepto,
      'otpIngresado': instance.otpIngresado,
      'otpGenerado': instance.otpGenerado,
    };

_$ProcesaAbonoPrestamoRespuestaImpl
    _$$ProcesaAbonoPrestamoRespuestaImplFromJson(Map<String, dynamic> json) =>
        _$ProcesaAbonoPrestamoRespuestaImpl(
          documento: json['documento'] as String? ?? '',
          fecha: json['fecha'] as String? ?? '',
        );

Map<String, dynamic> _$$ProcesaAbonoPrestamoRespuestaImplToJson(
        _$ProcesaAbonoPrestamoRespuestaImpl instance) =>
    <String, dynamic>{
      'documento': instance.documento,
      'fecha': instance.fecha,
    };

_$DetalleInversionModelImpl _$$DetalleInversionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DetalleInversionModelImpl(
      fecha: json['fecha'] == null
          ? null
          : DateTime.parse(json['fecha'] as String),
      retencion: (json['retencion'] as num?)?.toDouble() ?? 0.00,
      valor: (json['valor'] as num?)?.toDouble() ?? 0.00,
      item: json['item'] as String? ?? '',
      estado: json['estado'] as String? ?? '',
    );

Map<String, dynamic> _$$DetalleInversionModelImplToJson(
        _$DetalleInversionModelImpl instance) =>
    <String, dynamic>{
      'fecha': instance.fecha?.toIso8601String(),
      'retencion': instance.retencion,
      'valor': instance.valor,
      'item': instance.item,
      'estado': instance.estado,
    };

_$ConsultaDetalleInversionRequerimientoImpl
    _$$ConsultaDetalleInversionRequerimientoImplFromJson(
            Map<String, dynamic> json) =>
        _$ConsultaDetalleInversionRequerimientoImpl(
          codigoInversion: json['codigoInversion'] as String? ?? '',
          idUsuario: json['idUsuario'] as int? ?? 0,
        );

Map<String, dynamic> _$$ConsultaDetalleInversionRequerimientoImplToJson(
        _$ConsultaDetalleInversionRequerimientoImpl instance) =>
    <String, dynamic>{
      'codigoInversion': instance.codigoInversion,
      'idUsuario': instance.idUsuario,
    };

_$ConsultaDetalleInversionRespuestaImpl
    _$$ConsultaDetalleInversionRespuestaImplFromJson(
            Map<String, dynamic> json) =>
        _$ConsultaDetalleInversionRespuestaImpl(
          detalles: (json['detalles'] as List<dynamic>?)
                  ?.map((e) =>
                      DetalleInversionModel.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              const [],
        );

Map<String, dynamic> _$$ConsultaDetalleInversionRespuestaImplToJson(
        _$ConsultaDetalleInversionRespuestaImpl instance) =>
    <String, dynamic>{
      'detalles': instance.detalles,
    };

_$DepositoDetalleStateImpl _$$DepositoDetalleStateImplFromJson(
        Map<String, dynamic> json) =>
    _$DepositoDetalleStateImpl(
      deposito: json['deposito'] == null
          ? null
          : InversionModel.fromJson(json['deposito'] as Map<String, dynamic>),
      respuestaDetalles: json['respuestaDetalles'] == null
          ? null
          : ConsultaDetalleInversionRespuesta.fromJson(
              json['respuestaDetalles'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DepositoDetalleStateImplToJson(
        _$DepositoDetalleStateImpl instance) =>
    <String, dynamic>{
      'deposito': instance.deposito,
      'respuestaDetalles': instance.respuestaDetalles,
    };

_$PrestamoDetalleStateImpl _$$PrestamoDetalleStateImplFromJson(
        Map<String, dynamic> json) =>
    _$PrestamoDetalleStateImpl(
      prestamo: json['prestamo'] == null
          ? null
          : PrestamoModel.fromJson(json['prestamo'] as Map<String, dynamic>),
      respuestaDetalles: json['respuestaDetalles'] == null
          ? null
          : ConsultaDetalePrestamoRespuesta.fromJson(
              json['respuestaDetalles'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PrestamoDetalleStateImplToJson(
        _$PrestamoDetalleStateImpl instance) =>
    <String, dynamic>{
      'prestamo': instance.prestamo,
      'respuestaDetalles': instance.respuestaDetalles,
    };

_$TransferenciaStateImpl _$$TransferenciaStateImplFromJson(
        Map<String, dynamic> json) =>
    _$TransferenciaStateImpl(
      cuenta: json['cuenta'] == null
          ? null
          : CuentaModel.fromJson(json['cuenta'] as Map<String, dynamic>),
      beneficiario: json['beneficiario'] == null
          ? null
          : BeneficiarioModel.fromJson(
              json['beneficiario'] as Map<String, dynamic>),
      cuentaDestino: json['cuentaDestino'] == null
          ? null
          : CuentaModel.fromJson(json['cuentaDestino'] as Map<String, dynamic>),
      esValidacion: json['esValidacion'] as bool? ?? false,
      esComprobante: json['esComprobante'] as bool? ?? false,
      respuestaProceso: json['respuestaProceso'] == null
          ? null
          : ProcesaTransfernciaDirectaRespuesta.fromJson(
              json['respuestaProceso'] as Map<String, dynamic>),
      concepto: json['concepto'] == null
          ? null
          : ConceptoModel.fromJson(json['concepto'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TransferenciaStateImplToJson(
        _$TransferenciaStateImpl instance) =>
    <String, dynamic>{
      'cuenta': instance.cuenta,
      'beneficiario': instance.beneficiario,
      'cuentaDestino': instance.cuentaDestino,
      'esValidacion': instance.esValidacion,
      'esComprobante': instance.esComprobante,
      'respuestaProceso': instance.respuestaProceso,
      'concepto': instance.concepto,
    };

_$SeleccionBeneficiarioStateImpl _$$SeleccionBeneficiarioStateImplFromJson(
        Map<String, dynamic> json) =>
    _$SeleccionBeneficiarioStateImpl(
      beneficiarios: (json['beneficiarios'] as List<dynamic>?)
              ?.map(
                  (e) => BeneficiarioModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SeleccionBeneficiarioStateImplToJson(
        _$SeleccionBeneficiarioStateImpl instance) =>
    <String, dynamic>{
      'beneficiarios': instance.beneficiarios,
    };

_$EtiquetaValorReciboImpl _$$EtiquetaValorReciboImplFromJson(
        Map<String, dynamic> json) =>
    _$EtiquetaValorReciboImpl(
      etiqueta: json['etiqueta'] as String? ?? '',
      valor: json['valor'] as String? ?? '',
    );

Map<String, dynamic> _$$EtiquetaValorReciboImplToJson(
        _$EtiquetaValorReciboImpl instance) =>
    <String, dynamic>{
      'etiqueta': instance.etiqueta,
      'valor': instance.valor,
    };

_$AbonoStateImpl _$$AbonoStateImplFromJson(Map<String, dynamic> json) =>
    _$AbonoStateImpl(
      cuenta: json['cuenta'] == null
          ? null
          : CuentaModel.fromJson(json['cuenta'] as Map<String, dynamic>),
      prestamo: json['prestamo'] == null
          ? null
          : PrestamoModel.fromJson(json['prestamo'] as Map<String, dynamic>),
      esValidacion: json['esValidacion'] as bool? ?? false,
      esComprobante: json['esComprobante'] as bool? ?? false,
      respuestaProceso: json['respuestaProceso'] == null
          ? null
          : ProcesaAbonoPrestamoRespuesta.fromJson(
              json['respuestaProceso'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AbonoStateImplToJson(_$AbonoStateImpl instance) =>
    <String, dynamic>{
      'cuenta': instance.cuenta,
      'prestamo': instance.prestamo,
      'esValidacion': instance.esValidacion,
      'esComprobante': instance.esComprobante,
      'respuestaProceso': instance.respuestaProceso,
    };

_$BeneficiarioStateImpl _$$BeneficiarioStateImplFromJson(
        Map<String, dynamic> json) =>
    _$BeneficiarioStateImpl(
      beneficiarios: (json['beneficiarios'] as List<dynamic>?)
              ?.map(
                  (e) => BeneficiarioModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$BeneficiarioStateImplToJson(
        _$BeneficiarioStateImpl instance) =>
    <String, dynamic>{
      'beneficiarios': instance.beneficiarios,
    };

_$BeneficiarioEdicionStateImpl _$$BeneficiarioEdicionStateImplFromJson(
        Map<String, dynamic> json) =>
    _$BeneficiarioEdicionStateImpl(
      id: json['id'] as int? ?? 0,
      esInterno: json['esInterno'] as bool? ?? false,
      beneficiario: json['beneficiario'] == null
          ? null
          : BeneficiarioModel.fromJson(
              json['beneficiario'] as Map<String, dynamic>),
      requisitosRespuesta: json['requisitosRespuesta'] == null
          ? null
          : ConsultaRequisitosBeneficiarioRespuesta.fromJson(
              json['requisitosRespuesta'] as Map<String, dynamic>),
      esValidacion: json['esValidacion'] as bool? ?? false,
    );

Map<String, dynamic> _$$BeneficiarioEdicionStateImplToJson(
        _$BeneficiarioEdicionStateImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'esInterno': instance.esInterno,
      'beneficiario': instance.beneficiario,
      'requisitosRespuesta': instance.requisitosRespuesta,
      'esValidacion': instance.esValidacion,
    };

_$ConsultaAgenciaCajeroRespuestaImpl
    _$$ConsultaAgenciaCajeroRespuestaImplFromJson(Map<String, dynamic> json) =>
        _$ConsultaAgenciaCajeroRespuestaImpl(
          agenciaCajeroLista: (json['agenciaCajeroLista'] as List<dynamic>?)
                  ?.map((e) =>
                      AgenciaCajeroItem.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              const [],
        );

Map<String, dynamic> _$$ConsultaAgenciaCajeroRespuestaImplToJson(
        _$ConsultaAgenciaCajeroRespuestaImpl instance) =>
    <String, dynamic>{
      'agenciaCajeroLista': instance.agenciaCajeroLista,
    };

_$AgenciaCajeroItemImpl _$$AgenciaCajeroItemImplFromJson(
        Map<String, dynamic> json) =>
    _$AgenciaCajeroItemImpl(
      nombre: json['nombre'] as String? ?? '',
      descripcion: json['descripcion'] as String? ?? '',
      telefono: json['telefono'] as String? ?? '',
      latitud: (json['latitud'] as num?)?.toDouble() ?? 0.00,
      longitud: (json['longitud'] as num?)?.toDouble() ?? 0.00,
      esCajero: json['esCajero'] as bool? ?? false,
    );

Map<String, dynamic> _$$AgenciaCajeroItemImplToJson(
        _$AgenciaCajeroItemImpl instance) =>
    <String, dynamic>{
      'nombre': instance.nombre,
      'descripcion': instance.descripcion,
      'telefono': instance.telefono,
      'latitud': instance.latitud,
      'longitud': instance.longitud,
      'esCajero': instance.esCajero,
    };

_$AgenciaStateImpl _$$AgenciaStateImplFromJson(Map<String, dynamic> json) =>
    _$AgenciaStateImpl(
      agencias: (json['agencias'] as List<dynamic>?)
              ?.map(
                  (e) => AgenciaCajeroItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      agenciaSeleccionada: json['agenciaSeleccionada'] == null
          ? null
          : AgenciaCajeroItem.fromJson(
              json['agenciaSeleccionada'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AgenciaStateImplToJson(_$AgenciaStateImpl instance) =>
    <String, dynamic>{
      'agencias': instance.agencias,
      'agenciaSeleccionada': instance.agenciaSeleccionada,
    };

_$RegistroPinAccesoRequerimientoImpl
    _$$RegistroPinAccesoRequerimientoImplFromJson(Map<String, dynamic> json) =>
        _$RegistroPinAccesoRequerimientoImpl(
          pinAcceso: json['pinAcceso'] as String? ?? '',
        );

Map<String, dynamic> _$$RegistroPinAccesoRequerimientoImplToJson(
        _$RegistroPinAccesoRequerimientoImpl instance) =>
    <String, dynamic>{
      'pinAcceso': instance.pinAcceso,
    };

_$ValidaPinAccesoRequerimientoImpl _$$ValidaPinAccesoRequerimientoImplFromJson(
        Map<String, dynamic> json) =>
    _$ValidaPinAccesoRequerimientoImpl(
      idRegistro: json['idRegistro'] as int? ?? 0,
      textoOriginal: json['textoOriginal'] as String? ?? '',
      firma: json['firma'] as String? ?? '',
    );

Map<String, dynamic> _$$ValidaPinAccesoRequerimientoImplToJson(
        _$ValidaPinAccesoRequerimientoImpl instance) =>
    <String, dynamic>{
      'idRegistro': instance.idRegistro,
      'textoOriginal': instance.textoOriginal,
      'firma': instance.firma,
    };

_$ConceptoModelImpl _$$ConceptoModelImplFromJson(Map<String, dynamic> json) =>
    _$ConceptoModelImpl(
      codigo: json['codigo'] as String? ?? '',
      nombre: json['nombre'] as String? ?? '',
    );

Map<String, dynamic> _$$ConceptoModelImplToJson(_$ConceptoModelImpl instance) =>
    <String, dynamic>{
      'codigo': instance.codigo,
      'nombre': instance.nombre,
    };

_$SeleccionConceptoStateImpl _$$SeleccionConceptoStateImplFromJson(
        Map<String, dynamic> json) =>
    _$SeleccionConceptoStateImpl(
      conceptos: (json['conceptos'] as List<dynamic>?)
              ?.map((e) => ConceptoModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      concepto: json['concepto'] == null
          ? null
          : ConceptoModel.fromJson(json['concepto'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SeleccionConceptoStateImplToJson(
        _$SeleccionConceptoStateImpl instance) =>
    <String, dynamic>{
      'conceptos': instance.conceptos,
      'concepto': instance.concepto,
    };

_$ConsultaConceptosRespuestaImpl _$$ConsultaConceptosRespuestaImplFromJson(
        Map<String, dynamic> json) =>
    _$ConsultaConceptosRespuestaImpl(
      conceptoLista: (json['conceptoLista'] as List<dynamic>?)
              ?.map((e) => ConceptoModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ConsultaConceptosRespuestaImplToJson(
        _$ConsultaConceptosRespuestaImpl instance) =>
    <String, dynamic>{
      'conceptoLista': instance.conceptoLista,
    };

_$ComunItemModelImpl _$$ComunItemModelImplFromJson(Map<String, dynamic> json) =>
    _$ComunItemModelImpl(
      codigo: json['codigo'] as String? ?? '',
      nombre: json['nombre'] as String? ?? '',
    );

Map<String, dynamic> _$$ComunItemModelImplToJson(
        _$ComunItemModelImpl instance) =>
    <String, dynamic>{
      'codigo': instance.codigo,
      'nombre': instance.nombre,
    };
