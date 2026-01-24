// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AbonoRoute.name: (routeData) {
      final args = routeData.argsAs<AbonoRouteArgs>(
          orElse: () => const AbonoRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AbonoPage(
          key: args.key,
          prestamoParametro: args.prestamoParametro,
        ),
      );
    },
    ActivaCuentaRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ActivaCuentaPage(),
      );
    },
    AgenciaRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AgenciaPage(),
      );
    },
    BeneficiarioEdicionRoute.name: (routeData) {
      final args = routeData.argsAs<BeneficiarioEdicionRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: BeneficiarioEdicionPage(
          args.id,
          args.esInterno,
          key: args.key,
        ),
      );
    },
    BeneficiarioRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BeneficiarioPage(),
      );
    },
    CambiarContraseniaLoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CambiarContraseniaLoginPage(),
      );
    },
    CambiarContraseniaRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CambiarContraseniaPage(),
      );
    },
    ContactenosRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ContactenosPage(),
      );
    },
    CuentaDetalleRoute.name: (routeData) {
      final args = routeData.argsAs<CuentaDetalleRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CuentaDetallePage(
          key: args.key,
          cuenta: args.cuenta,
        ),
      );
    },
    DatosPersonalesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DatosPersonalesPage(),
      );
    },
    DepositoDetalleRoute.name: (routeData) {
      final args = routeData.argsAs<DepositoDetalleRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DepositoDetallePage(
          key: args.key,
          deposito: args.deposito,
        ),
      );
    },
    EstadoCuentaRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EstadoCuentaPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginPage(),
      );
    },
    LoginPinRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginPinPage(),
      );
    },
    LoginPrincipalRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginPrincipalPage(),
      );
    },
    MantenimientoRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MantenimientoPage(),
      );
    },
    MiPerfilRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MiPerfilPage(),
      );
    },
    MisProductosOverviewRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MisProductosOverviewPage(),
      );
    },
    MisProductosRouterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MisProductosRouterPage(),
      );
    },
    MontosMaximosRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MontosMaximosPage(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OnboardingPage(),
      );
    },
    PagoDeunaRoute.name: (routeData) {
      final args = routeData.argsAs<PagoDeunaRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PagoDeunaPage(
          key: args.key,
          codigoQr: args.codigoQr,
          cuentaTransferenciaParametro: args.cuentaTransferenciaParametro,
        ),
      );
    },
    PagoServicioRoute.name: (routeData) {
      final args = routeData.argsAs<PagoServicioRouteArgs>(
          orElse: () => const PagoServicioRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PagoServicioPage(
          key: args.key,
          cuentaTransferenciaParametro: args.cuentaTransferenciaParametro,
        ),
      );
    },
    PosicionConsolidadaRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PosicionConsolidadaPage(),
      );
    },
    PreguntasFrecuentesDeunaRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PreguntasFrecuentesDeunaPage(),
      );
    },
    PrestamoDetalleRoute.name: (routeData) {
      final args = routeData.argsAs<PrestamoDetalleRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PrestamoDetallePage(
          key: args.key,
          prestamo: args.prestamo,
        ),
      );
    },
    QrDeunaErrorRoute.name: (routeData) {
      final args = routeData.argsAs<QrDeunaErrorRouteArgs>(
          orElse: () => const QrDeunaErrorRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: QrDeunaErrorPage(
          key: args.key,
          errorCode: args.errorCode,
        ),
      );
    },
    QrScannerRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const QrScannerPage(),
      );
    },
    RecuperarContraseniaRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RecuperarContraseniaPage(),
      );
    },
    RecuperarUsuarioRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RecuperarUsuarioPage(),
      );
    },
    RegistroPinRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegistroPinPage(),
      );
    },
    SeleccionBeneficiarioRoute.name: (routeData) {
      return AutoRoutePage<BeneficiarioModel?>(
        routeData: routeData,
        child: const SeleccionBeneficiarioPage(),
      );
    },
    SeleccionConceptoRoute.name: (routeData) {
      return AutoRoutePage<ConceptoModel?>(
        routeData: routeData,
        child: const SeleccionConceptoPage(),
      );
    },
    SeleccionCuentaRoute.name: (routeData) {
      return AutoRoutePage<CuentaModel?>(
        routeData: routeData,
        child: const SeleccionCuentaPage(),
      );
    },
    SeleccionPrestamoRoute.name: (routeData) {
      return AutoRoutePage<PrestamoModel?>(
        routeData: routeData,
        child: const SeleccionPrestamoPage(),
      );
    },
    SolicitudesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SolicitudesPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
    TerminosCondicionesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TerminosCondicionesPage(),
      );
    },
    TransaccionDeunaErrorRoute.name: (routeData) {
      final args = routeData.argsAs<TransaccionDeunaErrorRouteArgs>(
          orElse: () => const TransaccionDeunaErrorRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: TransaccionDeunaErrorPage(
          key: args.key,
          errorCode: args.errorCode,
        ),
      );
    },
    TransferenciaRoute.name: (routeData) {
      final args = routeData.argsAs<TransferenciaRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: TransferenciaPage(
          key: args.key,
          tipoTransferencia: args.tipoTransferencia,
          cuentaTransferenciaParametro: args.cuentaTransferenciaParametro,
          beneficiario: args.beneficiario,
        ),
      );
    },
  };
}

