import 'package:bancamovilr/index.dart';

@RoutePage()
class PosicionConsolidadaPage extends ConsumerStatefulWidget {
  const PosicionConsolidadaPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PosicionConsolidadaPageState();
}

class _PosicionConsolidadaPageState
    extends ConsumerState<PosicionConsolidadaPage> {
  @override
  void initState() {
    super.initState();
    ref
        .read(posicionConsolidadaControllerProvider.notifier)
        .actualizaConsolidado();
  }

  @override
  Widget build(BuildContext context) {
    var controller = ref.read(posicionConsolidadaControllerProvider.notifier);
    var provider = ref.watch(posicionConsolidadaControllerProvider);

    var loginProvider = ref.watch(loginControllerProvider);

    var nombreCliente = loginProvider.loginRespuesta?.nombre ?? 'Usuario';
    var fechaUltimoAcceso =
        loginProvider.validacionOtpRespuesta?.usuario?.fechaUltimoAcceso ?? '';

    SharedPreferences preferences = SharedPreferences();

    return ScaffoldBootstrap(
      appBar: AppBar(
        backgroundColor: context.theme.primaryColor,
        centerTitle: true,
        title: const Text(
          'Posición Consolidada',
          style: TextStyle(color: Colors.white),
        ),
        // title: Column(
        //     crossAxisAlignment: CrossAxisAlignment.center,
        //     children: [Image.asset('assets/images/logo.png', height: 50)]),
        actions: [
          IconButton(
              onPressed: ref.read(themeInfoProvider.notifier).cambiarModo,
              icon: Icon(
                context.theme.brightness == Brightness.light
                    ? Icons.dark_mode
                    : Icons.light_mode,
                color: Colors.white,
              ))
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            SizedBox(
              height: 110,
              child: DrawerHeader(
                padding: const EdgeInsets.only(bottom: 1),
                child: SafeArea(
                  top: false,
                  bottom: false,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: LayoutBuilder(
                          builder: (context, constraints) => Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Image.asset(
                              R.images.logo,
                              height: constraints.maxHeight,
                              width: constraints.maxWidth,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            DrawerItemWidget(
              icon: Icons.account_balance_outlined,
              title: 'Posición Consolidada',
              onTap: () {
                appRouter.pop();
              },
            ),
            const Divider(height: 1),
            const TitleSectionWidget(
              title: 'TRANSFERENCIAS',
            ),
            const Divider(height: 1),
            DrawerItemWidget(
              icon: Icons.sync_outlined,
              title: 'Transferencias Mis Cuentas',
              onTap: () {
                appRouter.pop();
                appRouter.navigate(TransferenciaRoute(
                    tipoTransferencia: TipoTransferencia.misCuentas));
              },
            ),
            const Divider(height: 1),
            DrawerItemWidget(
              icon: Icons.sync_outlined,
              title: 'Transferencias Internas',
              onTap: () {
                appRouter.pop();
                appRouter.navigate(TransferenciaRoute(
                    tipoTransferencia: TipoTransferencia.directa));
              },
            ),
            // const Divider(height: 1),
            // DrawerItemWidget(
            //   icon: Icons.compare_arrows_outlined,
            //   title: 'Transferencias Interbancarias',
            //   onTap: () {
            //     appRouter.pop();
            //     appRouter.navigate(TransferenciaRoute(
            //         tipoTransferencia: TipoTransferencia.interbancaria));
            //   },
            // ),
            const Divider(height: 1),
            DrawerItemWidget(
              icon: Icons.people,
              title: 'Beneficiarios',
              onTap: () {
                appRouter.pop();
                appRouter.navigate(const BeneficiarioRoute());
              },
            ),
            const Divider(height: 1),
            const TitleSectionWidget(
              title: 'PAGOS',
            ),
            const Divider(height: 1),
            DrawerItemWidget(
              icon: Icons.attach_money,
              title: 'Abono Préstamos',
              onTap: () {
                appRouter.navigate(AbonoRoute());
              },
            ),
            // const Divider(height: 1),
            // DrawerItemWidget(
            //   icon: Icons.water_drop_outlined,
            //   title: 'Pagos Servicios',
            //   onTap: () {},
            // ),
            const Divider(height: 1),

            const TitleSectionWidget(
              title: 'AJUSTES',
            ),
            // const Divider(height: 1),
            // DrawerItemWidget(
            //   icon: Icons.lock,
            //   title: 'Bloqueo',
            //   onTap: () {},
            // ),
            const Divider(height: 1),
            DrawerItemWidget(
              icon: Icons.account_tree,
              title: 'Agencias',
              onTap: () {
                appRouter.pop();
                appRouter.navigate(const AgenciaRoute());
              },
            ),
            const Divider(height: 1),
            // DrawerItemWidget(
            //   icon: Icons.fingerprint_outlined,
            //   title: preferences.accesoPorHuellaHabilitado.val
            //       ? 'Deshabilitar Acceso Por Huella'
            //       : 'Habilitar Acceso Por Huella',
            //   onTap: controller.toogleAccesoPorHuella,
            // ),
            // const Divider(height: 1),
            DrawerItemWidget(
              icon: Icons.lock_outline,
              title: 'Cerrar Sesión',
              onTap: controller.cerrarSesion,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: ReactiveForm(
            formGroup: controller.form,
            child: RefreshIndicator(
              onRefresh: controller.actualizaConsolidado,
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: SizedBox(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Bienvenido (a)',
                              textAlign: TextAlign.left,
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            Text(
                              nombreCliente,
                              textAlign: TextAlign.left,
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        ),
                      )),
                      fechaUltimoAcceso.isEmpty
                          ? const SizedBox()
                          : Expanded(
                              child: SizedBox(
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'Últ. Acceso',
                                    textAlign: TextAlign.left,
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                  Text(
                                    fechaUltimoAcceso,
                                    textAlign: TextAlign.right,
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                ],
                              ),
                            ))
                    ],
                  ),
                  const SizedBox(
                    height: defaultPadding,
                  ),
                  const Divider(),
                  if ((provider.posicionConsolidada?.cuentas.length ?? 0) >
                      0) ...[
                    const SizedBox(
                      height: defaultPadding * 2,
                    ),
                    GestureDetector(
                      // onTap: mainViewMode.expandirCuentas,
                      behavior: HitTestBehavior.translucent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "CUENTAS",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                    color: context.getTitlePrimaryColor()),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: defaultPadding,
                    ),
                    seccionCuentas(provider),
                  ],
                  if ((provider.posicionConsolidada?.inversiones.length ?? 0) >
                      0) ...[
                    const SizedBox(
                      height: defaultPadding * 2,
                    ),
                    GestureDetector(
                      // onTap: mainViewMode.expandirCuentas,
                      behavior: HitTestBehavior.translucent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "INVERSIONES",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                    color: context.getTitlePrimaryColor()),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: defaultPadding,
                    ),
                    seccionInversiones(provider),
                  ],
                  if ((provider.posicionConsolidada?.prestamos.length ?? 0) >
                      0) ...[
                    const SizedBox(
                      height: defaultPadding * 2,
                    ),
                    GestureDetector(
                      // onTap: mainViewMode.expandirCuentas,
                      behavior: HitTestBehavior.translucent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "PRÉSTAMOS",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                    color: context.getTitlePrimaryColor()),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: defaultPadding,
                    ),
                    seccionPrestamos(provider),
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TitleSectionWidget extends StatelessWidget {
  const TitleSectionWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Text(
        title,
        style:
            context.textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}

class DrawerItemWidget extends StatelessWidget {
  const DrawerItemWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.translucent,
      child: Opacity(
        opacity: 1.00,
        child: SizedBox(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: defaultPadding,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: <Widget>[
                    Icon(
                      icon,
                      size: 20.0,
                      // color: color,
                    ),
                    const SizedBox(
                      width: defaultPadding,
                    ),
                    Text(
                      title,
                      style: Theme.of(context).textTheme.titleMedium,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: defaultPadding,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget seccionCuentas(PosicionConsolidadaState provider) {
  return provider.posicionConsolidada?.cuentas != null
      ? SizedBox(
          child: ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) => separadorListaItems,
            itemBuilder: (context, position) {
              final cuenta = provider.posicionConsolidada!.cuentas[position];
              return GestureDetector(
                onTap: () =>
                    appRouter.navigate(CuentaDetalleRoute(cuenta: cuenta)),
                child: posicionConsolidadaItem(
                    "Número de cuenta",
                    cuenta.codigo,
                    "Tipo cuenta",
                    cuenta.tipo,
                    "Estado",
                    cuenta.estado,
                    "Saldo Disponible",
                    cuenta.saldo.toMoney(),
                    oddColour: Colors.white),
              );
            },
            itemCount: provider.posicionConsolidada?.cuentas.length ?? 0,
          ),
        )
      : const SizedBox(height: 400.0, child: Center(child: SizedBox()));
}

Widget seccionInversiones(PosicionConsolidadaState provider) {
  return provider.posicionConsolidada?.inversiones != null
      ? SizedBox(
          child: ListView.separated(
            shrinkWrap: true,
            separatorBuilder: (context, index) => separadorListaItems,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, position) {
              final inversion =
                  provider.posicionConsolidada!.inversiones[position];
              return GestureDetector(
                onTap: () => appRouter
                    .navigate(DepositoDetalleRoute(deposito: inversion)),
                child: posicionConsolidadaItem(
                    "Número",
                    inversion.codigo,
                    "Tipo DPF",
                    inversion.estado,
                    "Monto",
                    inversion.monto.toMoney(),
                    "Fecha vencimiento",
                    inversion.fechaVencimiento?.toStringFormat() ?? '',
                    oddColour: Colors.white),
              );
            },
            itemCount: provider.posicionConsolidada?.inversiones.length ?? 0,
          ),
        )
      : const SizedBox(height: 400.0, child: Center(child: SizedBox()));
}

Widget seccionPrestamos(PosicionConsolidadaState provider) {
  return provider.posicionConsolidada?.prestamos != null
      ? SizedBox(
          child: ListView.separated(
            shrinkWrap: true,
            separatorBuilder: (context, index) => separadorListaItems,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, position) {
              final prestamo =
                  provider.posicionConsolidada!.prestamos[position];
              return GestureDetector(
                onTap: () => appRouter
                    .navigate(PrestamoDetalleRoute(prestamo: prestamo)),
                child: posicionConsolidadaItem(
                    "Número de crédito",
                    prestamo.codigo,
                    "Tipo crédito",
                    prestamo.tipo,
                    "Deuda inicial",
                    prestamo.deudaInicial.toMoney(),
                    "Saldo",
                    prestamo.saldo.toMoney(),
                    oddColour: Colors.white),
              );
            },
            itemCount: provider.posicionConsolidada?.prestamos.length ?? 0,
          ),
        )
      : const SizedBox(height: 400.0, child: Center(child: SizedBox()));
}

Widget posicionConsolidadaItem(
        String numeroCuenta,
        String number,
        String tipo,
        String type,
        String saldoContable,
        String balanceAvailable,
        String saldo,
        String balance,
        {Color oddColour = Colors.white}) =>
    Card(
      // elevation: elevacionItem,
      child: Container(
        // decoration: defaultItemBoxDecoration,
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(numeroCuenta),
                const SizedBox(
                  width: 8,
                ),
                Text(number)
              ],
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(tipo),
                const SizedBox(
                  width: 8,
                ),
                Flexible(
                  child: Text(type,
                      textAlign: TextAlign.right,
                      overflow: TextOverflow.ellipsis),
                ),
              ],
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(saldoContable),
                const SizedBox(
                  width: 8,
                ),
                Text(balanceAvailable, textAlign: TextAlign.right)
              ],
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(saldo),
                const SizedBox(
                  width: 8,
                ),
                Text(balance)
              ],
            ),
          ],
        ),
      ),
    );
