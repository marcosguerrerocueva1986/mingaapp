import 'package:bancamovilr/index.dart';
import 'package:bancamovilr/src/pages/ahorros/seleccion_beneficiario/seleccion_beneficiario_controller.dart';

@RoutePage<BeneficiarioModel?>()
class SeleccionBeneficiarioPage extends ConsumerStatefulWidget {
  const SeleccionBeneficiarioPage(this.tipoTransferencia, {super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SeleccionBeneficiarioPageState();

  final TipoTransferencia tipoTransferencia;
}

class _SeleccionBeneficiarioPageState
    extends ConsumerState<SeleccionBeneficiarioPage> {
  @override
  void initState() {
    super.initState();
    ref
        .read(seleccionBeneficiarioControllerProvider.notifier)
        .actualizaListaBeneficiarios();
  }

  @override
  Widget build(BuildContext context) {
    var controller = ref.read(seleccionBeneficiarioControllerProvider.notifier);
    var provider = ref.watch(seleccionBeneficiarioControllerProvider);

    var beneficiarios = controller
        .listaBeneficarioPorTipoTransferencia(widget.tipoTransferencia);

    return ScaffoldBootstrap(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: context.theme.primaryColor,
        centerTitle: true,
        title: const Text(
          'Mis Beneficiarios',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Center(
          child: RefreshIndicator(
            onRefresh: () => controller.actualizaListaBeneficiarios(),
            child: ListView.separated(
              separatorBuilder: (context, index) => separadorListaItems,
              itemBuilder: (context, index) {
                var beneficiario = beneficiarios[index];

                return GestureDetector(
                  onTap: () => appRouter.pop<BeneficiarioModel?>(beneficiario),
                  behavior: HitTestBehavior.translucent,
                  child: BeneficiarioItemWidget(beneficiario: beneficiario),
                );
              },
              itemCount: beneficiarios.length,
            ),
          ),
        ),
      ),
    );
  }
}