/// generated route for
/// [AbonoPage]
class AbonoRoute extends PageRouteInfo<AbonoRouteArgs> {
  AbonoRoute({
    Key? key,
    PrestamoModel? prestamoParametro,
    List<PageRouteInfo>? children,
  }) : super(
          AbonoRoute.name,
          args: AbonoRouteArgs(
            key: key,
            prestamoParametro: prestamoParametro,
          ),
          initialChildren: children,
        );

  static const String name = 'AbonoRoute';

  static const PageInfo<AbonoRouteArgs> page = PageInfo<AbonoRouteArgs>(name);
}

class AbonoRouteArgs {
  const AbonoRouteArgs({
    this.key,
    this.prestamoParametro,
  });

  final Key? key;

  final PrestamoModel? prestamoParametro;

  @override
  String toString() {
    return 'AbonoRouteArgs{key: $key, prestamoParametro: $prestamoParametro}';
  }
}

/// generated route for
/// [ActivaCuentaPage]
class ActivaCuentaRoute extends PageRouteInfo<void> {
  const ActivaCuentaRoute({List<PageRouteInfo>? children})
      : super(
          ActivaCuentaRoute.name,
          initialChildren: children,
        );

  static const String name = 'ActivaCuentaRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AgenciaPage]
class AgenciaRoute extends PageRouteInfo<void> {
  const AgenciaRoute({List<PageRouteInfo>? children})
      : super(
          AgenciaRoute.name,
          initialChildren: children,
        );

  static const String name = 'AgenciaRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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

  static const PageInfo<BeneficiarioEdicionRouteArgs> page =
      PageInfo<BeneficiarioEdicionRouteArgs>(name);
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
}

/// generated route for
/// [BeneficiarioPage]
class BeneficiarioRoute extends PageRouteInfo<void> {
  const BeneficiarioRoute({List<PageRouteInfo>? children})
      : super(
          BeneficiarioRoute.name,
          initialChildren: children,
        );

  static const String name = 'BeneficiarioRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CambiarContraseniaLoginPage]
class CambiarContraseniaLoginRoute extends PageRouteInfo<void> {
  const CambiarContraseniaLoginRoute({List<PageRouteInfo>? children})
      : super(
          CambiarContraseniaLoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'CambiarContraseniaLoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CambiarContraseniaPage]
class CambiarContraseniaRoute extends PageRouteInfo<void> {
  const CambiarContraseniaRoute({List<PageRouteInfo>? children})
      : super(
          CambiarContraseniaRoute.name,
          initialChildren: children,
        );

  static const String name = 'CambiarContraseniaRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ContactenosPage]
class ContactenosRoute extends PageRouteInfo<void> {
  const ContactenosRoute({List<PageRouteInfo>? children})
      : super(
          ContactenosRoute.name,
          initialChildren: children,
        );

  static const String name = 'ContactenosRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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
          args: CuentaDetalleRouteArgs(
            key: key,
            cuenta: cuenta,
          ),
          initialChildren: children,
        );

  static const String name = 'CuentaDetalleRoute';

  static const PageInfo<CuentaDetalleRouteArgs> page =
      PageInfo<CuentaDetalleRouteArgs>(name);
}

class CuentaDetalleRouteArgs {
  const CuentaDetalleRouteArgs({
    this.key,
    required this.cuenta,
  });

  final Key? key;

  final CuentaModel cuenta;

  @override
  String toString() {
    return 'CuentaDetalleRouteArgs{key: $key, cuenta: $cuenta}';
  }
}

/// generated route for
/// [DatosPersonalesPage]
class DatosPersonalesRoute extends PageRouteInfo<void> {
  const DatosPersonalesRoute({List<PageRouteInfo>? children})
      : super(
          DatosPersonalesRoute.name,
          initialChildren: children,
        );

  static const String name = 'DatosPersonalesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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
          args: DepositoDetalleRouteArgs(
            key: key,
            deposito: deposito,
          ),
          initialChildren: children,
        );

  static const String name = 'DepositoDetalleRoute';

  static const PageInfo<DepositoDetalleRouteArgs> page =
      PageInfo<DepositoDetalleRouteArgs>(name);
}

class DepositoDetalleRouteArgs {
  const DepositoDetalleRouteArgs({
    this.key,
    required this.deposito,
  });

