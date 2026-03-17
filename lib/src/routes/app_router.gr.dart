// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [AbonoPage]
class AbonoRoute extends PageRouteInfo<AbonoRouteArgs> {
  AbonoRoute({
    Key? key,
    PrestamoModel? prestamoParametro,
    List<PageRouteInfo>? children,
  }) : super(
         AbonoRoute.name,
         args: AbonoRouteArgs(key: key, prestamoParametro: prestamoParametro),
         initialChildren: children,
       );

  static const String name = 'AbonoRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AbonoRouteArgs>(
        orElse: () => const AbonoRouteArgs(),
      );
      return AbonoPage(
        key: args.key,
        prestamoParametro: args.prestamoParametro,
      );
    },
  );
}

class AbonoRouteArgs {
  const AbonoRouteArgs({this.key, this.prestamoParametro});

  final Key? key;

  final PrestamoModel? prestamoParametro;

  @override
  String toString() {
    return 'AbonoRouteArgs{key: $key, prestamoParametro: $prestamoParametro}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! AbonoRouteArgs) return false;
    return key == other.key && prestamoParametro == other.prestamoParametro;
  }

  @override
  int get hashCode => key.hashCode ^ prestamoParametro.hashCode;
}

/// generated route for
/// [ActivaCuentaPage]
class ActivaCuentaRoute extends PageRouteInfo<void> {
  const ActivaCuentaRoute({List<PageRouteInfo>? children})
    : super(ActivaCuentaRoute.name, initialChildren: children);

  static const String name = 'ActivaCuentaRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ActivaCuentaPage();
    },
  );
}

/// generated route for
/// [AgenciaPage]
class AgenciaRoute extends PageRouteInfo<void> {
  const AgenciaRoute({List<PageRouteInfo>? children})
    : super(AgenciaRoute.name, initialChildren: children);

  static const String name = 'AgenciaRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AgenciaPage();
    },
  );
}

/// generated route for
/// [BeneficiarioEdicionPage]
class BeneficiarioEdicionRoute
    extends PageRouteInfo<BeneficiarioEdicionRouteArgs> {
  BeneficiarioEdicionRoute({
    required int id,
    required bool esInterno,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
         BeneficiarioEdicionRoute.name,
         args: BeneficiarioEdicionRouteArgs(
           id: id,
           esInterno: esInterno,
           key: key,
         ),
         initialChildren: children,
       );

  static const String name = 'BeneficiarioEdicionRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BeneficiarioEdicionRouteArgs>();
      return BeneficiarioEdicionPage(args.id, args.esInterno, key: args.key);
    },
  );
}

class BeneficiarioEdicionRouteArgs {
  const BeneficiarioEdicionRouteArgs({
    required this.id,
    required this.esInterno,
    this.key,
  });

  final int id;

  final bool esInterno;

  final Key? key;

  @override
  String toString() {
    return 'BeneficiarioEdicionRouteArgs{id: $id, esInterno: $esInterno, key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! BeneficiarioEdicionRouteArgs) return false;
    return id == other.id && esInterno == other.esInterno && key == other.key;
  }

  @override
  int get hashCode => id.hashCode ^ esInterno.hashCode ^ key.hashCode;
}

/// generated route for
/// [BeneficiarioPage]
class BeneficiarioRoute extends PageRouteInfo<void> {
  const BeneficiarioRoute({List<PageRouteInfo>? children})
    : super(BeneficiarioRoute.name, initialChildren: children);

  static const String name = 'BeneficiarioRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const BeneficiarioPage();
    },
  );
}

/// generated route for
/// [CambiarContraseniaLoginPage]
class CambiarContraseniaLoginRoute
    extends PageRouteInfo<CambiarContraseniaLoginRouteArgs> {
  CambiarContraseniaLoginRoute({
    Key? key,
    required String codigoUsuario,
    List<PageRouteInfo>? children,
  }) : super(
         CambiarContraseniaLoginRoute.name,
         args: CambiarContraseniaLoginRouteArgs(
           key: key,
           codigoUsuario: codigoUsuario,
         ),
         initialChildren: children,
       );

  static const String name = 'CambiarContraseniaLoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CambiarContraseniaLoginRouteArgs>();
      return CambiarContraseniaLoginPage(
        key: args.key,
        codigoUsuario: args.codigoUsuario,
      );
    },
  );
}

