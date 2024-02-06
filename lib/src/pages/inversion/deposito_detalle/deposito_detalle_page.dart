import 'package:bancamovilr/index.dart';

@RoutePage()
class DepositoDetallePage extends ConsumerStatefulWidget {
  const DepositoDetallePage({super.key, required this.deposito});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DepositoDetallePageState();

  final InversionModel deposito;
}

class _DepositoDetallePageState extends ConsumerState<DepositoDetallePage> {
  @override
  void initState() {
    super.initState();
    ref
        .read(depositoDetalleControllerProvider.notifier)
        .actualizaInformacion(widget.deposito);
  }

  @override
  Widget build(BuildContext context) {
    var controller = ref.read(depositoDetalleControllerProvider.notifier);
    var provider = ref.watch(depositoDetalleControllerProvider);

    return ScaffoldBootstrap(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: context.theme.primaryColor,
        centerTitle: true,
        title: const Text(
          'Mi Inversión',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Center(
          child: RefreshIndicator(
            onRefresh: () => controller.actualizaInformacion(widget.deposito),
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
                                  Text(widget.deposito.tipo,
                                      style: context.textTheme.bodyMedium),
                                  Text('Nro: ${widget.deposito.codigo}'),
                                  Text(
                                    widget.deposito.monto.toMoney(),
                                    textAlign: TextAlign.center,
                                    style: context.textTheme.titleLarge!
                                        .copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Fecha Venc.: ${widget.deposito.fechaVencimiento!.toStringLongFormat()}',
                                    style: context.textTheme.bodySmall,
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
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
                      'Detalles',
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

                          return accountItems(
                            detalle.item,
                            detalle.valor.toMoney(),
                            detalle.fecha!.toStringFormat(),
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

  Container accountItems(String transaccion, String saldo,
          String fechaMovimiento, String valor,
          {Color oddColour = Colors.white}) =>
      Container(
        // decoration: BoxDecoration(color: oddColour),
        padding: const EdgeInsets.only(
            top: defaultPadding,
            bottom: defaultPadding,
            left: defaultPadding,
            right: defaultPadding),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text("Fecha"),
                const SizedBox(
                  width: defaultPadding,
                ),
                Flexible(
                  child: Text(fechaMovimiento,
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
                const Text("Ítem"),
                const SizedBox(
                  width: defaultPadding,
                ),
                Flexible(
                  child: Text(transaccion,
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
                  child: Text(valor,
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
                const Text("Valor"),
                const SizedBox(
                  width: defaultPadding,
                ),
                Flexible(
                  child: Text(saldo,
                      textAlign: TextAlign.right,
                      overflow: TextOverflow.ellipsis),
                ),
              ],
            ),
          ],
        ),
      );
}
