import 'package:bancamovilr/index.dart';

@RoutePage()
class PrestamoDetallePage extends ConsumerStatefulWidget {
  const PrestamoDetallePage({super.key, required this.prestamo});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PrestamoDetallePageState();

  final PrestamoModel prestamo;
}

class _PrestamoDetallePageState extends ConsumerState<PrestamoDetallePage> {
  @override
  void initState() {
    super.initState();
    ref
        .read(prestamoDetalleControllerProvider.notifier)
        .actualizaInformacion(widget.prestamo);
  }

  @override
  Widget build(BuildContext context) {
    var controller = ref.read(prestamoDetalleControllerProvider.notifier);
    var provider = ref.watch(prestamoDetalleControllerProvider);

    return ScaffoldBootstrap(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: context.theme.primaryColor,
        centerTitle: true,
        title: const Text(
          'Mi Préstamo',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Center(
          child: RefreshIndicator(
            onRefresh: () => controller.actualizaInformacion(widget.prestamo),
            child: ListView(
              children: [
                Card(
                  child: Container(
                    padding: const EdgeInsets.only(
                        top: defaultPadding / 1.2,
                        left: defaultPadding / 1.2,
                        right: defaultPadding / 1.2,
                        bottom: defaultPadding),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(widget.prestamo.tipo,
                                      style: context.textTheme.bodyMedium),
                                  Text('Nro: ${widget.prestamo.codigo}'),
                                  Text(
                                    widget.prestamo.deudaInicial.toMoney(),
                                    textAlign: TextAlign.center,
                                    style: context.textTheme.titleLarge!
                                        .copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Saldo.: ${widget.prestamo.saldo.toMoney()}',
                                    style: context.textTheme.bodySmall,
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        if ((provider.prestamo?.saldo ?? 0) > 0) ...[
                          const SizedBox(
                            height: defaultPadding,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: context.theme.cardColor,
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(100.0),
                                    ),
                                  ),
                                  child: TextButton.icon(
                                    onPressed: controller.irAbono,
                                    icon: Icon(
                                      Icons.attach_money_outlined,
                                      color:
                                          context.textTheme.bodyMedium!.color,
                                    ),
                                    label: Text(
                                      'Abonar',
                                      style: context.textTheme.bodyMedium,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ]
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: defaultPadding,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Tabla de Amortización',
                      style: context.textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: context.getTitlePrimaryColor()),
                    ),
                  ],
                ),
                const SizedBox(
                  height: defaultPadding / 2,
                ),
                (provider.respuestaDetalles?.detalles.length ?? 0) == 0
                    ? const EmptyResult(
                        text: 'No se encontraron detalles',
                      )
                    : ListView.separated(
                        shrinkWrap: true,
                        separatorBuilder: (context, index) =>
                            separadorListaItems,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          var detalle =
                              provider.respuestaDetalles!.detalles[index];

                          return prestamoItems(
                            detalle.fechaVencimiento!.toStringFormat(),
                            detalle.numeroCuota.toString(),
                            detalle.saldoAdeudado.toMoney(),
                            detalle.total.toMoney(),
                            detalle.fechaPago,
                            detalle.estado,
                            oddColour: Colors.white,
                          );
                        },
                        itemCount:
                            (provider.respuestaDetalles?.detalles.length ?? 0),
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget prestamoItems(String fechaVencimiento, String numeroCuota,
          String saldo, String totalCuota, String fechaPago, String estado,
          {Color oddColour = Colors.white}) =>
      Card(
        child: Container(
          // decoration: BoxDecoration(color: oddColour),
          padding: const EdgeInsets.only(
              top: defaultPadding,
              bottom: defaultPadding / 2,
              left: defaultPadding,
              right: defaultPadding),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text("Fecha Vencimiento"),
                  const SizedBox(
                    width: defaultPadding,
                  ),
                  Flexible(
                    child: Text(fechaVencimiento,
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
                  const Text("Número Cuota"),
                  const SizedBox(
                    width: defaultPadding,
                  ),
                  Flexible(
                    child: Text(numeroCuota,
                        textAlign: TextAlign.right,
                        overflow: TextOverflow.ellipsis),
                  ),
                ],
              ),
              const SizedBox(
                height: defaultPadding,
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: <Widget>[
              //     Text("Saldo Reducido",
              //         style: TextStyle(
              //             color: Colors.grey,
              //             fontSize: Configuracion.sizeTextoItem)),
              //     const SizedBox(
              //       width: 25,
              //     ),
              //     Flexible(
              //       child: Text(saldo,
              //           textAlign: TextAlign.right,
              //           style: TextStyle(
              //               color: Colors.grey,
              //               fontSize: Configuracion.sizeTextoItem),
              //           overflow: TextOverflow.ellipsis),
              //     ),
              //   ],
              // ),
              // const SizedBox(
              //   height: 10,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text("Total Cuota"),
                  const SizedBox(
                    width: defaultPadding,
                  ),
                  Flexible(
                    child: Text(totalCuota,
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
                  const Text("Estado"),
                  const SizedBox(
                    width: defaultPadding,
                  ),
                  Flexible(
                    child: Text(estado,
                        textAlign: TextAlign.right,
                        overflow: TextOverflow.ellipsis),
                  ),
                ],
              ),
              const SizedBox(
                height: defaultPadding,
              ),
            ],
          ),
        ),
      );
}
