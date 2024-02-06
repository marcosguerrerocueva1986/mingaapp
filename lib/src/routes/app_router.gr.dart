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
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginPage(),
      );
    },
    PosicionConsolidadaRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PosicionConsolidadaPage(),
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
    SeleccionBeneficiarioRoute.name: (routeData) {
      final args = routeData.argsAs<SeleccionBeneficiarioRouteArgs>();
      return AutoRoutePage<BeneficiarioModel?>(
        routeData: routeData,
        child: SeleccionBeneficiarioPage(
          args.tipoTransferencia,
          key: args.key,
        ),
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
    TransferenciaRoute.name: (routeData) {
      final args = routeData.argsAs<TransferenciaRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: TransferenciaPage(
          key: args.key,
          tipoTransferencia: args.tipoTransferencia,
          cuentaTransferenciaParametro: args.cuentaTransferenciaParametro,
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
/// [SeleccionBeneficiarioPage]
class SeleccionBeneficiarioRoute
    extends PageRouteInfo<SeleccionBeneficiarioRouteArgs> {
  SeleccionBeneficiarioRoute({
    required TipoTransferencia tipoTransferencia,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          SeleccionBeneficiarioRoute.name,
          args: SeleccionBeneficiarioRouteArgs(
            tipoTransferencia: tipoTransferencia,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SeleccionBeneficiarioRoute';

  static const PageInfo<SeleccionBeneficiarioRouteArgs> page =
      PageInfo<SeleccionBeneficiarioRouteArgs>(name);
}

class SeleccionBeneficiarioRouteArgs {
  const SeleccionBeneficiarioRouteArgs({
    required this.tipoTransferencia,
    this.key,
  });

  final TipoTransferencia tipoTransferencia;

  final Key? key;

  @override
  String toString() {
    return 'SeleccionBeneficiarioRouteArgs{tipoTransferencia: $tipoTransferencia, key: $key}';
  }
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
/// [TransferenciaPage]
class TransferenciaRoute extends PageRouteInfo<TransferenciaRouteArgs> {
  TransferenciaRoute({
    Key? key,
    required TipoTransferencia tipoTransferencia,
    CuentaModel? cuentaTransferenciaParametro,
    List<PageRouteInfo>? children,
  }) : super(
          TransferenciaRoute.name,
          args: TransferenciaRouteArgs(
            key: key,
            tipoTransferencia: tipoTransferencia,
            cuentaTransferenciaParametro: cuentaTransferenciaParametro,
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
  });

  final Key? key;

  final TipoTransferencia tipoTransferencia;

  final CuentaModel? cuentaTransferenciaParametro;

  @override
  String toString() {
    return 'TransferenciaRouteArgs{key: $key, tipoTransferencia: $tipoTransferencia, cuentaTransferenciaParametro: $cuentaTransferenciaParametro}';
  }
}
