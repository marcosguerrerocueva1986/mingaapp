import '../../index.dart';

part 'app_router.gr.dart';

final appRouter = AppRouter();

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: LoginRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: PosicionConsolidadaRoute.page,
          initial: false,
        ),
        AutoRoute(
          page: CuentaDetalleRoute.page,
          initial: false,
        ),
        AutoRoute(
          page: DepositoDetalleRoute.page,
          initial: false,
        ),
        AutoRoute(
          page: PrestamoDetalleRoute.page,
          initial: false,
        ),
        AutoRoute(
          page: TransferenciaRoute.page,
          initial: false,
        ),
        AutoRoute(
          page: SeleccionCuentaRoute.page,
          initial: false,
        ),
        AutoRoute(
          page: SeleccionBeneficiarioRoute.page,
          initial: false,
        ),
        AutoRoute(
          page: AbonoRoute.page,
          initial: false,
        ),
        AutoRoute(
          page: SeleccionPrestamoRoute.page,
          initial: false,
        ),
        AutoRoute(
          page: BeneficiarioRoute.page,
          initial: false,
        ),
        AutoRoute(
          page: BeneficiarioEdicionRoute.page,
          initial: false,
        ),
        AutoRoute(
          page: AgenciaRoute.page,
          initial: false,
        ),
      ];
}