class CambiarContraseniaLoginRouteArgs {
  const CambiarContraseniaLoginRouteArgs({
    this.key,
    required this.codigoUsuario,
  });

  final Key? key;

  final String codigoUsuario;

  @override
  String toString() {
    return 'CambiarContraseniaLoginRouteArgs{key: $key, codigoUsuario: $codigoUsuario}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CambiarContraseniaLoginRouteArgs) return false;
    return key == other.key && codigoUsuario == other.codigoUsuario;
  }

  @override
  int get hashCode => key.hashCode ^ codigoUsuario.hashCode;
}

/// generated route for
/// [CambiarContraseniaPage]
class CambiarContraseniaRoute
    extends PageRouteInfo<CambiarContraseniaRouteArgs> {
  CambiarContraseniaRoute({
    Key? key,
    required String codigoUsuario,
    List<PageRouteInfo>? children,
  }) : super(
         CambiarContraseniaRoute.name,
         args: CambiarContraseniaRouteArgs(
           key: key,
           codigoUsuario: codigoUsuario,
         ),
         initialChildren: children,
       );

  static const String name = 'CambiarContraseniaRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CambiarContraseniaRouteArgs>();
      return CambiarContraseniaPage(
        key: args.key,
        codigoUsuario: args.codigoUsuario,
      );
    },
  );
}

class CambiarContraseniaRouteArgs {
  const CambiarContraseniaRouteArgs({this.key, required this.codigoUsuario});

  final Key? key;

  final String codigoUsuario;

  @override
  String toString() {
    return 'CambiarContraseniaRouteArgs{key: $key, codigoUsuario: $codigoUsuario}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CambiarContraseniaRouteArgs) return false;
    return key == other.key && codigoUsuario == other.codigoUsuario;
  }

  @override
  int get hashCode => key.hashCode ^ codigoUsuario.hashCode;
}

/// generated route for
/// [ContactenosPage]
class ContactenosRoute extends PageRouteInfo<void> {
  const ContactenosRoute({List<PageRouteInfo>? children})
    : super(ContactenosRoute.name, initialChildren: children);

  static const String name = 'ContactenosRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ContactenosPage();
    },
  );
}

/// generated route for
/// [CuentaDetallePage]
class CuentaDetalleRoute extends PageRouteInfo<CuentaDetalleRouteArgs> {
  CuentaDetalleRoute({
    Key? key,
    required CuentaModel cuenta,
    List<PageRouteInfo>? children,
  }) : super(
         CuentaDetalleRoute.name,
         args: CuentaDetalleRouteArgs(key: key, cuenta: cuenta),
         initialChildren: children,
       );

  static const String name = 'CuentaDetalleRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CuentaDetalleRouteArgs>();
      return CuentaDetallePage(key: args.key, cuenta: args.cuenta);
    },
  );
}

class CuentaDetalleRouteArgs {
  const CuentaDetalleRouteArgs({this.key, required this.cuenta});

  final Key? key;

  final CuentaModel cuenta;

  @override
  String toString() {
    return 'CuentaDetalleRouteArgs{key: $key, cuenta: $cuenta}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CuentaDetalleRouteArgs) return false;
    return key == other.key && cuenta == other.cuenta;
  }

  @override
  int get hashCode => key.hashCode ^ cuenta.hashCode;
}

/// generated route for
/// [DatosPersonalesPage]
class DatosPersonalesRoute extends PageRouteInfo<void> {
  const DatosPersonalesRoute({List<PageRouteInfo>? children})
    : super(DatosPersonalesRoute.name, initialChildren: children);

  static const String name = 'DatosPersonalesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const DatosPersonalesPage();
    },
  );
}

/// generated route for
/// [DepositoDetallePage]
class DepositoDetalleRoute extends PageRouteInfo<DepositoDetalleRouteArgs> {
  DepositoDetalleRoute({
    Key? key,
    required InversionModel deposito,
    List<PageRouteInfo>? children,
  }) : super(
         DepositoDetalleRoute.name,
         args: DepositoDetalleRouteArgs(key: key, deposito: deposito),
         initialChildren: children,
       );

  static const String name = 'DepositoDetalleRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DepositoDetalleRouteArgs>();
      return DepositoDetallePage(key: args.key, deposito: args.deposito);
    },
  );
}

