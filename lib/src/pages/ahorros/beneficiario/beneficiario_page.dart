import 'package:bancamovilr/index.dart';

@RoutePage()
class BeneficiarioPage extends ConsumerStatefulWidget {
  const BeneficiarioPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _BeneficiarioPageState();
}

class _BeneficiarioPageState extends ConsumerState<BeneficiarioPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(beneficiarioControllerProvider.notifier).inicializa();
    });
  }

  @override
  Widget build(BuildContext context) {
    var controller = ref.read(beneficiarioControllerProvider.notifier);
    var provider = ref.watch(beneficiarioControllerProvider);

    var beneficiariosInternos =
        provider.beneficiarios.where((element) => element.esInterno).toList();

    var beneficiariosExternos =
        provider.beneficiarios.where((element) => !element.esInterno).toList();

    return DefaultTabController(
        length: 2,
        child: Builder(builder: (BuildContext context) {
          return ScaffoldBootstrap(
            appBar: AppBar(
              iconTheme: const IconThemeData(color: Colors.white),
              backgroundColor: context.theme.primaryColor,
              centerTitle: true,
              title: const Text(
                'Beneficiarios',
                style: TextStyle(color: Colors.white),
              ),
              bottom: const TabBar(
                labelColor: Colors.white,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.white,
                tabs: [
                  Tab(
                      text: "Internos",
                      icon: Icon(
                        Icons.person,
                      )),
                  Tab(
                      text: "Externos",
                      icon: Icon(
                        Icons.supervised_user_circle,
                      )),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () {
                controller.agregarNuevoEditarBeneficiario(
                    0, DefaultTabController.of(context).index == 0);
              },
            ),
            body: RefreshIndicator(
              onRefresh: controller.actualizaListaBeneficiarios,
              child: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: ReactiveForm(
                  formGroup: controller.form,
                  child: SizedBox(
                    child: TabBarView(children: [
                      beneficiariosInternos.isEmpty
                          ? const EmptyResult()
                          : RefreshIndicator(
                              onRefresh: controller.actualizaListaBeneficiarios,
                              child: ListView.separated(
                                physics: const BouncingScrollPhysics(),
                                separatorBuilder: (context, index) =>
                                    separadorListaItems,
                                itemBuilder: (context, index) {
                                  var beneficiario =
                                      beneficiariosInternos.toList()[index];

                                  return GestureDetector(
                                    onTap: () => appRouter.push(
                                        BeneficiarioEdicionRoute(
                                            id: beneficiario.id,
                                            esInterno: true)),
                                    behavior: HitTestBehavior.translucent,
                                    child: BeneficiarioItemWidget(
                                        beneficiario: beneficiario),
                                  );
                                },
                                itemCount: beneficiariosInternos.length,
                              ),
                            ),
                      beneficiariosExternos.isEmpty
                          ? const EmptyResult()
                          : RefreshIndicator(
                              onRefresh: controller.actualizaListaBeneficiarios,
                              child: ListView.separated(
                                physics: const BouncingScrollPhysics(),
                                separatorBuilder: (context, index) =>
                                    separadorListaItems,
                                itemBuilder: (context, index) {
                                  var beneficiario =
                                      beneficiariosExternos.toList()[index];

                                  return GestureDetector(
                                    onTap: () => appRouter.push(
                                        BeneficiarioEdicionRoute(
                                            id: beneficiario.id,
                                            esInterno: false)),
                                    behavior: HitTestBehavior.translucent,
                                    child: BeneficiarioItemWidget(
                                        beneficiario: beneficiario),
                                  );
                                },
                                itemCount: beneficiariosExternos.length,
                              ),
                            )
                    ]),
                  ),
                ),
              ),
            ),
          );
        }));
  }

  List<Widget> itemsParaConfirmacionRecibo(
      List<EtiquetaValorRecibo> listaDetalle) {
    List<Widget> lista = [];

    for (var item in listaDetalle) {
      lista.add(
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              '${item.etiqueta}:',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              width: defaultPadding,
            ),
            Flexible(
              child: Text(item.valor,
                  overflow: TextOverflow.ellipsis, textAlign: TextAlign.right),
            ),
          ],
        ),
      );

      lista.add(
        const SizedBox(
          height: defaultPadding,
        ),
      );
    }

    return lista;

    // return [
    //   Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     children: <Widget>[
    //       const Text(
    //         'Valor:',
    //         style: TextStyle(fontWeight: FontWeight.bold),
    //       ),
    //       const SizedBox(
    //         width: defaultPadding,
    //       ),
    //       Flexible(
    //         child: Text(100.00.toMoney(),
    //             overflow: TextOverflow.ellipsis, textAlign: TextAlign.right),
    //       ),
    //     ],
    //   ),
    //   const SizedBox(
    //     height: 20,
    //   ),
    //   Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     children: <Widget>[
    //       const Text(
    //         'Comisión:',
    //         style: TextStyle(fontWeight: FontWeight.bold),
    //       ),
    //       const SizedBox(
    //         width: defaultPadding,
    //       ),
    //       Flexible(
    //         child: Text(
    //             widget.tipoTransferencia != TipoTransferencia.interbancaria
    //                 ? (0.00).toMoney()
    //                 : 0.00.toMoney(),
    //             overflow: TextOverflow.ellipsis,
    //             textAlign: TextAlign.right),
    //       ),
    //     ],
    //   ),
    //   const SizedBox(
    //     height: defaultPadding,
    //   ),
    //   Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     children: <Widget>[
    //       const Text(
    //         'Cuenta Origen: ',
    //         style: TextStyle(fontWeight: FontWeight.bold),
    //       ),
    //       const SizedBox(
    //         width: defaultPadding,
    //       ),
    //       Flexible(
    //         child: Text(provider.cuenta?.codigo ?? '',
    //             overflow: TextOverflow.ellipsis, textAlign: TextAlign.right),
    //       ),
    //     ],
    //   ),
    //   const SizedBox(
    //     height: defaultPadding,
    //   ),
    //   Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     children: <Widget>[
    //       const Text(
    //         'Beneficiario:',
    //         style: TextStyle(fontWeight: FontWeight.bold),
    //       ),
    //       const SizedBox(
    //         width: defaultPadding,
    //       ),
    //       Flexible(
    //         child: Text(provider.beneficiario?.nombre ?? '',
    //             overflow: TextOverflow.ellipsis, textAlign: TextAlign.right),
    //       ),
    //     ],
    //   ),
    //   if (widget.tipoTransferencia == TipoTransferencia.interbancaria) ...[
    //     const SizedBox(
    //       height: defaultPadding,
    //     ),
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       children: <Widget>[
    //         const Text(
    //           'Institución: ',
    //           style: TextStyle(fontWeight: FontWeight.bold),
    //         ),
    //         const SizedBox(
    //           width: defaultPadding,
    //         ),
    //         Flexible(
    //           child: Text(provider.beneficiario?.institucion ?? '',
    //               overflow: TextOverflow.ellipsis, textAlign: TextAlign.right),
    //         ),
    //       ],
    //     )
    //   ],
    //   const SizedBox(
    //     height: defaultPadding,
    //   ),
    //   Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     children: <Widget>[
    //       const Text(
    //         'Cuenta Destino:',
    //         style: TextStyle(fontWeight: FontWeight.bold),
    //       ),
    //       const SizedBox(
    //         width: defaultPadding,
    //       ),
    //       Flexible(
    //         child: Text(provider.beneficiario?.numeroCuenta ?? '',
    //             overflow: TextOverflow.ellipsis, textAlign: TextAlign.right),
    //       ),
    //     ],
    //   )
    // ];
  }
}
