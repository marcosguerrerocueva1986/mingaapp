import 'package:bancamovilr/index.dart';

@RoutePage()
class CuentaDetallePage extends ConsumerStatefulWidget {
  const CuentaDetallePage({super.key, required this.cuenta});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CuentaDetallePageState();

  final CuentaModel cuenta;
}

class _CuentaDetallePageState extends ConsumerState<CuentaDetallePage> {
  @override
  void initState() {
    super.initState();
    ref
        .read(cuentaDetalleControllerProvider.notifier)
        .actualizaInformacion(widget.cuenta);
  }

  @override
  Widget build(BuildContext context) {
    var controller = ref.read(cuentaDetalleControllerProvider.notifier);
    var provider = ref.watch(cuentaDetalleControllerProvider);

    return ScaffoldBootstrap(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: context.theme.primaryColor,
        centerTitle: true,
        title: const Text(
          'Mi Cuenta',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Center(
          child: RefreshIndicator(
            onRefresh: () => controller.actualizaInformacion(widget.cuenta),
            child: ListView(
              children: [
                Card(
                  child: Container(
                    padding: const EdgeInsets.only(
                        top: defaultPadding * 2,
                        left: defaultPadding / 1.2,
                        right: defaultPadding / 1.2,
                        bottom: defaultPadding),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.cuenta.nombre,
                                      style: context.textTheme.bodyMedium!
                                          .copyWith(
                                              fontWeight: FontWeight.bold),
                                    ),
                                    Text('Nro: ${widget.cuenta.codigo}'),
                                  ],
                                ),
                                const SizedBox(
                                  width: defaultPadding,
                                ),
                                GestureDetector(
                                    onTap: () => {
                                          Share.share(
                                              '${widget.cuenta.tipo}\nNúmero: ${widget.cuenta.codigo}')
                                        },
                                    child: const Icon(Icons.share_outlined))
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  widget.cuenta.saldo.toMoney(),
                                  textAlign: TextAlign.end,
                                  style: context.textTheme.titleLarge!
                                      .copyWith(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Saldo Contable: ${widget.cuenta.saldoContable.toMoney()}',
                                  style: context.textTheme.bodySmall,
                                  textAlign: TextAlign.end,
                                ),
                              ],
                            )
                          ],
                        ),
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
                                  onPressed: controller.irATransferencia,
                                  icon: Icon(
                                    Icons.account_balance_outlined,
                                    color: context.textTheme.bodyMedium!.color,
                                  ),
                                  label: Text(
                                    'Transferencia',
                                    style: context.textTheme.bodyMedium,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: context.theme.cardColor,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(100.0),
                                  ),
                                ),
                                child: TextButton.icon(
                                  onPressed: () {
                                    // Acción cuando se presiona el segundo botón
                                  },
                                  icon: Icon(
                                    Icons.water_drop_outlined,
                                    color: context.textTheme.bodyMedium!.color,
                                  ),
                                  label: Text(
                                    'Pago Servicio',
                                    style: context.textTheme.bodyMedium,
                                  ),
                                ),
                              ),
                            ),
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
                      'Movimientos',
                      style: context.textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: context.getTitlePrimaryColor()),
                    ),
                    TextButton.icon(
                      onPressed: controller.filtarPorFecha,
                      icon: Icon(
                        Icons.calendar_month_outlined,
                        color: context.textTheme.bodyMedium!.color,
                      ),
                      label: Text(
                        'Filtar por fecha',
                        style: context.textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
                // const SizedBox(
                //   height: defaultPadding / 2,
                // ),
                (provider.respuestaMovimientos?.movimientos.length ?? 0) == 0
                    ? const EmptyResult(
                        text: 'No se encontraron movimientos',
                      )
                    : GroupedListView<MovimientoCuentaModel, DateTime?>(
                        shrinkWrap: true,
                        elements:
                            provider.respuestaMovimientos?.movimientos ?? [],
                        groupBy: (element) => element.fecha,
                        groupSeparatorBuilder: (DateTime? groupByValue) => Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: defaultPadding, bottom: defaultPadding),
                              child: SizedBox(
                                // color: Colors.blue,
                                child: Text(
                                  groupByValue!.toStringLongFormat(),
                                  style: context.textTheme.bodyMedium!.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: context.getTitlePrimaryColor()),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                            ),
                          ],
                        ),
                        itemComparator: (item1, item2) =>
                            item1.fecha!.compareTo(item2.fecha!),
                        useStickyGroupSeparators: true,
                        floatingHeader: true,
                        order: GroupedListOrder.ASC,
                        separator: separadorListaItems,
                        itemBuilder: (context, MovimientoCuentaModel element) =>
                            Card(
                          child: Container(
                            // decoration: BoxDecoration(color: oddColour),
                            padding: const EdgeInsets.only(
                                top: defaultPadding,
                                bottom: defaultPadding,
                                left: defaultPadding,
                                right: defaultPadding),
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Expanded(
                                  // fit: FlexFit.tight,
                                  child: Container(
                                      padding: const EdgeInsets.only(
                                          right: defaultPadding),
                                      width: double.infinity,
                                      // color: Colors.blue,
                                      child: Text(element.transaccion,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis)),
                                ),
                                SizedBox(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Flexible(
                                        flex: 7,
                                        child: Text(
                                            (element.deposito - element.retiro)
                                                .toMoney(),
                                            textAlign: TextAlign.right,
                                            style: context.textTheme.bodyMedium!
                                                .copyWith(
                                                    fontWeight: FontWeight.bold,
                                                    color: (element.deposito -
                                                                element
                                                                    .retiro) >
                                                            0
                                                        ? Colors.green.shade900
                                                        : Colors.red.shade900),
                                            overflow: TextOverflow.ellipsis),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(element.saldo.toMoney(),
                                          textAlign: TextAlign.right,
                                          overflow: TextOverflow.ellipsis),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AccesoDirectoServicioWidget extends StatelessWidget {
  const AccesoDirectoServicioWidget({
    super.key,
    required this.texto,
    required this.icono,
  });

  final String texto;
  final IconData icono;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: SizedBox(
        child: Column(children: [
          CircleAvatar(
            radius: 25,
            child: Icon(
              icono,
              size: 25,
            ),
          ),
          const SizedBox(
            height: defaultPadding / 2,
          ),
          Text(
            texto,
            maxLines: 2,
            style: context.textTheme.bodySmall,
            textAlign: TextAlign.center,
          )
        ]),
      ),
    );
  }
}