class DepositoDetalleRouteArgs {
  const DepositoDetalleRouteArgs({this.key, required this.deposito});

  final Key? key;

  final InversionModel deposito;

  @override
  String toString() {
    return 'DepositoDetalleRouteArgs{key: $key, deposito: $deposito}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! DepositoDetalleRouteArgs) return false;
    return key == other.key && deposito == other.deposito;
  }

  @override
  int get hashCode => key.hashCode ^ deposito.hashCode;
}

/// generated route for
/// [EstadoCuentaPage]
class EstadoCuentaRoute extends PageRouteInfo<void> {
  const EstadoCuentaRoute({List<PageRouteInfo>? children})
    : super(EstadoCuentaRoute.name, initialChildren: children);

  static const String name = 'EstadoCuentaRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const EstadoCuentaPage();
    },
  );
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LoginPage();
    },
  );
}

/// generated route for
/// [LoginPinPage]
class LoginPinRoute extends PageRouteInfo<void> {
  const LoginPinRoute({List<PageRouteInfo>? children})
    : super(LoginPinRoute.name, initialChildren: children);

  static const String name = 'LoginPinRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LoginPinPage();
    },
  );
}

/// generated route for
/// [LoginPrincipalPage]
class LoginPrincipalRoute extends PageRouteInfo<void> {
  const LoginPrincipalRoute({List<PageRouteInfo>? children})
    : super(LoginPrincipalRoute.name, initialChildren: children);

  static const String name = 'LoginPrincipalRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LoginPrincipalPage();
    },
  );
}

/// generated route for
/// [MantenimientoPage]
class MantenimientoRoute extends PageRouteInfo<void> {
  const MantenimientoRoute({List<PageRouteInfo>? children})
    : super(MantenimientoRoute.name, initialChildren: children);

  static const String name = 'MantenimientoRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MantenimientoPage();
    },
  );
}

/// generated route for
/// [MiPerfilPage]
class MiPerfilRoute extends PageRouteInfo<void> {
  const MiPerfilRoute({List<PageRouteInfo>? children})
    : super(MiPerfilRoute.name, initialChildren: children);

  static const String name = 'MiPerfilRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MiPerfilPage();
    },
  );
}

/// generated route for
/// [MisProductosOverviewPage]
class MisProductosOverviewRoute extends PageRouteInfo<void> {
  const MisProductosOverviewRoute({List<PageRouteInfo>? children})
    : super(MisProductosOverviewRoute.name, initialChildren: children);

  static const String name = 'MisProductosOverviewRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MisProductosOverviewPage();
    },
  );
}

/// generated route for
/// [MisProductosRouterPage]
class MisProductosRouterRoute extends PageRouteInfo<void> {
  const MisProductosRouterRoute({List<PageRouteInfo>? children})
    : super(MisProductosRouterRoute.name, initialChildren: children);

  static const String name = 'MisProductosRouterRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MisProductosRouterPage();
    },
  );
}

/// generated route for
/// [MontosMaximosPage]
class MontosMaximosRoute extends PageRouteInfo<void> {
  const MontosMaximosRoute({List<PageRouteInfo>? children})
    : super(MontosMaximosRoute.name, initialChildren: children);

  static const String name = 'MontosMaximosRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MontosMaximosPage();
    },
  );
}

/// generated route for
/// [OnboardingPage]
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute({List<PageRouteInfo>? children})
    : super(OnboardingRoute.name, initialChildren: children);

  static const String name = 'OnboardingRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const OnboardingPage();
    },
  );
}

/// generated route for
/// [PagoDeunaPage]
class PagoDeunaRoute extends PageRouteInfo<PagoDeunaRouteArgs> {
  PagoDeunaRoute({
    Key? key,
    required String codigoQr,
    CuentaModel? cuentaTransferenciaParametro,
    List<PageRouteInfo>? children,
  }) : super(
         PagoDeunaRoute.name,
         args: PagoDeunaRouteArgs(
           key: key,
           codigoQr: codigoQr,
           cuentaTransferenciaParametro: cuentaTransferenciaParametro,
         ),
         initialChildren: children,
       );

