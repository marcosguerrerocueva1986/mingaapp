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
  late Future<List<DetalleInversionModel>> movimientos;
  @override
  void initState() {
    super.initState();
    ref.read(depositoDetalleControllerProvider.notifier).actualizaInformacion(widget.deposito);
    movimientos = ref.read(depositoDetalleControllerProvider.notifier).movimientosInformacion(widget.deposito);
  }

  @override
  Widget build(BuildContext context) {
    var controller = ref.read(depositoDetalleControllerProvider.notifier);
    var provider = ref.watch(depositoDetalleControllerProvider);
    var loginProvider = ref.watch(loginControllerProvider);
    var nombreCliente = loginProvider.loginRespuesta?.nombre ?? 'Usuario';

    return ScaffoldBootstrap(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromRGBO(0, 114, 181, 48),
        centerTitle: true,
        title: const Text(
          'Mi Inversión',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(5,0,5,0),
        child: Center(
          child: RefreshIndicator(
            onRefresh: () => controller.actualizaInformacion(widget.deposito),
            child: ListView(
              children: [
                Card(
                  elevation: 0,
                  margin: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Colors.transparent,
                  child: Container(
                    width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/imagencardinformacion.jpg'),
                          fit: BoxFit.fill,
                          alignment: Alignment.center
                        ),
                      ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: defaultPadding, vertical: defaultPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget> [
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  <Widget> [
                                  SizedBox(
                                    width: 300,
                                    child: Text(
                                      widget.deposito.tipo.toUpperCase(),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      softWrap: true,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                        shadows: [
                                          Shadow(
                                            blurRadius: 2.0,
                                            color: Colors.white,
                                            offset: Offset(1.0, 1.0)
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 8),
                              Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget> [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                                  child: ElevatedButton (
                                    onPressed: () {},// onToggleVisibility,
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.transparent, 
                                        foregroundColor: Colors.white, 
                                        elevation: 0, 
                                        padding: EdgeInsets.zero, 
                                        minimumSize: Size.zero, 
                                        tapTargetSize: MaterialTapTargetSize.shrinkWrap, 
                                      ),
                                      child: Ink.image(
                                        image: const AssetImage('assets/images/ojocuenta.png'),
                                        fit: BoxFit.fill,
                                        width: 24,
                                        height: 15,
                                      ),
                                    ),
                                ),
                                ],
                              ),
                            ],
                          ),
                          Text(
                              nombreCliente,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                    blurRadius: 2.0,
                                    color: Colors.white,
                                    offset: Offset(1.0, 1.0)
                                  ),
                                ],
                              ),
                          ),
                          Row(
                            children: [
                                  const Text(
                                  'N° OPERACIÓN: ',
                                  style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      blurRadius: 2.0,
                                      color: Colors.white,
                                      offset: Offset(1.0, 1.0)
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                  widget.deposito.codigo,
                                  style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      blurRadius: 2.0,
                                      color: Colors.white,
                                      offset: Offset(1.0, 1.0)
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 50.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget> [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget> [
                                  const Text(
                                      'Saldo: ',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                        shadows: [
                                          Shadow(
                                            blurRadius: 2.0,
                                            color: Colors.white,
                                            offset: Offset(1.0, 1.0)
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      widget.deposito.monto.toMoney(),
                                      //isBalanceVisible ? '\$${balance.toStringAsFixed(2)}' : '********',
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 28.0,
                                        fontWeight: FontWeight.bold,
                                        shadows: [
                                          Shadow(
                                          blurRadius: 2.0,
                                          color: Colors.white,
                                          offset: Offset(1.0, 1.0)
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget> [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                                  child: ElevatedButton (
                                    onPressed: () {
                                        print('ver más detalles');
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.transparent, 
                                        foregroundColor: Colors.white, 
                                        elevation: 0, 
                                        padding: EdgeInsets.zero, 
                                        minimumSize: Size.zero, 
                                        tapTargetSize: MaterialTapTargetSize.shrinkWrap, 
                                      ),
                                      child: Ink.image(
                                        image: const AssetImage('assets/images/verdetalles.png'),
                                        fit: BoxFit.fill,
                                        width: 140,
                                        height: 20,
                                      ),
                                    ),
                                ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                  child: Column(
                    children: <Widget> [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                        child: TarjetaDetallesInversion(inversion: widget.deposito),
                      ),
                      TextButton(
                        onPressed: () {
                          appRouter.push(const MantenimientoRoute());
                        }, 
                        style: TextButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(48, 155, 217, 25),
                          padding: const EdgeInsets.fromLTRB(40,1,40,1),
                        ),
                        child: const Text(
                          'Renovar',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                            decorationThickness: 4.0,
                            decorationColor: Colors.white,
                            fontSize: 22,
                            height: 2,
                          ),
                        )
                      ),
                    ]
                  ),
                ),
                const SizedBox(height: defaultPadding / 2),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5.0), 
                  child: Row(
                    children: [
                      SizedBox(width: 2), 
                      Expanded(
                        child: Text(
                          'Tabla de Pagos',
                          style: TextStyle(fontSize: 14, color: Colors.blue, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        'VALOR',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.blue, 
                          fontWeight: FontWeight.bold, 
                        ),
                      ),
                    ],
                  ),
                ),              
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 1, 20, 0), 
                    child: FutureBuilder<List<DetalleInversionModel>>(
                      future: movimientos,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.waiting) {
                          return const Center(child: CircularProgressIndicator());
                        } else if (snapshot.hasError) {
                          return Center(child: Text('Error al cargar movimientos: ${snapshot.error}')); 
                        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                          return const Center(child: Text('No hay movimientos disponibles.', style: TextStyle(fontSize: 18, color: Colors.grey))); 
                        } else {
                          return ListView(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            children: snapshot.data!
                                .map((detalleInversion) => TarjetaPagosInversion(inversion: detalleInversion))
                                .toList(),
                          );
                        }
                      },
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
class TarjetaDetallesInversion extends StatelessWidget {
const TarjetaDetallesInversion({super.key, required this.inversion});
  final InversionModel  inversion;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 5, 0, 0), // Relleno interno del contenedor
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(0), 
        boxShadow: const [
          BoxShadow(
            color: Colors.transparent,
            spreadRadius: 0, 
            blurRadius: 0, 
            offset: Offset(0, 0), 
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end, 
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                'Saldo Inicial',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              Text(
                inversion.monto.toMoney(),
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          const SizedBox(height: 1),
          _construirFilaDetalle(
            icono: Icons.keyboard_arrow_right,
            etiqueta: 'Plazo en días',
            valor: '${inversion.monto.toMoney()} días',
            colorValor: Colors.blue,
          ),
          _construirDivisor(),
          _construirFilaDetalle(
            icono: Icons.keyboard_arrow_right,
            etiqueta: 'Fecha Vencimiento',
            valor: 'vier. 11 jun. 2025',
            colorValor: Colors.blue,
          ),
          _construirDivisor(),
          _construirFilaDetalle(
            icono: Icons.keyboard_arrow_right,
            etiqueta: 'Tasa de Interés',
            valor: inversion.estado,
            colorValor: Colors.blue,
            pesoFuenteValor: FontWeight.bold,
          ),
          _construirDivisor(),
          _construirFilaDetalle(
            icono: Icons.keyboard_arrow_right,
            etiqueta: 'Mónto a recibir',
            valor: inversion.totalRecibir.toMoney(),
            colorValor: Colors.blue,
          ),
        ],
      ),
    );
  }
}

class TarjetaPagosInversion extends StatelessWidget {
const TarjetaPagosInversion({super.key, required this.inversion});
  final DetalleInversionModel inversion;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 5, 5, 0), // Relleno interno del contenedor
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(0), 
        boxShadow: const [
          BoxShadow(
            color: Colors.transparent,
            spreadRadius: 0, 
            blurRadius: 0, 
            offset: Offset(0, 0), 
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end, 
        children: [
          const SizedBox(height: 1),
          _construirFilaDetalle(
            icono: Icons.keyboard_arrow_right,
            etiqueta: 'Traer detalle de la transaccion',
            valor: inversion.valor.toMoney(),
            colorValor: Colors.grey,
          ),
          _construirFilaDetalle(
            icono: Icons.keyboard_arrow_right,
            etiqueta: 'Fecha Transacción',
            valor: inversion.fecha.toString(),
            colorValor: Colors.grey,
          ),
          _construirDivisor(),
        ],
      ),
    );
  }
}

Widget _construirFilaDetalle({
  required IconData icono, 
  required String etiqueta, 
  required String valor,
  Color? colorValor, 
  FontWeight? pesoFuenteValor, 
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5.0), 
    child: Row(
      children: [
        Icon(icono, size: 16, color: Colors.blue), 
        const SizedBox(width: 2), 
        Expanded(
          child: Text(
            etiqueta,
            style: const TextStyle(fontSize: 13, color: Colors.grey),
          ),
        ),
        Text(
          valor,
          style: TextStyle(
            fontSize: 14,
            color: colorValor ?? Colors.black, 
            fontWeight: pesoFuenteValor ?? FontWeight.normal, 
          ),
        ),
      ],
    ),
  );
}
Widget _construirDivisor() {
  return const Divider(
    height: 1, 
    color: Colors.grey,
    thickness: 0.6,
    indent: 26, 
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