  final Key? key;

  final InversionModel deposito;

  @override
  String toString() {
    return 'DepositoDetalleRouteArgs{key: $key, deposito: $deposito}';
  }
}

/// generated route for
/// [EstadoCuentaPage]
class EstadoCuentaRoute extends PageRouteInfo<void> {
  const EstadoCuentaRoute({List<PageRouteInfo>? children})
      : super(
          EstadoCuentaRoute.name,
          initialChildren: children,
        );

  static const String name = 'EstadoCuentaRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginPinPage]
class LoginPinRoute extends PageRouteInfo<void> {
  const LoginPinRoute({List<PageRouteInfo>? children})
      : super(
          LoginPinRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginPinRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginPrincipalPage]
class LoginPrincipalRoute extends PageRouteInfo<void> {
  const LoginPrincipalRoute({List<PageRouteInfo>? children})
      : super(
          LoginPrincipalRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginPrincipalRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MantenimientoPage]
class MantenimientoRoute extends PageRouteInfo<void> {
  const MantenimientoRoute({List<PageRouteInfo>? children})
      : super(
          MantenimientoRoute.name,
          initialChildren: children,
        );

  static const String name = 'MantenimientoRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MiPerfilPage]
class MiPerfilRoute extends PageRouteInfo<void> {
  const MiPerfilRoute({List<PageRouteInfo>? children})
      : super(
          MiPerfilRoute.name,
          initialChildren: children,
        );

  static const String name = 'MiPerfilRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MisProductosOverviewPage]
class MisProductosOverviewRoute extends PageRouteInfo<void> {
  const MisProductosOverviewRoute({List<PageRouteInfo>? children})
      : super(
          MisProductosOverviewRoute.name,
          initialChildren: children,
        );

  static const String name = 'MisProductosOverviewRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MisProductosRouterPage]
class MisProductosRouterRoute extends PageRouteInfo<void> {
  const MisProductosRouterRoute({List<PageRouteInfo>? children})
      : super(
          MisProductosRouterRoute.name,
          initialChildren: children,
        );

  static const String name = 'MisProductosRouterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MontosMaximosPage]
class MontosMaximosRoute extends PageRouteInfo<void> {
  const MontosMaximosRoute({List<PageRouteInfo>? children})
      : super(
          MontosMaximosRoute.name,
          initialChildren: children,
        );

  static const String name = 'MontosMaximosRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OnboardingPage]
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute({List<PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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

  static const PageInfo<PagoDeunaRouteArgs> page =
      PageInfo<PagoDeunaRouteArgs>(name);
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

  static const PageInfo<PagoServicioRouteArgs> page =
      PageInfo<PagoServicioRouteArgs>(name);
}

class PagoServicioRouteArgs {
  const PagoServicioRouteArgs({
    this.key,
    this.cuentaTransferenciaParametro,
  });

  final Key? key;

  final CuentaModel? cuentaTransferenciaParametro;

  @override
  String toString() {
    return 'PagoServicioRouteArgs{key: $key, cuentaTransferenciaParametro: $cuentaTransferenciaParametro}';
  }
}

/// generated route for
/// [PosicionConsolidadaPage]
class PosicionConsolidadaRoute extends PageRouteInfo<void> {
  const PosicionConsolidadaRoute({List<PageRouteInfo>? children})
      : super(
          PosicionConsolidadaRoute.name,
          initialChildren: children,
        );

  static const String name = 'PosicionConsolidadaRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PreguntasFrecuentesDeunaPage]
class PreguntasFrecuentesDeunaRoute extends PageRouteInfo<void> {
  const PreguntasFrecuentesDeunaRoute({List<PageRouteInfo>? children})
      : super(
          PreguntasFrecuentesDeunaRoute.name,
          initialChildren: children,
        );

  static const String name = 'PreguntasFrecuentesDeunaRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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
          args: PrestamoDetalleRouteArgs(
            key: key,
            prestamo: prestamo,
          ),
          initialChildren: children,
        );

  static const String name = 'PrestamoDetalleRoute';

  static const PageInfo<PrestamoDetalleRouteArgs> page =
      PageInfo<PrestamoDetalleRouteArgs>(name);
}

class PrestamoDetalleRouteArgs {
  const PrestamoDetalleRouteArgs({
    this.key,
    required this.prestamo,
  });

  final Key? key;

  final PrestamoModel prestamo;

  @override
  String toString() {
    return 'PrestamoDetalleRouteArgs{key: $key, prestamo: $prestamo}';
  }
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
          args: QrDeunaErrorRouteArgs(
            key: key,
            errorCode: errorCode,
          ),
          initialChildren: children,
        );

  static const String name = 'QrDeunaErrorRoute';

  static const PageInfo<QrDeunaErrorRouteArgs> page =
      PageInfo<QrDeunaErrorRouteArgs>(name);
}

class QrDeunaErrorRouteArgs {
  const QrDeunaErrorRouteArgs({
    this.key,
    this.errorCode = '',
  });

