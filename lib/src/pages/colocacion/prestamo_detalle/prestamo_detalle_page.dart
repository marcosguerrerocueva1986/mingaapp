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
  late Future<List<DetalleInversionModel>> movimientos;
  
  @override
  void initState() {
    super.initState();
    ref
        .read(prestamoDetalleControllerProvider.notifier)
        .actualizaInformacion(widget.prestamo);
        //movimientos = ref.read(prestamoDetalleControllerProvider.notifier).movimientosInformacion(widget.prestamo);
  }

  @override
  Widget build(BuildContext context) {
    var controller = ref.read(prestamoDetalleControllerProvider.notifier);
    var provider = ref.watch(prestamoDetalleControllerProvider);
    var loginProvider = ref.watch(loginControllerProvider);
    var nombreCliente = loginProvider.loginRespuesta?.nombre ?? 'Usuario';
    return ScaffoldBootstrap(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromRGBO(0, 114, 181, 48),
        centerTitle: true,
        title: const Text(
          'Mi Préstamo',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(5,0,5,0),
        child: Center(
          child: RefreshIndicator(
            onRefresh: () => controller.actualizaInformacion(widget.prestamo),
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
                        children: <Widget>[
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  <Widget> [
                                  SizedBox(
                                    width: 300,
                                    child: Text(
                                      'CRÉDITO ${widget.prestamo.tipo.toUpperCase()}',
                                       maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      softWrap: true,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.0,
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
                                fontSize: 18.0,
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
                                  widget.prestamo.codigo,
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
                                      widget.prestamo.saldo.toMoney(),
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
                        child: TarjetaDetallesPrestamo(prestamo: widget.prestamo),
                      ),
                      TextButton(
                        onPressed: controller.irAbono,
                        style: TextButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(48, 155, 217, 25),
                          padding: const EdgeInsets.fromLTRB(40,1,40,1),
                        ),
                        child: const Text(
                          'Pagar Ahora',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                            decorationThickness: 2.0,
                            decorationColor: Colors.white,
                            fontSize: 20,
                            height: 1.3,
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
                          'Registro de Pagos',
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
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: (provider.respuestaDetalles?.detalles ?? []).map((detallePrestamo) => TarjetaPagosPrestamo(prestamo: detallePrestamo)).toList(),
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

class TarjetaDetallesPrestamo extends StatelessWidget {
const TarjetaDetallesPrestamo({super.key, required this.prestamo});
  final PrestamoModel  prestamo;
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
                'Deuda Inicial',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              Text(
                prestamo.deudaInicial.toMoney(),
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
            etiqueta: 'Saldo Préstamo',
            valor: prestamo.saldo.toMoney(),
            colorValor: Colors.blue,
          ),
          _construirDivisor(),
          _construirFilaDetalle(
            icono: Icons.keyboard_arrow_right,
            etiqueta: 'Próx. Pago',
            valor: 'vier. 11 jun. 2025',
            colorValor: Colors.blue,
          ),
          _construirDivisor(),
          _construirFilaDetalle(
            icono: Icons.keyboard_arrow_right,
            etiqueta: 'Estado',
            valor: prestamo.estado,
            colorValor: Colors.blue,
            pesoFuenteValor: FontWeight.bold,
          ),
          _construirDivisor(),
          _construirFilaDetalle(
            icono: Icons.keyboard_arrow_right,
            etiqueta: 'Valor a pagar',
            valor: prestamo.valorParaEstarAlDia.toMoney(),
            colorValor: Colors.blue,
          ),
          _construirDivisor(),
          _construirFilaDetalle(
            icono: Icons.keyboard_arrow_right,
            etiqueta: 'Cuotas canceladas',
            valor: '5/32',
            colorValor: Colors.blue,
          ),
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
class TarjetaPagosPrestamo extends StatelessWidget {
const TarjetaPagosPrestamo({super.key, required this.prestamo});
  final DetallePrestamo prestamo;
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
            valor: prestamo.capital.toMoney(),
            colorValor: Colors.grey,
          ),
          _construirFilaDetalle(
            icono: Icons.keyboard_arrow_right,
            etiqueta: 'Fecha Transacción',
            valor: prestamo.fechaPago,
            colorValor: Colors.grey,
          ),
          _construirDivisor(),
        ],
      ),
    );
  }
}

Widget prestamoItems(String fechaVencimiento, String numeroCuota,
        String saldo, String totalCuota, String fechaPago, String estado,
        {Color oddColour = Colors.white}) =>
Card(
  child: Container(
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
