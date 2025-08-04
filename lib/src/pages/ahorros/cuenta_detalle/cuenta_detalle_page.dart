import 'package:bancamovilr/index.dart';
import 'package:bancamovilr/src/pages/general/posicion_consolidad/balance_visibility_controller.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

@RoutePage()
class CuentaDetallePage extends ConsumerStatefulWidget {
  const CuentaDetallePage({super.key, required this.cuenta});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CuentaDetallePageState();

  final CuentaModel cuenta;
}

class _CuentaDetallePageState extends ConsumerState<CuentaDetallePage> {
  bool _mostrarDetallesYPago = true;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(cuentaDetalleControllerProvider.notifier)
        .actualizaInformacion(widget.cuenta);
    });
    initializeDateFormatting('es', null);
  }

  @override
  Widget build(BuildContext context) {
    var controller = ref.read(cuentaDetalleControllerProvider.notifier);
    var provider = ref.watch(cuentaDetalleControllerProvider);
    var loginProvider = ref.watch(loginControllerProvider);
    var nombreCliente = loginProvider.loginRespuesta?.nombre ?? 'Usuario';
    final bool isBalanceVisible = ref.watch(balanceVisibilityProvider.notifier).isBalanceVisible(provider.cuenta?.codigo ?? '');
    onToggleVisibility() {ref.read(balanceVisibilityProvider.notifier).toggleAllBalances();}
    return ScaffoldBootstrap(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromRGBO(0, 114, 181, 48),
        centerTitle: true,
        title: const Text(
          'Mi Cuenta',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(5,0,5,0),
        child: Center(
          child: RefreshIndicator(
            onRefresh: () => controller.actualizaInformacion(widget.cuenta),
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
                                      widget.cuenta.tipo.toUpperCase(),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      softWrap: true,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.normal,
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
                                    onPressed: onToggleVisibility,
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
                                fontWeight: FontWeight.normal,
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
                                  'Cuenta N°: ',
                                  style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.normal,
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
                                  widget.cuenta.codigo,
                                  style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.normal,
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
                                      'Saldo Disponible: ',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.normal,
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
                                      isBalanceVisible ? '\$${widget.cuenta.saldo.toStringAsFixed(2)}' : '********',
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
                                        setState(() {
                                          _mostrarDetallesYPago = !_mostrarDetallesYPago;
                                        });
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
                if (_mostrarDetallesYPago)
                  Column(
                    children: [
                    Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                    child: Column(
                      children: <Widget> [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                          child: TarjetaDetallesCuenta(cuenta: widget.cuenta),
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
                            'Transferir Dinero',
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
                            style: TextStyle(fontSize: 14, color: Color.fromRGBO(0, 96, 152, 20), fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          'VALOR',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(0, 96, 152, 20), 
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
                    child: FutureBuilder<ConsultaMovimientosCuentaRespuesta>(
                      future: controller.movimientosCuenta(widget.cuenta),
                      builder: (context, snapshot) {
                        final List<MovimientoModel> movimientosCargados = 
                        snapshot.data?.movimientos ?? [];
                        if (snapshot.connectionState == ConnectionState.waiting) {
                          return const Center(child: CircularProgressIndicator());
                        } else if (snapshot.hasError) {
                          return Center(child: Text('Error al cargar movimientos: ${snapshot.error}')); 
                        } else if (!snapshot.hasData || movimientosCargados.isEmpty) {
                          return const Center(child: Text('No hay movimientos disponibles.', style: TextStyle(fontSize: 18, color: Colors.grey))); 
                        } else {
                          return ListView(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            children: movimientosCargados
                                .map((movimientoCuenta) => TarjetaPagosCuenta(cuenta: movimientoCuenta,
                                key: ValueKey(movimientoCuenta.documento ?? UniqueKey()),))
                                .toList(),
                          );
                        }
                      },
                    ),
                  ),
                ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class TarjetaDetallesCuenta extends StatelessWidget {
const TarjetaDetallesCuenta({super.key, required this.cuenta});
  final CuentaModel  cuenta;
  @override
  Widget build(BuildContext context) {
    //String fechaFormateada = DateFormat('EEE. dd MMM. yyyy', 'es').format(cuenta.Fecha!);
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
                'Saldo',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              Text(
                cuenta.saldoContable.toMoney(),
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(0, 96, 152, 20),
                ),
              ),
            ],
          ),
          const SizedBox(height: 1),
          _construirFilaDetalle(
            icono: Icons.keyboard_arrow_right,
            etiqueta: 'Saldo Disponible',
            valor: cuenta.saldo.toMoney(),
            colorValor: const Color.fromRGBO(0, 96, 152, 20),
          ),
          _construirDivisor(),
          
          _construirFilaDetalle(
            icono: Icons.keyboard_arrow_right,
            etiqueta: 'Oficina',
            valor: cuenta.oficina,
            colorValor: const Color.fromRGBO(0, 96, 152, 20),
          ),
          _construirDivisor(),
          _construirFilaDetalle(
            icono: Icons.keyboard_arrow_right,
            etiqueta: 'Estado',
            valor: cuenta.estado,
            colorValor: const Color.fromRGBO(0, 96, 152, 20),
            pesoFuenteValor: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}

class TarjetaPagosCuenta extends StatelessWidget {
const TarjetaPagosCuenta({super.key, required this.cuenta});
  final MovimientoModel cuenta;

  @override
  Widget build(BuildContext context) {
    String fechaTransaccion = DateFormat('EEE. dd MMM. yyyy', 'es')
                            .format(cuenta.fecha!);
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
            etiqueta: cuenta.transaccion,
            valor: cuenta.deposito > 0 ? cuenta.deposito.toMoney() : cuenta.retiro.toMoney(),
            colorValor: cuenta.deposito > 0 ? Colors.green : Colors.red,
            pesoFuenteValor: FontWeight.bold,
          ),
          _construirFilaDetalle(
            icono: Icons.keyboard_arrow_right,
            etiqueta: fechaTransaccion,
            valor: cuenta.saldo.toMoney(),
            colorValor: const Color.fromRGBO(0, 96, 152, 20),
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
