import 'package:bancamovilr/src/pages/ahorros/seleccion_concepto/seleccion_concepto_page.dart';

import 'package:bancamovilr/src/pages/deuna/onboarding/onboarding_page.dart';
import 'package:bancamovilr/src/pages/deuna/pago/preguntasfrecuentasdeuna_page.dart';
import 'package:bancamovilr/src/pages/deuna/pago/qrdeuna_error_page.dart';
import 'package:bancamovilr/src/pages/deuna/scanner/qr_scanner_page.dart';
import 'package:bancamovilr/src/pages/general/posicion_consolidad/mis_productos_page.dart';
import 'package:bancamovilr/src/pages/general/posicion_consolidad/mis_productos_router_page.dart';
import 'package:bancamovilr/src/pages/general/posicion_consolidad/solicitudes_page.dart';
import 'package:bancamovilr/src/pages/loginprincipal_page.dart';
import 'package:bancamovilr/src/pages/mantenimientopage.dart';
import 'package:bancamovilr/src/pages/seguridades/login/activacuenta_page.dart';
import 'package:bancamovilr/src/pages/seguridades/login/recuperarcontrasenia_page.dart';
import 'package:bancamovilr/src/pages/seguridades/login/recuperarusuario_page.dart';
import 'package:bancamovilr/src/pages/seguridades/login/cambiarcontrasenialogin_page.dart';
import 'package:bancamovilr/src/pages/seguridades/perfil/cambiarcontrasenia_page.dart';
import 'package:bancamovilr/src/pages/seguridades/perfil/contactenos_page.dart';
import 'package:bancamovilr/src/pages/seguridades/perfil/datospersonales_page.dart';
import 'package:bancamovilr/src/pages/seguridades/perfil/miperfil_page.dart';
import 'package:bancamovilr/src/pages/seguridades/perfil/montosmaximos_page.dart';
import 'package:bancamovilr/src/pages/seguridades/perfil/terminoscondiciones_page.dart';
import 'package:bancamovilr/src/pages/splash.dart';

import '../../index.dart';
import '../pages/deuna/pago/index.dart';

part 'app_router.gr.dart';

final appRouter = AppRouter();

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          path: '/',
          initial: true,
        ),
        AutoRoute(
          page: LoginPrincipalRoute.page, path: '/login-principal',
          initial: false,
        ),
        AutoRoute(
          page: LoginRoute.page, path: '/login',
          initial: false,
        ),
        AutoRoute(
          page: TransferenciaRoute.page,
          initial: false,
        ),
         AutoRoute(
          page: SeleccionConceptoRoute.page,
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
        AutoRoute(
          page: MantenimientoRoute.page,
          initial: false,
        ),
        AutoRoute(
          page: RecuperarContraseniaRoute.page,
          initial: false,
        ),
        AutoRoute(
          page: RecuperarUsuarioRoute.page,
          initial: false,
        ),
        AutoRoute(
          page: ActivaCuentaRoute.page,
          initial: false,
        ),
        AutoRoute(
          page: DatosPersonalesRoute.page,
          initial: false,
        ),
        AutoRoute(
          page: MontosMaximosRoute.page,
          initial: false,
        ),
        AutoRoute(
          page: CambiarContraseniaRoute.page,
          initial: false,
        ),
        AutoRoute(
          page: TerminosCondicionesRoute.page,
          initial: false,
        ),
        AutoRoute(
          page: CambiarContraseniaLoginRoute.page,
          initial: false,
        ),
        AutoRoute(
          page: ContactenosRoute.page,
          initial: false,
        ),
        AutoRoute(
          page: PosicionConsolidadaRoute.page, 
          path: '/app', 
          children: [
          AutoRoute(page: PosicionConsolidadaRoute.page, path: '', initial: true),
          AutoRoute(page: MisProductosRouterRoute.page,  path: 'mis-productos',      
            children: [
              AutoRoute(page: MisProductosOverviewRoute.page, path: '', initial: true), 
              AutoRoute(page: CuentaDetalleRoute.page), 
              AutoRoute(page: PrestamoDetalleRoute.page),
              AutoRoute(page: DepositoDetalleRoute.page),
            ],
          ),
          AutoRoute(page: SolicitudesRoute.page, path: 'solicitudes'), 
          AutoRoute(page: MiPerfilRoute.page, path: 'perfil'), 
        ]),
      ];
}
