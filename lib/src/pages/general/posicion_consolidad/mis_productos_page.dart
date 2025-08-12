import 'package:bancamovilr/index.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MisProductosOverviewPage extends ConsumerStatefulWidget {
  const MisProductosOverviewPage({Key? key}) : super(key: key);
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MisProductosOverviewPageState();
}

class _MisProductosOverviewPageState extends ConsumerState<MisProductosOverviewPage> {
  String _selectedCategory = 'Todos';

  @override
  Widget build(BuildContext context) {
    var provider = ref.watch(posicionConsolidadaControllerProvider);

    return Scaffold(
      appBar: _buildAppBar(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Mis Productos',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: ContextExtension(context).getTitlePrimaryColor(), 
                ),
              ),
            ),
          ),
          _buildCategoryTabs(),
          Expanded(
              child: SingleChildScrollView(
              child: _buildFilteredList(
                category: _selectedCategory
              ),
            ),
          ),            
        ]
      ),
    );
  }

  Widget _buildFilteredList({
    required String category,
  }) {
  switch (category) {
    case 'Todos':
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
              _buildSectionTitle('Mis Cuentas'),
              _buildCuentasList(context),
              const SizedBox(height: 20),
              _buildSectionTitle('Mis Créditos'),
              _buildCreditosList(context), 
              const SizedBox(height: 20),
              _buildSectionTitle('Mis Inversiones'),
              _buildInversionesList(context), 
            ],

      );
    case 'Cuentas':
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTitle('Mis cuentas'),
          _buildCuentasList(context),
        ],
      );
    case 'Créditos':
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTitle('Mis créditos'),
          _buildCreditosList(context),
        ],
      );
      case 'Inversiones':
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTitle('Mis Inversiones'),
          _buildInversionesList(context),
        ],
      );
    default:
      return const Center(child: Text('No hay productos en esta categoría.'));
  }
}

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: const Padding(
        padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
        child: Text('', style: TextStyle(color: Color.fromRGBO(0, 96, 153, 10)))),
    );
  }

  Widget _buildCategoryTabs() {
    final categories = ['Todos', 'Cuentas', 'Créditos', 'Inversiones'];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
          child: Row(
            children: categories.map((category) {
              final isSelected = _selectedCategory == category;
              return Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: GestureDetector( 
                  onTap: () {
                    setState(() {
                      _selectedCategory = category; 
                    });
                  },
                  child: Chip(
                    label: Text(
                      category,
                      style: TextStyle(
                        color: isSelected ? Colors.white : const Color.fromRGBO(48, 155, 217, 1),
                      ),
                    ),
                    backgroundColor: isSelected ? const Color.fromRGBO(48, 155, 217, 1) : Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    side: const BorderSide(color: Color.fromRGBO(48, 155, 217, 1)),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Color.fromRGBO(0, 96, 153, 10)
        ),
      ),
    );
  }

  Widget _buildCuentasList(BuildContext context) {
    var provider = ref.watch(posicionConsolidadaControllerProvider);
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: provider.posicionConsolidada?.cuentas.length,
      itemBuilder: (context, index) {
        final account = provider.posicionConsolidada?.cuentas[index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
          child: Card(
            elevation: 1,
            child: ListTile(
              title: Text(account?.tipo ?? 'No existe el tipo de cuenta', style: const TextStyle(color: Color.fromRGBO(48, 155, 217, 1))),
              subtitle: Text('Nro ${account?.codigo}', style: const TextStyle(color: Color.fromRGBO(48, 155, 217, 1))),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(account?.saldo.toMoney() ?? '0.00', style: const TextStyle(fontWeight: FontWeight.bold, color: Color.fromRGBO(48, 155, 217, 1))),
                  const SizedBox(width: 8),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: false ? const Color.fromRGBO(48, 155, 217, 1) : Colors.grey,
                      //color: account.isFavorite ? const Color.fromRGBO(48, 155, 217, 1) : Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(
                      Icons.star,
                      color: false ? Colors.yellow : Colors.white,
                    ),
                  ),
                ],
              ),
              onTap: () {
                Future.delayed(const Duration(milliseconds: 10), () {
                  context.router.navigate(
                    MisProductosRouterRoute(children: [
                      CuentaDetalleRoute(cuenta: account!),
                    ]),
                  );
                });
              },
            ),
          ),
        );
      },
    );
  }

  Widget _buildCreditosList(BuildContext context) {
    var provider = ref.watch(posicionConsolidadaControllerProvider);
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: provider.posicionConsolidada?.prestamos.length,
      itemBuilder: (context, index) {
        final credito = provider.posicionConsolidada?.prestamos[index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
          child: Card(
            elevation: 1,
            child: ListTile(
              title: Text(credito?.tipo ?? 'No existe el tipo de préstamo', style: const TextStyle(color: Color.fromRGBO(48, 155, 217, 1))),
              subtitle: Text('Nro ${credito?.codigo}', style: const TextStyle(color: Color.fromRGBO(48, 155, 217, 1))),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(credito?.saldo.toMoney() ?? '0.00', style: const TextStyle(fontWeight: FontWeight.bold, color: Color.fromRGBO(48, 155, 217, 1))),
                  const SizedBox(width: 8),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: false ? const Color.fromRGBO(48, 155, 217, 1) : Colors.grey,
                      //color: account.isFavorite ? const Color.fromRGBO(48, 155, 217, 1) : Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(
                      Icons.star,
                      color: false ? Colors.yellow : Colors.white,
                    ),
                  ),
                ],
              ),
              onTap: () {
                Future.delayed(const Duration(milliseconds: 10), () {
                  context.router.navigate(
                    MisProductosRouterRoute(children: [
                      PrestamoDetalleRoute(prestamo: credito!),
                    ]),
                  );
                });
              },
            ),
          ),
        );
      },
    );
  }

  Widget _buildInversionesList(BuildContext context) {
    var provider = ref.watch(posicionConsolidadaControllerProvider);
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: provider.posicionConsolidada?.inversiones.length,
      itemBuilder: (context, index) {
        final inversion = provider.posicionConsolidada?.inversiones[index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
          child: Card(
            elevation: 1,
            child: ListTile(
              title: Text(inversion?.tipo ?? 'No existe el tipo de cuenta', style: const TextStyle(color: Color.fromRGBO(48, 155, 217, 1))),
              subtitle: Text('Nro ${inversion?.codigo}', style: const TextStyle(color: Color.fromRGBO(48, 155, 217, 1))),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(inversion?.monto.toMoney() ?? '0.00', style: const TextStyle(fontWeight: FontWeight.bold, color: Color.fromRGBO(48, 155, 217, 1))),
                  const SizedBox(width: 8),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: false ? const Color.fromRGBO(48, 155, 217, 1) : Colors.grey,
                      //color: account.isFavorite ? const Color.fromRGBO(48, 155, 217, 1) : Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(
                      Icons.star,
                      color: false ? Colors.yellow : Colors.white,
                    ),
                  ),
                ],
              ),
              onTap: () {
                Future.delayed(const Duration(milliseconds: 10), () {
                  context.router.navigate(
                    MisProductosRouterRoute(children: [
                      DepositoDetalleRoute(deposito: inversion!),
                    ]),
                  );
                });
              },
            ),
          ),
        );
      },
    );
  }
}