  final Key? key;

  final String errorCode;

  @override
  String toString() {
    return 'QrDeunaErrorRouteArgs{key: $key, errorCode: $errorCode}';
  }
}

/// generated route for
/// [QrScannerPage]
class QrScannerRoute extends PageRouteInfo<void> {
  const QrScannerRoute({List<PageRouteInfo>? children})
      : super(
          QrScannerRoute.name,
          initialChildren: children,
        );

  static const String name = 'QrScannerRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RecuperarContraseniaPage]
class RecuperarContraseniaRoute extends PageRouteInfo<void> {
  const RecuperarContraseniaRoute({List<PageRouteInfo>? children})
      : super(
          RecuperarContraseniaRoute.name,
          initialChildren: children,
        );

  static const String name = 'RecuperarContraseniaRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RecuperarUsuarioPage]
class RecuperarUsuarioRoute extends PageRouteInfo<void> {
  const RecuperarUsuarioRoute({List<PageRouteInfo>? children})
      : super(
          RecuperarUsuarioRoute.name,
          initialChildren: children,
        );

  static const String name = 'RecuperarUsuarioRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RegistroPinPage]
class RegistroPinRoute extends PageRouteInfo<void> {
  const RegistroPinRoute({List<PageRouteInfo>? children})
      : super(
          RegistroPinRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegistroPinRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SeleccionBeneficiarioPage]
class SeleccionBeneficiarioRoute extends PageRouteInfo<void> {
  const SeleccionBeneficiarioRoute({List<PageRouteInfo>? children})
      : super(
          SeleccionBeneficiarioRoute.name,
          initialChildren: children,
        );

  static const String name = 'SeleccionBeneficiarioRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SeleccionConceptoPage]
class SeleccionConceptoRoute extends PageRouteInfo<void> {
  const SeleccionConceptoRoute({List<PageRouteInfo>? children})
      : super(
          SeleccionConceptoRoute.name,
          initialChildren: children,
        );

  static const String name = 'SeleccionConceptoRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SeleccionCuentaPage]
class SeleccionCuentaRoute extends PageRouteInfo<void> {
  const SeleccionCuentaRoute({List<PageRouteInfo>? children})
      : super(
          SeleccionCuentaRoute.name,
          initialChildren: children,
        );

  static const String name = 'SeleccionCuentaRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SeleccionPrestamoPage]
class SeleccionPrestamoRoute extends PageRouteInfo<void> {
  const SeleccionPrestamoRoute({List<PageRouteInfo>? children})
      : super(
          SeleccionPrestamoRoute.name,
          initialChildren: children,
        );

  static const String name = 'SeleccionPrestamoRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SolicitudesPage]
class SolicitudesRoute extends PageRouteInfo<void> {
  const SolicitudesRoute({List<PageRouteInfo>? children})
      : super(
          SolicitudesRoute.name,
          initialChildren: children,
        );

  static const String name = 'SolicitudesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TerminosCondicionesPage]
class TerminosCondicionesRoute extends PageRouteInfo<void> {
  const TerminosCondicionesRoute({List<PageRouteInfo>? children})
      : super(
          TerminosCondicionesRoute.name,
          initialChildren: children,
        );

  static const String name = 'TerminosCondicionesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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
          args: TransaccionDeunaErrorRouteArgs(
            key: key,
            errorCode: errorCode,
          ),
          initialChildren: children,
        );

  static const String name = 'TransaccionDeunaErrorRoute';

  static const PageInfo<TransaccionDeunaErrorRouteArgs> page =
      PageInfo<TransaccionDeunaErrorRouteArgs>(name);
}

class TransaccionDeunaErrorRouteArgs {
  const TransaccionDeunaErrorRouteArgs({
    this.key,
    this.errorCode = '',
  });

  final Key? key;

  final String errorCode;

  @override
  String toString() {
    return 'TransaccionDeunaErrorRouteArgs{key: $key, errorCode: $errorCode}';
  }
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

  static const PageInfo<TransferenciaRouteArgs> page =
      PageInfo<TransferenciaRouteArgs>(name);
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
}