  static const String name = 'PagoDeunaRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PagoDeunaRouteArgs>();
      return PagoDeunaPage(
        key: args.key,
        codigoQr: args.codigoQr,
        cuentaTransferenciaParametro: args.cuentaTransferenciaParametro,
      );
    },
  );
}

class PagoDeunaRouteArgs {
  const PagoDeunaRouteArgs({
    this.key,
    required this.codigoQr,
    this.cuentaTransferenciaParametro,
  });

  final Key? key;

  final String codigoQr;

  final CuentaModel? cuentaTransferenciaParametro;

  @override
  String toString() {
    return 'PagoDeunaRouteArgs{key: $key, codigoQr: $codigoQr, cuentaTransferenciaParametro: $cuentaTransferenciaParametro}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! PagoDeunaRouteArgs) return false;
    return key == other.key &&
        codigoQr == other.codigoQr &&
        cuentaTransferenciaParametro == other.cuentaTransferenciaParametro;
  }

  @override
  int get hashCode =>
      key.hashCode ^ codigoQr.hashCode ^ cuentaTransferenciaParametro.hashCode;
}

/// generated route for
/// [PagoServicioPage]
class PagoServicioRoute extends PageRouteInfo<PagoServicioRouteArgs> {
  PagoServicioRoute({
    Key? key,
    CuentaModel? cuentaTransferenciaParametro,
    List<PageRouteInfo>? children,
  }) : super(
         PagoServicioRoute.name,
         args: PagoServicioRouteArgs(
           key: key,
           cuentaTransferenciaParametro: cuentaTransferenciaParametro,
         ),
         initialChildren: children,
       );

  static const String name = 'PagoServicioRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PagoServicioRouteArgs>(
        orElse: () => const PagoServicioRouteArgs(),
      );
      return PagoServicioPage(
        key: args.key,
        cuentaTransferenciaParametro: args.cuentaTransferenciaParametro,
      );
    },
  );
}

class PagoServicioRouteArgs {
  const PagoServicioRouteArgs({this.key, this.cuentaTransferenciaParametro});

  final Key? key;

  final CuentaModel? cuentaTransferenciaParametro;

  @override
  String toString() {
    return 'PagoServicioRouteArgs{key: $key, cuentaTransferenciaParametro: $cuentaTransferenciaParametro}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! PagoServicioRouteArgs) return false;
    return key == other.key &&
        cuentaTransferenciaParametro == other.cuentaTransferenciaParametro;
  }

  @override
  int get hashCode => key.hashCode ^ cuentaTransferenciaParametro.hashCode;
}

/// generated route for
/// [PosicionConsolidadaPage]
class PosicionConsolidadaRoute extends PageRouteInfo<void> {
  const PosicionConsolidadaRoute({List<PageRouteInfo>? children})
    : super(PosicionConsolidadaRoute.name, initialChildren: children);

  static const String name = 'PosicionConsolidadaRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const PosicionConsolidadaPage();
    },
  );
}

/// generated route for
/// [PreguntasFrecuentesDeunaPage]
class PreguntasFrecuentesDeunaRoute extends PageRouteInfo<void> {
  const PreguntasFrecuentesDeunaRoute({List<PageRouteInfo>? children})
    : super(PreguntasFrecuentesDeunaRoute.name, initialChildren: children);

  static const String name = 'PreguntasFrecuentesDeunaRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const PreguntasFrecuentesDeunaPage();
    },
  );
}

/// generated route for
/// [PrestamoDetallePage]
class PrestamoDetalleRoute extends PageRouteInfo<PrestamoDetalleRouteArgs> {
  PrestamoDetalleRoute({
    Key? key,
    required PrestamoModel prestamo,
    List<PageRouteInfo>? children,
  }) : super(
         PrestamoDetalleRoute.name,
         args: PrestamoDetalleRouteArgs(key: key, prestamo: prestamo),
         initialChildren: children,
       );

  static const String name = 'PrestamoDetalleRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PrestamoDetalleRouteArgs>();
      return PrestamoDetallePage(key: args.key, prestamo: args.prestamo);
    },
  );
}

class PrestamoDetalleRouteArgs {
  const PrestamoDetalleRouteArgs({this.key, required this.prestamo});

  final Key? key;

  final PrestamoModel prestamo;

  @override
  String toString() {
    return 'PrestamoDetalleRouteArgs{key: $key, prestamo: $prestamo}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! PrestamoDetalleRouteArgs) return false;
    return key == other.key && prestamo == other.prestamo;
  }

