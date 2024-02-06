import 'package:bancamovilr/index.dart';

@RoutePage<PrestamoModel?>()
class SeleccionPrestamoPage extends ConsumerStatefulWidget {
  const SeleccionPrestamoPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SeleccionPrestamoPageState();
}

class _SeleccionPrestamoPageState extends ConsumerState<SeleccionPrestamoPage> {
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

    return ScaffoldBootstrap(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: context.theme.primaryColor,
        centerTitle: true,
        title: const Text(
          'Mis Préstamos',
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
                var prestamo = provider.posicionConsolidada!.prestamos[index];

                return GestureDetector(
                  onTap: () => appRouter.pop<PrestamoModel?>(prestamo),
                  behavior: HitTestBehavior.translucent,
                  child: PrestamoItemWidget(prestamo: prestamo),
                );
              },
              itemCount: provider.posicionConsolidada?.prestamos.length ?? 0,
            ),
          ),
        ),
      ),
    );
  }
}
