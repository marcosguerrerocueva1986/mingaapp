import 'package:bancamovilr/src/pages/deuna/onboarding/onboarding_page.dart';
import 'package:bancamovilr/src/pages/deuna/pago/preguntasfrecuentasdeuna_page.dart';
import 'package:bancamovilr/src/pages/deuna/pago/qrdeuna_error_page.dart';
import 'package:bancamovilr/src/pages/deuna/scanner/qr_scanner_page.dart';

import '../../index.dart';
import '../pages/deuna/pago/index.dart';

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
          page: PagoServicioRoute.page,
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
        AutoRoute(
          page: QrScannerRoute.page,
          initial: false,
        ),
        AutoRoute(
          page: OnboardingRoute.page,
          initial: false,
        ),
        AutoRoute(
          page: PagoDeunaRoute.page,
          initial: false,
        ),
        AutoRoute(
          page: QrDeunaErrorRoute.page,
          initial: false,
        ),
        AutoRoute(
          page: TransaccionDeunaErrorRoute.page,
          initial: false,
        ),
        AutoRoute(
          page: PreguntasFrecuentesDeunaRoute.page,
          initial: false,
        ),
      ];
}