  @override
  int get hashCode => key.hashCode ^ prestamo.hashCode;
}

/// generated route for
/// [QrDeunaErrorPage]
class QrDeunaErrorRoute extends PageRouteInfo<QrDeunaErrorRouteArgs> {
  QrDeunaErrorRoute({
    Key? key,
    String errorCode = '',
    List<PageRouteInfo>? children,
  }) : super(
         QrDeunaErrorRoute.name,
         args: QrDeunaErrorRouteArgs(key: key, errorCode: errorCode),
         initialChildren: children,
       );

  static const String name = 'QrDeunaErrorRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<QrDeunaErrorRouteArgs>(
        orElse: () => const QrDeunaErrorRouteArgs(),
      );
      return QrDeunaErrorPage(key: args.key, errorCode: args.errorCode);
    },
  );
}

class QrDeunaErrorRouteArgs {
  const QrDeunaErrorRouteArgs({this.key, this.errorCode = ''});

  final Key? key;

  final String errorCode;

  @override
  String toString() {
    return 'QrDeunaErrorRouteArgs{key: $key, errorCode: $errorCode}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! QrDeunaErrorRouteArgs) return false;
    return key == other.key && errorCode == other.errorCode;
  }

  @override
  int get hashCode => key.hashCode ^ errorCode.hashCode;
}

/// generated route for
/// [QrScannerPage]
class QrScannerRoute extends PageRouteInfo<void> {
  const QrScannerRoute({List<PageRouteInfo>? children})
    : super(QrScannerRoute.name, initialChildren: children);

  static const String name = 'QrScannerRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const QrScannerPage();
    },
  );
}

/// generated route for
/// [RecuperarContraseniaPage]
class RecuperarContraseniaRoute extends PageRouteInfo<void> {
  const RecuperarContraseniaRoute({List<PageRouteInfo>? children})
    : super(RecuperarContraseniaRoute.name, initialChildren: children);

  static const String name = 'RecuperarContraseniaRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const RecuperarContraseniaPage();
    },
  );
}

/// generated route for
/// [RecuperarUsuarioPage]
class RecuperarUsuarioRoute extends PageRouteInfo<void> {
  const RecuperarUsuarioRoute({List<PageRouteInfo>? children})
    : super(RecuperarUsuarioRoute.name, initialChildren: children);

  static const String name = 'RecuperarUsuarioRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const RecuperarUsuarioPage();
    },
  );
}

/// generated route for
/// [RegistroPinPage]
class RegistroPinRoute extends PageRouteInfo<void> {
  const RegistroPinRoute({List<PageRouteInfo>? children})
    : super(RegistroPinRoute.name, initialChildren: children);

  static const String name = 'RegistroPinRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const RegistroPinPage();
    },
  );
}

/// generated route for
/// [SeleccionBeneficiarioPage]
class SeleccionBeneficiarioRoute extends PageRouteInfo<void> {
  const SeleccionBeneficiarioRoute({List<PageRouteInfo>? children})
    : super(SeleccionBeneficiarioRoute.name, initialChildren: children);

  static const String name = 'SeleccionBeneficiarioRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SeleccionBeneficiarioPage();
    },
  );
}

/// generated route for
/// [SeleccionConceptoPage]
class SeleccionConceptoRoute extends PageRouteInfo<void> {
  const SeleccionConceptoRoute({List<PageRouteInfo>? children})
    : super(SeleccionConceptoRoute.name, initialChildren: children);

  static const String name = 'SeleccionConceptoRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SeleccionConceptoPage();
    },
  );
}

/// generated route for
/// [SeleccionCuentaPage]
class SeleccionCuentaRoute extends PageRouteInfo<void> {
  const SeleccionCuentaRoute({List<PageRouteInfo>? children})
    : super(SeleccionCuentaRoute.name, initialChildren: children);

  static const String name = 'SeleccionCuentaRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SeleccionCuentaPage();
    },
  );
}

/// generated route for
/// [SeleccionPrestamoPage]
class SeleccionPrestamoRoute extends PageRouteInfo<void> {
  const SeleccionPrestamoRoute({List<PageRouteInfo>? children})
    : super(SeleccionPrestamoRoute.name, initialChildren: children);

