import 'package:bancamovilr/index.dart';

@RoutePage<CuentaModel?>()
class SeleccionCuentaPage extends ConsumerStatefulWidget {
  const SeleccionCuentaPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SeleccionCuentaPageState();
}

class _SeleccionCuentaPageState extends ConsumerState<SeleccionCuentaPage> {
  @override
  void initState() {
    super.initState();
    ref
        .read(posicionConsolidadaControllerProvider.notifier)
        .actualizaConsolidado(disableLoading: true);
  }

  @override
  Widget build(BuildContext context) {
    var controller = ref.read(posicionConsolidadaControllerProvider.notifier);
    var provider = ref.watch(posicionConsolidadaControllerProvider);

    var cuentasTransaccionales = controller.listaCuentasParaTransferencia();


    return ScaffoldBootstrap(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: context.theme.primaryColor,
        centerTitle: true,
        title: const Text(
          'Mis Cuentas',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Center(
          child: RefreshIndicator(
            onRefresh: () => controller.actualizaConsolidado(),
            child: ListView.separated(
              separatorBuilder: (context, index) => separadorListaItems,
              itemBuilder: (context, index) {
                var cuenta = cuentasTransaccionales?[index];
                return GestureDetector(
                  onTap: () => appRouter.pop<CuentaModel?>(cuenta),
                  behavior: HitTestBehavior.translucent,
                  child: CuentaItemWidget(cuenta: cuenta),
                );
              },
              itemCount: cuentasTransaccionales?.length ?? 0,
            ),
          ),
        ),
      ),
    );
  }
}
