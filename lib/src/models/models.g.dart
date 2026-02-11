// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseRequerimientoImpl _$$BaseRequerimientoImplFromJson(
        Map<String, dynamic> json) =>
    _$BaseRequerimientoImpl(
      idUsuario: (json['idUsuario'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$BaseRequerimientoImplToJson(
        _$BaseRequerimientoImpl instance) =>
    <String, dynamic>{
      'idUsuario': instance.idUsuario,
    };

_$RegistroRequerimientoImpl _$$RegistroRequerimientoImplFromJson(
        Map<String, dynamic> json) =>
    _$RegistroRequerimientoImpl(
      identificacion: json['identificacion'] as String? ?? '',
      codigoUsuario: json['codigoUsuario'] as String? ?? '',
      imagen: json['imagen'] as String? ?? '',
      frase: json['frase'] as String? ?? '',
      otpIngresado: json['otpIngresado'] as String? ?? '',
    );

Map<String, dynamic> _$$RegistroRequerimientoImplToJson(
        _$RegistroRequerimientoImpl instance) =>
    <String, dynamic>{
      'identificacion': instance.identificacion,
      'codigoUsuario': instance.codigoUsuario,
      'imagen': instance.imagen,
      'frase': instance.frase,
      'otpIngresado': instance.otpIngresado,
    };

_$BaseRespuestaImpl _$$BaseRespuestaImplFromJson(Map<String, dynamic> json) =>
    _$BaseRespuestaImpl(
      mbCodigoUsuario: json['mbCodigoUsuario'] as String? ?? '',
      mbPwdUsuario: json['mbPwdUsuario'] as String? ?? '',
      mbMaquina: json['mbMaquina'] as String? ?? '',
      existeError: json['sF_ExisteError'] as bool? ?? false,
      error: json['sF_Error'] as String? ?? '',
      stackTrace: json['stackTrace'] as String? ?? '',
      sfConCabecera: json['sfConCabecera'] as bool? ?? false,
      mensajeError: json['mensajeError'] as String? ?? '',
    );

Map<String, dynamic> _$$BaseRespuestaImplToJson(_$BaseRespuestaImpl instance) =>
    <String, dynamic>{
      'mbCodigoUsuario': instance.mbCodigoUsuario,
      'mbPwdUsuario': instance.mbPwdUsuario,
      'mbMaquina': instance.mbMaquina,
      'sF_ExisteError': instance.existeError,
      'sF_Error': instance.error,
      'stackTrace': instance.stackTrace,
      'sfConCabecera': instance.sfConCabecera,
      'mensajeError': instance.mensajeError,
    };

_$CambioClaveRequerimientoImpl _$$CambioClaveRequerimientoImplFromJson(
        Map<String, dynamic> json) =>
    _$CambioClaveRequerimientoImpl(
      codigoUsuario: json['codigoUsuario'] as String? ?? '',
      pwdAnterior: json['pwdAnterior'] as String? ?? '',
      pwdNueva: json['pwdNueva'] as String? ?? '',
    );

Map<String, dynamic> _$$CambioClaveRequerimientoImplToJson(
        _$CambioClaveRequerimientoImpl instance) =>
    <String, dynamic>{
      'codigoUsuario': instance.codigoUsuario,
      'pwdAnterior': instance.pwdAnterior,
      'pwdNueva': instance.pwdNueva,
    };

_$LoginRequerimientoImpl _$$LoginRequerimientoImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginRequerimientoImpl(
      idUsuario: (json['idUsuario'] as num?)?.toInt() ?? 0,
      idRegistro: (json['idRegistro'] as num?)?.toInt() ?? 0,
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

_$LoginClienteRequerimientoImpl _$$LoginClienteRequerimientoImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginClienteRequerimientoImpl(
      codigoUsuario: json['codigoUsuario'] as String? ?? '',
      pwdUsuario: json['pwdUsuario'] as String? ?? '',
      otpIngresado: json['otpIngresado'] as String? ?? '',
      imagen: json['imagen'] as String? ?? '',
      Frase: json['Frase'] as String? ?? '',
      idUsuario: (json['idUsuario'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$LoginClienteRequerimientoImplToJson(
        _$LoginClienteRequerimientoImpl instance) =>
    <String, dynamic>{
      'codigoUsuario': instance.codigoUsuario,
      'pwdUsuario': instance.pwdUsuario,
      'otpIngresado': instance.otpIngresado,
      'imagen': instance.imagen,
      'Frase': instance.Frase,
      'idUsuario': instance.idUsuario,
    };

_$LoginRespuestaImpl _$$LoginRespuestaImplFromJson(Map<String, dynamic> json) =>
    _$LoginRespuestaImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      idRegistro: (json['idRegistro'] as num?)?.toInt() ?? 0,
      realizaCambioUsuario: json['realizaCambioUsuario'] as bool? ?? false,
      realizaCambioClave: json['realizaCambioClave'] as bool? ?? false,
      identificacion: json['identificacion'] as String? ?? '',
      nombre: json['nombre'] as String? ?? '',
      segundosInactividad: (json['segundosInactividad'] as num?)?.toInt() ?? 0,
      fechaUltimoAcceso: json['fechaUltimoAcceso'] as String? ?? '',
      existError: json['sF_ExisteError'] as bool? ?? false,
      error: json['sF_Error'] as String? ?? '',
      mensajeCambioClave: json['mensajeCambioClave'] as String? ?? '',
      token: json['token'] as String? ?? '',
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
      'token': instance.token,
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
      id: (json['id'] as num?)?.toInt() ?? 0,
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
      segundosInactividad: (json['segundosInactividad'] as num?)?.toInt() ?? 60,
      usuario: json['usuario'] == null
          ? null
          : UsuarioModel.fromJson(json['usuario'] as Map<String, dynamic>),
      loginRespuesta: json['loginRespuesta'] == null
          ? null
          : LoginRespuesta.fromJson(
              json['loginRespuesta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ValidacionOtpAccesoRespuestaImplToJson(
        _$ValidacionOtpAccesoRespuestaImpl instance) =>
    <String, dynamic>{
      'esValido': instance.esValido,
      'token': instance.token,
      'segundosInactividad': instance.segundosInactividad,
      'usuario': instance.usuario,
      'loginRespuesta': instance.loginRespuesta,
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

_$RecuperarContraseniaStateImpl _$$RecuperarContraseniaStateImplFromJson(
        Map<String, dynamic> json) =>
    _$RecuperarContraseniaStateImpl(
      estaValidado: json['estaValidado'] as bool? ?? false,
      obscurecerClave: json['obscurecerClave'] as bool? ?? false,
      modoConfirmacion: json['modoConfirmacion'] as bool? ?? false,
      permiteEditarUsuario: json['permiteEditarUsuario'] as bool,
    );

Map<String, dynamic> _$$RecuperarContraseniaStateImplToJson(
        _$RecuperarContraseniaStateImpl instance) =>
    <String, dynamic>{
      'estaValidado': instance.estaValidado,
      'obscurecerClave': instance.obscurecerClave,
      'modoConfirmacion': instance.modoConfirmacion,
      'permiteEditarUsuario': instance.permiteEditarUsuario,
    };

_$RecuperarUsuarioStateImpl _$$RecuperarUsuarioStateImplFromJson(
        Map<String, dynamic> json) =>
    _$RecuperarUsuarioStateImpl(
      estaValidado: json['estaValidado'] as bool? ?? false,
      obscurecerClave: json['obscurecerClave'] as bool? ?? false,
      modoConfirmacion: json['modoConfirmacion'] as bool? ?? false,
      permiteEditarUsuario: json['permiteEditarUsuario'] as bool,
    );

Map<String, dynamic> _$$RecuperarUsuarioStateImplToJson(
        _$RecuperarUsuarioStateImpl instance) =>
    <String, dynamic>{
      'estaValidado': instance.estaValidado,
      'obscurecerClave': instance.obscurecerClave,
      'modoConfirmacion': instance.modoConfirmacion,
      'permiteEditarUsuario': instance.permiteEditarUsuario,
    };

_$ActivaCuentaStateImpl _$$ActivaCuentaStateImplFromJson(
        Map<String, dynamic> json) =>
    _$ActivaCuentaStateImpl(
      estaValidado: json['estaValidado'] as bool? ?? false,
      obscurecerClave: json['obscurecerClave'] as bool? ?? false,
      modoConfirmacion: json['modoConfirmacion'] as bool? ?? false,
      permiteEditarUsuario: json['permiteEditarUsuario'] as bool,
    );

Map<String, dynamic> _$$ActivaCuentaStateImplToJson(
        _$ActivaCuentaStateImpl instance) =>
    <String, dynamic>{
      'estaValidado': instance.estaValidado,
      'obscurecerClave': instance.obscurecerClave,
      'modoConfirmacion': instance.modoConfirmacion,
      'permiteEditarUsuario': instance.permiteEditarUsuario,
    };

_$CambiarContraseniaStateImpl _$$CambiarContraseniaStateImplFromJson(
        Map<String, dynamic> json) =>
    _$CambiarContraseniaStateImpl(
      modoConfirmacion: json['modoConfirmacion'] as bool? ?? false,
      obscurecerClave: json['obscurecerClave'] as bool? ?? false,
      permiteEditarUsuario: json['permiteEditarUsuario'] as bool,
    );

Map<String, dynamic> _$$CambiarContraseniaStateImplToJson(
        _$CambiarContraseniaStateImpl instance) =>
    <String, dynamic>{
      'modoConfirmacion': instance.modoConfirmacion,
      'obscurecerClave': instance.obscurecerClave,
      'permiteEditarUsuario': instance.permiteEditarUsuario,
    };

_$RegistroPinStateImpl _$$RegistroPinStateImplFromJson(
        Map<String, dynamic> json) =>
    _$RegistroPinStateImpl(
      modoConfirmacion: json['modoConfirmacion'] as bool? ?? false,
      isLoading: json['isLoading'] as bool? ?? false,
      pinAcceso: json['pinAcceso'] as String? ?? '',
    );

Map<String, dynamic> _$$RegistroPinStateImplToJson(
        _$RegistroPinStateImpl instance) =>
    <String, dynamic>{
      'modoConfirmacion': instance.modoConfirmacion,
      'isLoading': instance.isLoading,
      'pinAcceso': instance.pinAcceso,
    };

_$LoginPinStateImpl _$$LoginPinStateImplFromJson(Map<String, dynamic> json) =>
    _$LoginPinStateImpl(
      modoConfirmacion: json['modoConfirmacion'] as bool? ?? false,
      pinAcceso: json['pinAcceso'] as String? ?? '',
    );

Map<String, dynamic> _$$LoginPinStateImplToJson(_$LoginPinStateImpl instance) =>
    <String, dynamic>{
      'modoConfirmacion': instance.modoConfirmacion,
      'pinAcceso': instance.pinAcceso,
    };

_$CambiarContraseniaLoginStateImpl _$$CambiarContraseniaLoginStateImplFromJson(
        Map<String, dynamic> json) =>
    _$CambiarContraseniaLoginStateImpl(
      modoConfirmacion: json['modoConfirmacion'] as bool? ?? false,
      obscurecerClave: json['obscurecerClave'] as bool? ?? false,
      permiteEditarUsuario: json['permiteEditarUsuario'] as bool,
    );

Map<String, dynamic> _$$CambiarContraseniaLoginStateImplToJson(
        _$CambiarContraseniaLoginStateImpl instance) =>
    <String, dynamic>{
      'modoConfirmacion': instance.modoConfirmacion,
      'obscurecerClave': instance.obscurecerClave,
      'permiteEditarUsuario': instance.permiteEditarUsuario,
    };

_$PersonaModelImpl _$$PersonaModelImplFromJson(Map<String, dynamic> json) =>
    _$PersonaModelImpl(
      identificacion: json['identificacion'] as String? ?? '',
      nombre: json['nombre'] as String? ?? '',
      estadoCivil: json['estadoCivil'] as String? ?? '',
      direccion: json['direccion'] as String? ?? '',
      telefono: json['telefono'] as String? ?? '',
      fechaNacimiento: json['fechaNacimiento'] == null
          ? null
          : DateTime.parse(json['fechaNacimiento'] as String),
      email: json['email'] as String? ?? '',
    );

Map<String, dynamic> _$$PersonaModelImplToJson(_$PersonaModelImpl instance) =>
    <String, dynamic>{
      'identificacion': instance.identificacion,
      'nombre': instance.nombre,
      'estadoCivil': instance.estadoCivil,
      'direccion': instance.direccion,
      'telefono': instance.telefono,
      'fechaNacimiento': instance.fechaNacimiento?.toIso8601String(),
      'email': instance.email,
    };

_$ClienteMontosLimiteImpl _$$ClienteMontosLimiteImplFromJson(
        Map<String, dynamic> json) =>
    _$ClienteMontosLimiteImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      idClienteRegistro: (json['idClienteRegistro'] as num?)?.toInt() ?? 0,
      idCliente: (json['idCliente'] as num?)?.toInt() ?? 0,
      limiteTransaccion:
          (json['limiteTransaccion'] as num?)?.toDouble() ?? 0.00,
      limiteTransaccionDiaria:
          (json['limiteTransaccionDiaria'] as num?)?.toDouble() ?? 0.00,
      fechaRegistro: json['fechaRegistro'] == null
          ? null
          : DateTime.parse(json['fechaRegistro'] as String),
      fechaSistema: json['fechaSistema'] == null
          ? null
          : DateTime.parse(json['fechaSistema'] as String),
    );

Map<String, dynamic> _$$ClienteMontosLimiteImplToJson(
        _$ClienteMontosLimiteImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'idClienteRegistro': instance.idClienteRegistro,
      'idCliente': instance.idCliente,
      'limiteTransaccion': instance.limiteTransaccion,
      'limiteTransaccionDiaria': instance.limiteTransaccionDiaria,
      'fechaRegistro': instance.fechaRegistro?.toIso8601String(),
      'fechaSistema': instance.fechaSistema?.toIso8601String(),
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
      persona: json['persona'] == null
          ? null
          : PersonaModel.fromJson(json['persona'] as Map<String, dynamic>),
      cliMontosLimites: json['cliMontosLimites'] == null
          ? null
          : ClienteMontosLimite.fromJson(
              json['cliMontosLimites'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PosicionConsolidadaRespuestaImplToJson(
        _$PosicionConsolidadaRespuestaImpl instance) =>
    <String, dynamic>{
      'cuentas': instance.cuentas,
      'inversiones': instance.inversiones,
      'prestamos': instance.prestamos,
      'persona': instance.persona,
      'cliMontosLimites': instance.cliMontosLimites,
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
      tasa: (json['tasa'] as num?)?.toDouble() ?? 0.00,
      totalTasa: (json['totalTasa'] as num?)?.toDouble() ?? 0.00,
      plazo: (json['plazo'] as num?)?.toInt() ?? 0,
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
      'tasa': instance.tasa,
      'totalTasa': instance.totalTasa,
      'plazo': instance.plazo,
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
      fechaProximoPago: json['fechaProximoPago'] == null
          ? null
          : DateTime.parse(json['fechaProximoPago'] as String),
      cuotasCanceladas: json['cuotasCanceladas'] as String? ?? '',
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
      'fechaProximoPago': instance.fechaProximoPago?.toIso8601String(),
      'cuotasCanceladas': instance.cuotasCanceladas,
    };

_$EstadoCuentaStateStateImpl _$$EstadoCuentaStateStateImplFromJson(
        Map<String, dynamic> json) =>
    _$EstadoCuentaStateStateImpl(
      isLoading: json['isLoading'] as bool? ?? true,
      estadoCuenta: json['estadoCuenta'] == null
          ? null
          : ConsultaMovimientosCuentaRespuesta.fromJson(
              json['estadoCuenta'] as Map<String, dynamic>),
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$EstadoCuentaStateStateImplToJson(
        _$EstadoCuentaStateStateImpl instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'estadoCuenta': instance.estadoCuenta,
      'errorMessage': instance.errorMessage,
    };

_$PosicionConsolidadaStateImpl _$$PosicionConsolidadaStateImplFromJson(
        Map<String, dynamic> json) =>
    _$PosicionConsolidadaStateImpl(
      isLoading: json['isLoading'] as bool? ?? true,
      posicionConsolidada: json['posicionConsolidada'] == null
          ? null
          : PosicionConsolidadaRespuesta.fromJson(
              json['posicionConsolidada'] as Map<String, dynamic>),
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$PosicionConsolidadaStateImplToJson(
        _$PosicionConsolidadaStateImpl instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'posicionConsolidada': instance.posicionConsolidada,
      'errorMessage': instance.errorMessage,
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
          idUsuario: (json['idUsuario'] as num?)?.toInt() ?? 0,
          codigoCuenta: json['codigoCuenta'] as String? ?? '',
          numeroRegistros: (json['numeroRegistros'] as num?)?.toInt() ?? 0,
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
                      MovimientoModel.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              const [],
          periodos: (json['periodos'] as List<dynamic>?)
                  ?.map((e) =>
                      ResumenMesModel.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              const [],
        );

Map<String, dynamic> _$$ConsultaMovimientosCuentaRespuestaImplToJson(
        _$ConsultaMovimientosCuentaRespuestaImpl instance) =>
    <String, dynamic>{
      'movimientos': instance.movimientos,
      'periodos': instance.periodos,
    };

_$MovimientoModelImpl _$$MovimientoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MovimientoModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
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

Map<String, dynamic> _$$MovimientoModelImplToJson(
        _$MovimientoModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fecha': instance.fecha?.toIso8601String(),
      'transaccion': instance.transaccion,
      'cheque': instance.cheque,
      'deposito': instance.deposito,
      'retiro': instance.retiro,
      'saldo': instance.saldo,
      'oficina': instance.oficina,
      'documento': instance.documento,
    };

_$ResumenMesModelImpl _$$ResumenMesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ResumenMesModelImpl(
      nombreMes: json['nombreMes'] as String? ?? '',
      numeroCuenta: json['numeroCuenta'] as String? ?? '',
      nombreCliente: json['nombreCliente'] as String? ?? '',
      tipoCuenta: json['tipoCuenta'] as String? ?? '',
      anio: (json['anio'] as num?)?.toInt() ?? 0,
      fechaInicio: json['fechaInicio'] == null
          ? null
          : DateTime.parse(json['fechaInicio'] as String),
      fechaFin: json['fechaFin'] == null
          ? null
          : DateTime.parse(json['fechaFin'] as String),
      saldoAnterior: (json['saldoAnterior'] as num?)?.toDouble() ?? 0.00,
      totalCreditos: (json['totalCreditos'] as num?)?.toDouble() ?? 0.00,
      totalDebitos: (json['totalDebitos'] as num?)?.toDouble() ?? 0.00,
      saldoActual: (json['saldoActual'] as num?)?.toDouble() ?? 0.00,
      saldoPromedio: (json['saldoPromedio'] as num?)?.toDouble() ?? 0.00,
    );

Map<String, dynamic> _$$ResumenMesModelImplToJson(
        _$ResumenMesModelImpl instance) =>
    <String, dynamic>{
      'nombreMes': instance.nombreMes,
      'numeroCuenta': instance.numeroCuenta,
      'nombreCliente': instance.nombreCliente,
      'tipoCuenta': instance.tipoCuenta,
      'anio': instance.anio,
      'fechaInicio': instance.fechaInicio?.toIso8601String(),
      'fechaFin': instance.fechaFin?.toIso8601String(),
      'saldoAnterior': instance.saldoAnterior,
      'totalCreditos': instance.totalCreditos,
      'totalDebitos': instance.totalDebitos,
      'saldoActual': instance.saldoActual,
      'saldoPromedio': instance.saldoPromedio,
    };

_$ConsultaMovimientosInversionRequerimientoImpl
    _$$ConsultaMovimientosInversionRequerimientoImplFromJson(
            Map<String, dynamic> json) =>
        _$ConsultaMovimientosInversionRequerimientoImpl(
          codigoCuenta: json['codigoCuenta'] as String? ?? '',
          idUsuario: (json['idUsuario'] as num?)?.toInt() ?? 0,
          numeroRegistros: (json['numeroRegistros'] as num?)?.toInt() ?? 0,
        );

Map<String, dynamic> _$$ConsultaMovimientosInversionRequerimientoImplToJson(
        _$ConsultaMovimientosInversionRequerimientoImpl instance) =>
    <String, dynamic>{
      'codigoCuenta': instance.codigoCuenta,
      'idUsuario': instance.idUsuario,
      'numeroRegistros': instance.numeroRegistros,
    };

_$ConsultaMovimientosPrestamoRespuestaImpl
    _$$ConsultaMovimientosPrestamoRespuestaImplFromJson(
            Map<String, dynamic> json) =>
        _$ConsultaMovimientosPrestamoRespuestaImpl(
          listaPrestamoMovimiento:
              (json['listaPrestamoMovimiento'] as List<dynamic>?)
                      ?.map((e) => MovimientoPrestamoModel.fromJson(
                          e as Map<String, dynamic>))
                      .toList() ??
                  const [],
        );

Map<String, dynamic> _$$ConsultaMovimientosPrestamoRespuestaImplToJson(
        _$ConsultaMovimientosPrestamoRespuestaImpl instance) =>
    <String, dynamic>{
      'listaPrestamoMovimiento': instance.listaPrestamoMovimiento,
    };

_$MovimientoPrestamoModelImpl _$$MovimientoPrestamoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MovimientoPrestamoModelImpl(
      fechaProceso: json['fechaProceso'] == null
          ? null
          : DateTime.parse(json['fechaProceso'] as String),
      fechaSistema: json['fechaSistema'] == null
          ? null
          : DateTime.parse(json['fechaSistema'] as String),
      documento: json['documento'] as String? ?? '',
      transaccion: json['transaccion'] as String? ?? '',
      valor: (json['valor'] as num?)?.toDouble() ?? 0.00,
      saldo: (json['saldo'] as num?)?.toDouble() ?? 0.00,
      tipo: json['tipo'] as String? ?? '',
      agencia: json['agencia'] as String? ?? '',
      usuario: json['usuario'] as String? ?? '',
      listaRubroMovimiento: (json['listaRubroMovimiento'] as List<dynamic>?)
              ?.map((e) => RubroMovimientoPrestamoModel.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$MovimientoPrestamoModelImplToJson(
        _$MovimientoPrestamoModelImpl instance) =>
    <String, dynamic>{
      'fechaProceso': instance.fechaProceso?.toIso8601String(),
      'fechaSistema': instance.fechaSistema?.toIso8601String(),
      'documento': instance.documento,
      'transaccion': instance.transaccion,
      'valor': instance.valor,
      'saldo': instance.saldo,
      'tipo': instance.tipo,
      'agencia': instance.agencia,
      'usuario': instance.usuario,
      'listaRubroMovimiento': instance.listaRubroMovimiento,
    };

_$RubroMovimientoPrestamoModelImpl _$$RubroMovimientoPrestamoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RubroMovimientoPrestamoModelImpl(
      indice: (json['indice'] as num?)?.toInt() ?? 0,
      documento: json['documento'] as String? ?? '',
      cuota: (json['cuota'] as num?)?.toInt() ?? 0,
      rubro: json['rubro'] as String? ?? '',
      valor: (json['valor'] as num?)?.toDouble() ?? 0.00,
    );

Map<String, dynamic> _$$RubroMovimientoPrestamoModelImplToJson(
        _$RubroMovimientoPrestamoModelImpl instance) =>
    <String, dynamic>{
      'indice': instance.indice,
      'documento': instance.documento,
      'cuota': instance.cuota,
      'rubro': instance.rubro,
      'valor': instance.valor,
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
          idUsuario: (json['idUsuario'] as num?)?.toInt() ?? 0,
          fechaInicio: json['fechaInicio'] == null
              ? null
              : DateTime.parse(json['fechaInicio'] as String),
          fechaFin: json['fechaFin'] == null
              ? null
              : DateTime.parse(json['fechaFin'] as String),
          numeroRegistros: (json['numeroRegistros'] as num?)?.toInt() ?? 0,
        );

Map<String, dynamic> _$$ConsultaDetallePrestamoRequerimientoImplToJson(
        _$ConsultaDetallePrestamoRequerimientoImpl instance) =>
    <String, dynamic>{
      'codigoPrestamo': instance.codigoPrestamo,
      'idUsuario': instance.idUsuario,
      'fechaInicio': instance.fechaInicio?.toIso8601String(),
      'fechaFin': instance.fechaFin?.toIso8601String(),
      'numeroRegistros': instance.numeroRegistros,
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
      cuotasVencidas: (json['cuotasVencidas'] as num?)?.toInt() ?? 0,
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
      numeroCuota: (json['numeroCuota'] as num?)?.toInt() ?? 0,
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
      id: (json['id'] as num?)?.toInt() ?? 0,
      idUsuario: (json['idUsuario'] as num?)?.toInt() ?? 0,
      codigoTipoId: json['codigoTipoId'] as String? ?? '',
      identificacion: json['identificacion'] as String? ?? '',
      nombre: json['nombre'] as String? ?? '',
      apellido: json['apellido'] as String? ?? '',
      codigoTipoInstitucion: json['codigoTipoInstitucion'] as String? ?? '',
      tipoInstitucion: json['tipoInstitucion'] as String? ?? '',
      idInstitucion: (json['idInstitucion'] as num?)?.toInt() ?? 0,
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
      id: (json['id'] as num?)?.toInt() ?? 0,
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
          idUsuario: (json['idUsuario'] as num?)?.toInt() ?? 0,
          cuentaOrigen: json['cuentaOrigen'] as String? ?? '',
          idBeneficiario: (json['idBeneficiario'] as num?)?.toInt() ?? 0,
          codigoConcepto: json['codigoConcepto'] as String? ?? '',
          institucion: json['institucion'] as String? ?? '',
          cuentaDestino: json['cuentaDestino'] as String? ?? '',
          monto: (json['monto'] as num?)?.toDouble() ?? 0.00,
          descripcion: json['descripcion'] as String? ?? '',
          emailEnvio: json['emailEnvio'] as String? ?? '',
          celularEnvio: json['celularEnvio'] as String? ?? '',
          esDirecta: json['esDirecta'] as bool? ?? false,
          beneficiario: json['beneficiario'] == null
              ? null
              : BeneficiarioModel.fromJson(
                  json['beneficiario'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ValidaTransferenciaYGeneraOtpRequerimientoImplToJson(
        _$ValidaTransferenciaYGeneraOtpRequerimientoImpl instance) =>
    <String, dynamic>{
      'idUsuario': instance.idUsuario,
      'cuentaOrigen': instance.cuentaOrigen,
      'idBeneficiario': instance.idBeneficiario,
      'codigoConcepto': instance.codigoConcepto,
      'institucion': instance.institucion,
      'cuentaDestino': instance.cuentaDestino,
      'monto': instance.monto,
      'descripcion': instance.descripcion,
      'emailEnvio': instance.emailEnvio,
      'celularEnvio': instance.celularEnvio,
      'esDirecta': instance.esDirecta,
      'beneficiario': instance.beneficiario,
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
          idUsuario: (json['idUsuario'] as num?)?.toInt() ?? 0,
          codigoTxEmpresa: json['codigoTxEmpresa'] as String? ?? '',
          cuentaOrigen: json['cuentaOrigen'] as String? ?? '',
          idBeneficiario: (json['idBeneficiario'] as num?)?.toInt() ?? 0,
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
          idUsuario: (json['idUsuario'] as num?)?.toInt() ?? 0,
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
      tasa: (json['tasa'] as num?)?.toDouble() ?? 0.00,
      totalTasa: (json['totalTasa'] as num?)?.toDouble() ?? 0.00,
      item: json['item'] as String? ?? '',
      estado: json['estado'] as String? ?? '',
    );

Map<String, dynamic> _$$DetalleInversionModelImplToJson(
        _$DetalleInversionModelImpl instance) =>
    <String, dynamic>{
      'fecha': instance.fecha?.toIso8601String(),
      'retencion': instance.retencion,
      'valor': instance.valor,
      'tasa': instance.tasa,
      'totalTasa': instance.totalTasa,
      'item': instance.item,
      'estado': instance.estado,
    };

_$ConsultaDetalleInversionRequerimientoImpl
    _$$ConsultaDetalleInversionRequerimientoImplFromJson(
            Map<String, dynamic> json) =>
        _$ConsultaDetalleInversionRequerimientoImpl(
          codigoInversion: json['codigoInversion'] as String? ?? '',
          idUsuario: (json['idUsuario'] as num?)?.toInt() ?? 0,
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
      respuestaMovimientos: json['respuestaMovimientos'] == null
          ? null
          : ConsultaMovimientosInversionRespuesta.fromJson(
              json['respuestaMovimientos'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DepositoDetalleStateImplToJson(
        _$DepositoDetalleStateImpl instance) =>
    <String, dynamic>{
      'deposito': instance.deposito,
      'respuestaDetalles': instance.respuestaDetalles,
      'respuestaMovimientos': instance.respuestaMovimientos,
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
      respuestaMovimientos: json['respuestaMovimientos'] == null
          ? null
          : ConsultaMovimientosInversionRespuesta.fromJson(
              json['respuestaMovimientos'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PrestamoDetalleStateImplToJson(
        _$PrestamoDetalleStateImpl instance) =>
    <String, dynamic>{
      'prestamo': instance.prestamo,
      'respuestaDetalles': instance.respuestaDetalles,
      'respuestaMovimientos': instance.respuestaMovimientos,
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
      requisitosTransferencia: json['requisitosTransferencia'] == null
          ? null
          : ConsultaRequisitosTransferenciasRespuesta.fromJson(
              json['requisitosTransferencia'] as Map<String, dynamic>),
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
      'requisitosTransferencia': instance.requisitosTransferencia,
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
      id: (json['id'] as num?)?.toInt() ?? 0,
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
          idUsuario: (json['idUsuario'] as num?)?.toInt() ?? 0,
        );

Map<String, dynamic> _$$RegistroPinAccesoRequerimientoImplToJson(
        _$RegistroPinAccesoRequerimientoImpl instance) =>
    <String, dynamic>{
      'pinAcceso': instance.pinAcceso,
      'idUsuario': instance.idUsuario,
    };

_$ValidaPinAccesoRequerimientoImpl _$$ValidaPinAccesoRequerimientoImplFromJson(
        Map<String, dynamic> json) =>
    _$ValidaPinAccesoRequerimientoImpl(
      idUsuario: (json['idUsuario'] as num?)?.toInt() ?? 0,
      idRegistro: (json['idRegistro'] as num?)?.toInt() ?? 0,
      textoOriginal: json['textoOriginal'] as String? ?? '',
      firma: json['firma'] as String? ?? '',
    );

Map<String, dynamic> _$$ValidaPinAccesoRequerimientoImplToJson(
        _$ValidaPinAccesoRequerimientoImpl instance) =>
    <String, dynamic>{
      'idUsuario': instance.idUsuario,
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

_$PagoDeunaStateImpl _$$PagoDeunaStateImplFromJson(Map<String, dynamic> json) =>
    _$PagoDeunaStateImpl(
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
      montoSoloLectura: json['montoSoloLectura'] as bool? ?? false,
      infoCuentaVinculada: json['infoCuentaVinculada'] == null
          ? null
          : ConsultaCuentaVinculadaQRRespuesta.fromJson(
              json['infoCuentaVinculada'] as Map<String, dynamic>),
      requerimientoProceso: json['requerimientoProceso'] == null
          ? null
          : ProcesaPagoQRRequerimiento.fromJson(
              json['requerimientoProceso'] as Map<String, dynamic>),
      respuestaProceso: json['respuestaProceso'] == null
          ? null
          : ProcesaPagoQRRespuesta.fromJson(
              json['respuestaProceso'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PagoDeunaStateImplToJson(
        _$PagoDeunaStateImpl instance) =>
    <String, dynamic>{
      'cuenta': instance.cuenta,
      'beneficiario': instance.beneficiario,
      'cuentaDestino': instance.cuentaDestino,
      'esValidacion': instance.esValidacion,
      'esComprobante': instance.esComprobante,
      'montoSoloLectura': instance.montoSoloLectura,
      'infoCuentaVinculada': instance.infoCuentaVinculada,
      'requerimientoProceso': instance.requerimientoProceso,
      'respuestaProceso': instance.respuestaProceso,
    };

_$ConsultaCuentaVinculadaQRRequerimientoImpl
    _$$ConsultaCuentaVinculadaQRRequerimientoImplFromJson(
            Map<String, dynamic> json) =>
        _$ConsultaCuentaVinculadaQRRequerimientoImpl(
          value: json['value'] as String,
        );

Map<String, dynamic> _$$ConsultaCuentaVinculadaQRRequerimientoImplToJson(
        _$ConsultaCuentaVinculadaQRRequerimientoImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

_$ConsultaCuentaVinculadaQRRespuestaImpl
    _$$ConsultaCuentaVinculadaQRRespuestaImplFromJson(
            Map<String, dynamic> json) =>
        _$ConsultaCuentaVinculadaQRRespuestaImpl(
          transactionId: json['transactionId'] as String,
          trackingId: json['trackingId'] as String,
          account:
              AccountModel.fromJson(json['account'] as Map<String, dynamic>),
          montoDisponible:
              (json['montoDisponible'] as num?)?.toDouble() ?? 0.00,
        );

Map<String, dynamic> _$$ConsultaCuentaVinculadaQRRespuestaImplToJson(
        _$ConsultaCuentaVinculadaQRRespuestaImpl instance) =>
    <String, dynamic>{
      'transactionId': instance.transactionId,
      'trackingId': instance.trackingId,
      'account': instance.account,
      'montoDisponible': instance.montoDisponible,
    };

_$AccountModelImpl _$$AccountModelImplFromJson(Map<String, dynamic> json) =>
    _$AccountModelImpl(
      name: json['name'] as String? ?? '',
      number: json['number'] as String? ?? '',
      maskedNumber: json['maskedNumber'] as String? ?? '',
      documentNumber: json['documentNumber'] as String? ?? '',
      documentType: json['documentType'] as String? ?? '',
      accountType: json['accountType'] as String? ?? '',
      clientType: json['clientType'] as String? ?? '',
      qrType: json['qrType'] as String? ?? '',
      accountVersion: json['accountVersion'] as String? ?? '',
      amount: json['amount'] as String? ?? '',
      currencyCode: json['currencyCode'] as String? ?? '',
      merchant:
          MerchantModel.fromJson(json['merchant'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AccountModelImplToJson(_$AccountModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'number': instance.number,
      'maskedNumber': instance.maskedNumber,
      'documentNumber': instance.documentNumber,
      'documentType': instance.documentType,
      'accountType': instance.accountType,
      'clientType': instance.clientType,
      'qrType': instance.qrType,
      'accountVersion': instance.accountVersion,
      'amount': instance.amount,
      'currencyCode': instance.currencyCode,
      'merchant': instance.merchant,
    };

_$MerchantModelImpl _$$MerchantModelImplFromJson(Map<String, dynamic> json) =>
    _$MerchantModelImpl(
      pos: json['pos'] as String? ?? '',
      branch: json['branch'] as String? ?? '',
      contact: json['contact'] as String? ?? '',
      branchName: json['branchName'] as String? ?? '',
    );

Map<String, dynamic> _$$MerchantModelImplToJson(_$MerchantModelImpl instance) =>
    <String, dynamic>{
      'pos': instance.pos,
      'branch': instance.branch,
      'contact': instance.contact,
      'branchName': instance.branchName,
    };

_$ProcesaPagoQRRequerimientoImpl _$$ProcesaPagoQRRequerimientoImplFromJson(
        Map<String, dynamic> json) =>
    _$ProcesaPagoQRRequerimientoImpl(
      transactionId: json['transactionId'] as String,
      monto: (json['monto'] as num).toDouble(),
      moneda: json['moneda'] as String,
      descripcion: json['descripcion'] as String? ?? '',
      numeroCuenta: json['numeroCuenta'] as String,
    );

Map<String, dynamic> _$$ProcesaPagoQRRequerimientoImplToJson(
        _$ProcesaPagoQRRequerimientoImpl instance) =>
    <String, dynamic>{
      'transactionId': instance.transactionId,
      'monto': instance.monto,
      'moneda': instance.moneda,
      'descripcion': instance.descripcion,
      'numeroCuenta': instance.numeroCuenta,
    };

_$ProcesaPagoQRRespuestaImpl _$$ProcesaPagoQRRespuestaImplFromJson(
        Map<String, dynamic> json) =>
    _$ProcesaPagoQRRespuestaImpl(
      documento: json['documento'] as String? ?? '',
      fecha: json['fecha'] as String? ?? '',
    );

Map<String, dynamic> _$$ProcesaPagoQRRespuestaImplToJson(
        _$ProcesaPagoQRRespuestaImpl instance) =>
    <String, dynamic>{
      'documento': instance.documento,
      'fecha': instance.fecha,
    };

_$ServicioModelImpl _$$ServicioModelImplFromJson(Map<String, dynamic> json) =>
    _$ServicioModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      nombre: json['nombre'] as String? ?? '',
      tipo: json['tipo'] as String? ?? '',
      codigo: json['codigo'] as String? ?? '',
      codigoPagoExterno: json['codigoPagoExterno'] as String? ?? '',
      descripcion: json['descripcion'] as String? ?? '',
      canal: json['canal'] as String? ?? '',
      codigoCategoria: json['codigoCategoria'] as String? ?? '',
      nombreCategoria: json['nombreCategoria'] as String? ?? '',
      etiqueta: json['etiqueta'] as String? ?? '',
      esEspecial: json['esEspecial'] as bool? ?? false,
      esFavorito: json['esFavorito'] as bool? ?? false,
      adicionales: (json['adicionales'] as List<dynamic>?)
              ?.map((e) =>
                  AdicionalServicioModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ServicioModelImplToJson(_$ServicioModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nombre': instance.nombre,
      'tipo': instance.tipo,
      'codigo': instance.codigo,
      'codigoPagoExterno': instance.codigoPagoExterno,
      'descripcion': instance.descripcion,
      'canal': instance.canal,
      'codigoCategoria': instance.codigoCategoria,
      'nombreCategoria': instance.nombreCategoria,
      'etiqueta': instance.etiqueta,
      'esEspecial': instance.esEspecial,
      'esFavorito': instance.esFavorito,
      'adicionales': instance.adicionales,
    };

_$AdicionalServicioModelImpl _$$AdicionalServicioModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AdicionalServicioModelImpl(
      etiqueta: json['etiqueta'] as String? ?? '',
      campo: json['campo'] as String? ?? '',
      esTexto: json['esTexto'] as bool? ?? false,
      esFecha: json['esFecha'] as bool? ?? false,
      esValor: json['esValor'] as bool? ?? false,
      esBool: json['esBool'] as bool? ?? false,
      entrada: json['entrada'] as String? ?? '',
      requiereEnviarVacio: json['requiereEnviarVacio'] as bool? ?? false,
    );

Map<String, dynamic> _$$AdicionalServicioModelImplToJson(
        _$AdicionalServicioModelImpl instance) =>
    <String, dynamic>{
      'etiqueta': instance.etiqueta,
      'campo': instance.campo,
      'esTexto': instance.esTexto,
      'esFecha': instance.esFecha,
      'esValor': instance.esValor,
      'esBool': instance.esBool,
      'entrada': instance.entrada,
      'requiereEnviarVacio': instance.requiereEnviarVacio,
    };

_$ProveedorPagoServiciosModelImpl _$$ProveedorPagoServiciosModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProveedorPagoServiciosModelImpl(
      codigo: json['codigo'] as String? ?? '',
      nombre: json['nombre'] as String? ?? '',
    );

Map<String, dynamic> _$$ProveedorPagoServiciosModelImplToJson(
        _$ProveedorPagoServiciosModelImpl instance) =>
    <String, dynamic>{
      'codigo': instance.codigo,
      'nombre': instance.nombre,
    };

_$ConsultaRequisitosPagoServiciosRespuestaImpl
    _$$ConsultaRequisitosPagoServiciosRespuestaImplFromJson(
            Map<String, dynamic> json) =>
        _$ConsultaRequisitosPagoServiciosRespuestaImpl(
          listaPagoServicio: (json['listaPagoServicio'] as List<dynamic>?)
                  ?.map((e) => ProveedorPagoServiciosModel.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              const [],
          servicios: (json['servicios'] as List<dynamic>?)
                  ?.map(
                      (e) => ServicioModel.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              const [],
        );

Map<String, dynamic> _$$ConsultaRequisitosPagoServiciosRespuestaImplToJson(
        _$ConsultaRequisitosPagoServiciosRespuestaImpl instance) =>
    <String, dynamic>{
      'listaPagoServicio': instance.listaPagoServicio,
      'servicios': instance.servicios,
    };

_$PagoServicioStateImpl _$$PagoServicioStateImplFromJson(
        Map<String, dynamic> json) =>
    _$PagoServicioStateImpl(
      requisitos: json['requisitos'] == null
          ? null
          : ConsultaRequisitosPagoServiciosRespuesta.fromJson(
              json['requisitos'] as Map<String, dynamic>),
      servicioSeleccionado: json['servicioSeleccionado'] == null
          ? null
          : ServicioModel.fromJson(
              json['servicioSeleccionado'] as Map<String, dynamic>),
      cuenta: json['cuenta'] == null
          ? null
          : CuentaModel.fromJson(json['cuenta'] as Map<String, dynamic>),
      esIngreso: json['esIngreso'] as bool? ?? false,
      esValidacion: json['esValidacion'] as bool? ?? false,
      esComprobante: json['esComprobante'] as bool? ?? false,
      servicios: (json['servicios'] as List<dynamic>?)
              ?.map((e) => ServicioModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      respuestaCamposConsulta: json['respuestaCamposConsulta'] == null
          ? null
          : ConsultaCamposConsultaPagoServiciosRespuesta.fromJson(
              json['respuestaCamposConsulta'] as Map<String, dynamic>),
      respuestaConsulta: json['respuestaConsulta'] == null
          ? null
          : ConsultaValoresServiciosBasicosRespuesta.fromJson(
              json['respuestaConsulta'] as Map<String, dynamic>),
      respuestaProceso: json['respuestaProceso'] == null
          ? null
          : ProcesaPagoServiciosBasicosRespuesta.fromJson(
              json['respuestaProceso'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PagoServicioStateImplToJson(
        _$PagoServicioStateImpl instance) =>
    <String, dynamic>{
      'requisitos': instance.requisitos,
      'servicioSeleccionado': instance.servicioSeleccionado,
      'cuenta': instance.cuenta,
      'esIngreso': instance.esIngreso,
      'esValidacion': instance.esValidacion,
      'esComprobante': instance.esComprobante,
      'servicios': instance.servicios,
      'respuestaCamposConsulta': instance.respuestaCamposConsulta,
      'respuestaConsulta': instance.respuestaConsulta,
      'respuestaProceso': instance.respuestaProceso,
    };

_$ConsultaCamposConsultaPagoServiciosRequerimientoImpl
    _$$ConsultaCamposConsultaPagoServiciosRequerimientoImplFromJson(
            Map<String, dynamic> json) =>
        _$ConsultaCamposConsultaPagoServiciosRequerimientoImpl(
          idProducto: (json['idProducto'] as num?)?.toInt() ?? 0,
        );

Map<String, dynamic>
    _$$ConsultaCamposConsultaPagoServiciosRequerimientoImplToJson(
            _$ConsultaCamposConsultaPagoServiciosRequerimientoImpl instance) =>
        <String, dynamic>{
          'idProducto': instance.idProducto,
        };

_$ConsultaCamposConsultaPagoServiciosRespuestaImpl
    _$$ConsultaCamposConsultaPagoServiciosRespuestaImplFromJson(
            Map<String, dynamic> json) =>
        _$ConsultaCamposConsultaPagoServiciosRespuestaImpl(
          camposConsultaDetalle: json['camposConsultaDetalle'] == null
              ? null
              : CamposConsultaDetalle.fromJson(
                  json['camposConsultaDetalle'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ConsultaCamposConsultaPagoServiciosRespuestaImplToJson(
        _$ConsultaCamposConsultaPagoServiciosRespuestaImpl instance) =>
    <String, dynamic>{
      'camposConsultaDetalle': instance.camposConsultaDetalle,
    };

_$CamposConsultaDetalleImpl _$$CamposConsultaDetalleImplFromJson(
        Map<String, dynamic> json) =>
    _$CamposConsultaDetalleImpl(
      camposConsulta: (json['camposConsulta'] as List<dynamic>?)
              ?.map((e) => CampoConsulta.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CamposConsultaDetalleImplToJson(
        _$CamposConsultaDetalleImpl instance) =>
    <String, dynamic>{
      'camposConsulta': instance.camposConsulta,
    };

_$CampoConsultaImpl _$$CampoConsultaImplFromJson(Map<String, dynamic> json) =>
    _$CampoConsultaImpl(
      id: json['id'] as String? ?? '',
      etiqueta: json['etiqueta'] as String? ?? '',
      nombre: json['nombre'] as String? ?? '',
      tipoDato: json['tipoDato'] as String? ?? '',
      valor: json['valor'] as String? ?? '',
      catalogo: (json['catalogo'] as List<dynamic>?)
              ?.map((e) => Catalogo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      esTexto: json['esTexto'] as bool? ?? false,
      esNumerico: json['esNumerico'] as bool? ?? false,
      esFecha: json['esFecha'] as bool? ?? false,
    );

Map<String, dynamic> _$$CampoConsultaImplToJson(_$CampoConsultaImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'etiqueta': instance.etiqueta,
      'nombre': instance.nombre,
      'tipoDato': instance.tipoDato,
      'valor': instance.valor,
      'catalogo': instance.catalogo,
      'esTexto': instance.esTexto,
      'esNumerico': instance.esNumerico,
      'esFecha': instance.esFecha,
    };

_$CatalogoImpl _$$CatalogoImplFromJson(Map<String, dynamic> json) =>
    _$CatalogoImpl(
      valor: json['valor'] as String? ?? '',
      descripcion: json['descripcion'] as String? ?? '',
    );

Map<String, dynamic> _$$CatalogoImplToJson(_$CatalogoImpl instance) =>
    <String, dynamic>{
      'valor': instance.valor,
      'descripcion': instance.descripcion,
    };

_$ConsultaValoresServiciosBasicosRequerimientoImpl
    _$$ConsultaValoresServiciosBasicosRequerimientoImplFromJson(
            Map<String, dynamic> json) =>
        _$ConsultaValoresServiciosBasicosRequerimientoImpl(
          idProducto: (json['idProducto'] as num?)?.toInt() ?? 0,
          referencia: json['referencia'] as String? ?? '',
          camposConsultaDetalle: json['camposConsultaDetalle'] == null
              ? null
              : CamposConsultaDetalle.fromJson(
                  json['camposConsultaDetalle'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ConsultaValoresServiciosBasicosRequerimientoImplToJson(
        _$ConsultaValoresServiciosBasicosRequerimientoImpl instance) =>
    <String, dynamic>{
      'idProducto': instance.idProducto,
      'referencia': instance.referencia,
      'camposConsultaDetalle': instance.camposConsultaDetalle,
    };

_$ConsultaValoresServiciosBasicosRespuestaImpl
    _$$ConsultaValoresServiciosBasicosRespuestaImplFromJson(
            Map<String, dynamic> json) =>
        _$ConsultaValoresServiciosBasicosRespuestaImpl(
          guidConsulta: json['guidConsulta'] as String? ?? '',
          rubrosDetalle: json['rubrosDetalle'] == null
              ? null
              : RubrosPagoExternoDetalle.fromJson(
                  json['rubrosDetalle'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ConsultaValoresServiciosBasicosRespuestaImplToJson(
        _$ConsultaValoresServiciosBasicosRespuestaImpl instance) =>
    <String, dynamic>{
      'guidConsulta': instance.guidConsulta,
      'rubrosDetalle': instance.rubrosDetalle,
    };

_$RubrosPagoExternoDetalleImpl _$$RubrosPagoExternoDetalleImplFromJson(
        Map<String, dynamic> json) =>
    _$RubrosPagoExternoDetalleImpl(
      codigoCausal: json['codigoCausal'] as String? ?? '',
      idAgencia: (json['idAgencia'] as num?)?.toInt() ?? 0,
      codigoAgenciaProveedor: json['codigoAgenciaProveedor'] as String? ?? '',
      idProducto: (json['idProducto'] as num?)?.toInt() ?? 0,
      idTransaccion: json['idTransaccion'] as String? ?? '',
      identificacion: json['identificacion'] as String? ?? '',
      nombre: json['nombre'] as String? ?? '',
      referencia: json['referencia'] as String? ?? '',
      adicionales: json['adicionales'] as String? ?? '',
      datosFactura: json['datosFactura'] as String? ?? '',
      permiteAbono: json['permiteAbono'] as bool? ?? false,
      permitePagoAbierto: json['permitePagoAbierto'] as bool? ?? false,
      listaRubros: (json['listaRubros'] as List<dynamic>?)
              ?.map((e) =>
                  RubroPagoExternoDetalle.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      listaDetallesAdicionales: (json['listaDetallesAdicionales']
                  as List<dynamic>?)
              ?.map((e) => DetalleAdicional.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$RubrosPagoExternoDetalleImplToJson(
        _$RubrosPagoExternoDetalleImpl instance) =>
    <String, dynamic>{
      'codigoCausal': instance.codigoCausal,
      'idAgencia': instance.idAgencia,
      'codigoAgenciaProveedor': instance.codigoAgenciaProveedor,
      'idProducto': instance.idProducto,
      'idTransaccion': instance.idTransaccion,
      'identificacion': instance.identificacion,
      'nombre': instance.nombre,
      'referencia': instance.referencia,
      'adicionales': instance.adicionales,
      'datosFactura': instance.datosFactura,
      'permiteAbono': instance.permiteAbono,
      'permitePagoAbierto': instance.permitePagoAbierto,
      'listaRubros': instance.listaRubros,
      'listaDetallesAdicionales': instance.listaDetallesAdicionales,
    };

_$RubroPagoExternoDetalleImpl _$$RubroPagoExternoDetalleImplFromJson(
        Map<String, dynamic> json) =>
    _$RubroPagoExternoDetalleImpl(
      comision: (json['comision'] as num?)?.toDouble() ?? 0.0,
      comisionProveedor: (json['comisionProveedor'] as num?)?.toDouble() ?? 0.0,
      descripcion: json['descripcion'] as String? ?? '',
      idRubro: json['idRubro'] as String? ?? '',
      prioridad: (json['prioridad'] as num?)?.toInt() ?? 0,
      valor: (json['valor'] as num?)?.toDouble() ?? 0.0,
      valorConComision: (json['valorConComision'] as num?)?.toDouble() ?? 0.0,
      valorPago: (json['valorPago'] as num?)?.toDouble() ?? 0.0,
      seleccionado: json['seleccionado'] as bool? ?? false,
    );

Map<String, dynamic> _$$RubroPagoExternoDetalleImplToJson(
        _$RubroPagoExternoDetalleImpl instance) =>
    <String, dynamic>{
      'comision': instance.comision,
      'comisionProveedor': instance.comisionProveedor,
      'descripcion': instance.descripcion,
      'idRubro': instance.idRubro,
      'prioridad': instance.prioridad,
      'valor': instance.valor,
      'valorConComision': instance.valorConComision,
      'valorPago': instance.valorPago,
      'seleccionado': instance.seleccionado,
    };

_$DetalleAdicionalImpl _$$DetalleAdicionalImplFromJson(
        Map<String, dynamic> json) =>
    _$DetalleAdicionalImpl(
      etiqueta: json['etiqueta'] as String? ?? '',
      valor: json['valor'] as String? ?? '',
    );

Map<String, dynamic> _$$DetalleAdicionalImplToJson(
        _$DetalleAdicionalImpl instance) =>
    <String, dynamic>{
      'etiqueta': instance.etiqueta,
      'valor': instance.valor,
    };

_$ProcesaPagoServiciosBasicosRequerimientoImpl
    _$$ProcesaPagoServiciosBasicosRequerimientoImplFromJson(
            Map<String, dynamic> json) =>
        _$ProcesaPagoServiciosBasicosRequerimientoImpl(
          idProducto: (json['idProducto'] as num?)?.toInt() ?? 0,
          guidConsulta: json['guidConsulta'] as String? ?? '',
          cuentaDebito: json['cuentaDebito'] as String? ?? '',
          otpIngresado: json['otpIngresado'] as String? ?? '',
          otpGenerado: json['otpGenerado'] as String? ?? '',
          emailEnvio: json['emailEnvio'] as String? ?? '',
          concepto: json['concepto'] as String? ?? '',
          rubrosDetalle: json['rubrosDetalle'] == null
              ? null
              : RubrosPagoExternoDetalle.fromJson(
                  json['rubrosDetalle'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ProcesaPagoServiciosBasicosRequerimientoImplToJson(
        _$ProcesaPagoServiciosBasicosRequerimientoImpl instance) =>
    <String, dynamic>{
      'idProducto': instance.idProducto,
      'guidConsulta': instance.guidConsulta,
      'cuentaDebito': instance.cuentaDebito,
      'otpIngresado': instance.otpIngresado,
      'otpGenerado': instance.otpGenerado,
      'emailEnvio': instance.emailEnvio,
      'concepto': instance.concepto,
      'rubrosDetalle': instance.rubrosDetalle,
    };

_$ProcesaPagoServiciosBasicosRespuestaImpl
    _$$ProcesaPagoServiciosBasicosRespuestaImplFromJson(
            Map<String, dynamic> json) =>
        _$ProcesaPagoServiciosBasicosRespuestaImpl(
          datosRecibo: (json['datosRecibo'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              const [],
          fecha: json['fecha'] as String? ?? '',
          documento: json['documento'] as String? ?? '',
        );

Map<String, dynamic> _$$ProcesaPagoServiciosBasicosRespuestaImplToJson(
        _$ProcesaPagoServiciosBasicosRespuestaImpl instance) =>
    <String, dynamic>{
      'datosRecibo': instance.datosRecibo,
      'fecha': instance.fecha,
      'documento': instance.documento,
    };

_$ConsultaRequisitosTransferenciasRespuestaImpl
    _$$ConsultaRequisitosTransferenciasRespuestaImplFromJson(
            Map<String, dynamic> json) =>
        _$ConsultaRequisitosTransferenciasRespuestaImpl(
          comision: (json['comision'] as num?)?.toDouble() ?? 0,
        );

Map<String, dynamic> _$$ConsultaRequisitosTransferenciasRespuestaImplToJson(
        _$ConsultaRequisitosTransferenciasRespuestaImpl instance) =>
    <String, dynamic>{
      'comision': instance.comision,
    };