  static const String name = 'SeleccionPrestamoRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SeleccionPrestamoPage();
    },
  );
}

/// generated route for
/// [SolicitudesPage]
class SolicitudesRoute extends PageRouteInfo<void> {
  const SolicitudesRoute({List<PageRouteInfo>? children})
    : super(SolicitudesRoute.name, initialChildren: children);

  static const String name = 'SolicitudesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SolicitudesPage();
    },
  );
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SplashPage();
    },
  );
}

/// generated route for
/// [TerminosCondicionesPage]
class TerminosCondicionesRoute extends PageRouteInfo<void> {
  const TerminosCondicionesRoute({List<PageRouteInfo>? children})
    : super(TerminosCondicionesRoute.name, initialChildren: children);

  static const String name = 'TerminosCondicionesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const TerminosCondicionesPage();
    },
  );
}

/// generated route for
/// [TransaccionDeunaErrorPage]
class TransaccionDeunaErrorRoute
    extends PageRouteInfo<TransaccionDeunaErrorRouteArgs> {
  TransaccionDeunaErrorRoute({
    Key? key,
    String errorCode = '',
    List<PageRouteInfo>? children,
  }) : super(
         TransaccionDeunaErrorRoute.name,
         args: TransaccionDeunaErrorRouteArgs(key: key, errorCode: errorCode),
         initialChildren: children,
       );

  static const String name = 'TransaccionDeunaErrorRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TransaccionDeunaErrorRouteArgs>(
        orElse: () => const TransaccionDeunaErrorRouteArgs(),
      );
      return TransaccionDeunaErrorPage(
        key: args.key,
        errorCode: args.errorCode,
      );
    },
  );
}

class TransaccionDeunaErrorRouteArgs {
  const TransaccionDeunaErrorRouteArgs({this.key, this.errorCode = ''});

  final Key? key;

  final String errorCode;

  @override
  String toString() {
    return 'TransaccionDeunaErrorRouteArgs{key: $key, errorCode: $errorCode}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! TransaccionDeunaErrorRouteArgs) return false;
    return key == other.key && errorCode == other.errorCode;
  }

  @override
  int get hashCode => key.hashCode ^ errorCode.hashCode;
}

/// generated route for
/// [TransferenciaPage]
class TransferenciaRoute extends PageRouteInfo<TransferenciaRouteArgs> {
  TransferenciaRoute({
    Key? key,
    required TipoTransferencia tipoTransferencia,
    CuentaModel? cuentaTransferenciaParametro,
    BeneficiarioModel? beneficiario,
    List<PageRouteInfo>? children,
  }) : super(
         TransferenciaRoute.name,
         args: TransferenciaRouteArgs(
           key: key,
           tipoTransferencia: tipoTransferencia,
           cuentaTransferenciaParametro: cuentaTransferenciaParametro,
           beneficiario: beneficiario,
         ),
         initialChildren: children,
       );

  static const String name = 'TransferenciaRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TransferenciaRouteArgs>();
      return TransferenciaPage(
        key: args.key,
        tipoTransferencia: args.tipoTransferencia,
        cuentaTransferenciaParametro: args.cuentaTransferenciaParametro,
        beneficiario: args.beneficiario,
      );
    },
  );
}

class TransferenciaRouteArgs {
  const TransferenciaRouteArgs({
    this.key,
    required this.tipoTransferencia,
    this.cuentaTransferenciaParametro,
    this.beneficiario,
  });

  final Key? key;

  final TipoTransferencia tipoTransferencia;

  final CuentaModel? cuentaTransferenciaParametro;

  final BeneficiarioModel? beneficiario;

  @override
  String toString() {
    return 'TransferenciaRouteArgs{key: $key, tipoTransferencia: $tipoTransferencia, cuentaTransferenciaParametro: $cuentaTransferenciaParametro, beneficiario: $beneficiario}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! TransferenciaRouteArgs) return false;
    return key == other.key &&
        tipoTransferencia == other.tipoTransferencia &&
        cuentaTransferenciaParametro == other.cuentaTransferenciaParametro &&
        beneficiario == other.beneficiario;
  }

  @override
  int get hashCode =>
      key.hashCode ^
      tipoTransferencia.hashCode ^
      cuentaTransferenciaParametro.hashCode ^
      beneficiario.hashCode;
}
