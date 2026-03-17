import 'package:bancamovilr/index.dart';
import 'package:bancamovilr/src/pages/ahorros/seleccion_concepto/seleccion_concepto_controller.dart';
import 'package:bancamovilr/src/pages/ahorros/widgets/simple_item_widget.dart';

@RoutePage()
class SeleccionConceptoPage extends ConsumerStatefulWidget {
  const SeleccionConceptoPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SeleccionConceptoPageState();
}

class _SeleccionConceptoPageState extends ConsumerState<SeleccionConceptoPage> {
  @override
  void initState() {
    super.initState();
    ref
        .read(seleccionConceptoControllerProvider.notifier)
        .actualizaListaConceptos();
  }

  @override
  Widget build(BuildContext context) {
    var controller = ref.read(seleccionConceptoControllerProvider.notifier);
    var provider = ref.watch(seleccionConceptoControllerProvider);


    return ScaffoldBootstrap(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: context.theme.primaryColor,
        centerTitle: true,
        title: const Text(
          'Conceptos',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Center(
          child: RefreshIndicator(
            onRefresh: () => controller.actualizaListaConceptos(),
            child: ListView.separated(
              separatorBuilder: (context, index) => separadorListaItems,
              itemBuilder: (context, index) {
                var concepto = provider.conceptos[index];

                return GestureDetector(
                  onTap: () => appRouter.pop<ConceptoModel?>(concepto),
                  behavior: HitTestBehavior.translucent,
                  child:  SimpleItemWidget(
                    item: ComunItemModel(codigo: concepto.codigo, nombre: concepto.nombre  ) ,
                            ),);
              },
              itemCount: provider.conceptos.length,
            ),
          ),
        ),
      ),
    );
  }
}
