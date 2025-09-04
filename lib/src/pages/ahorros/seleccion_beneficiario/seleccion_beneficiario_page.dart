import 'package:bancamovilr/index.dart';
import 'package:bancamovilr/src/pages/ahorros/seleccion_beneficiario/seleccion_beneficiario_controller.dart';

@RoutePage<BeneficiarioModel?>()
class SeleccionBeneficiarioPage extends ConsumerStatefulWidget {
  const SeleccionBeneficiarioPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SeleccionBeneficiarioPageState();
}

class _SeleccionBeneficiarioPageState extends ConsumerState<SeleccionBeneficiarioPage> {
  final TextEditingController _searchController = TextEditingController();
  List<BeneficiarioModel> _filteredBeneficiarios = [];
  List<BeneficiarioModel>? _beneficiarios;

  @override
  void initState() {
    super.initState();
    ref.read(seleccionBeneficiarioControllerProvider.notifier).actualizaListaBeneficiarios();
    _searchController.addListener(_filterBeneficiarios);
  }

  @override
  void dispose() {
    _searchController.removeListener(_filterBeneficiarios);
    _searchController.dispose();
    super.dispose();
  }

  void _filterBeneficiarios() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      _filteredBeneficiarios = (_beneficiarios ?? [])
          .where((beneficiario) {
        return beneficiario.nombre.toLowerCase().contains(query);
      }).toList();
    });
  }
  
  @override
  Widget build(BuildContext context) {
    var controller = ref.read(seleccionBeneficiarioControllerProvider.notifier);
    var provider = ref.watch(seleccionBeneficiarioControllerProvider);
   _beneficiarios = ref.watch(seleccionBeneficiarioControllerProvider.notifier)
        .listaBeneficarioPorTipoTransferencia();
    if (_beneficiarios != null && _searchController.text.isEmpty) {
        _filteredBeneficiarios = _beneficiarios!;
    }
    if (_beneficiarios == null) {
      return const Center(child: CircularProgressIndicator());
    }

    return ScaffoldBootstrap(
      appBar: AppBar(
        title: const Text('', style: TextStyle(color: Color.fromRGBO(0, 96, 153, 10), fontWeight: FontWeight.bold)),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Color.fromRGBO(0, 96, 153, 10)),
          onPressed: () => context.router.pop(),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Transferir a:',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(0, 96, 153, 10),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Escribe un nombre o cuenta',
                prefixIcon: const Icon(Icons.search, color: Colors.blue),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: const BorderSide(color: Colors.blue),
                ),
                filled: true,
                fillColor: Colors.transparent,
                contentPadding: const EdgeInsets.symmetric(vertical: 0.0),
              ),
            ),
          ),
          
          // Título de la sección de contactos
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              'Mis contactos:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(0, 96, 153, 10),
              ),
            ),
          ),

          // Lista de beneficiarios
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => separadorListaItems,
              itemCount: _filteredBeneficiarios.length,
              itemBuilder: (context, index) {
                final beneficiario = _filteredBeneficiarios[index];
                return GestureDetector(
                  onTap: () => context.router.pop<BeneficiarioModel?>(beneficiario),
                  behavior: HitTestBehavior.translucent,
                  child: BeneficiarioCard(beneficiario: beneficiario),
                );
              },
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  appRouter.push(BeneficiarioEdicionRoute(id: 0, esInterno: true));
                },
                icon: const Icon(Icons.person_add),
                label: const Text('Nuevo Contacto'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  elevation: 0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BeneficiarioCard extends StatelessWidget {
  final BeneficiarioModel beneficiario;

  const BeneficiarioCard({
    super.key,
    required this.beneficiario,
  });

  @override
  Widget build(BuildContext context) {
  String tipo = beneficiario.tipoCuenta.isNotEmpty == true ? beneficiario.tipoCuenta : 'CTA. Ahorros';
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: ListTile(
          leading: const Icon(Icons.person_outline, size: 35, color: Color.fromRGBO(48, 155, 217, 1)),
          title: Text(
            beneficiario.nombre,
            style: const TextStyle(fontWeight: FontWeight.bold, color: Color.fromRGBO(0, 96, 153, 10), fontSize: 13),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${beneficiario.numeroCuenta} - $tipo',style: const TextStyle(fontSize: 12),),
              Text(beneficiario.institucion, style: const TextStyle(fontSize: 12),),
            ],
          ),
          onTap: () {
            appRouter.push(TransferenciaRoute(tipoTransferencia: beneficiario.esInterno == true ? TipoTransferencia.directa : TipoTransferencia.interbancaria, beneficiario: beneficiario));
          },
        ),
      ),
    );
  }
}

