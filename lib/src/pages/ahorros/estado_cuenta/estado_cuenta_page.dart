import 'package:bancamovilr/index.dart';
import 'package:bancamovilr/src/pages/ahorros/estado_cuenta/estado_cuenta_controller.dart';
import 'package:bancamovilr/src/pages/ahorros/estado_cuenta/estado_cuenta_export_service.dart';
import 'package:collection/collection.dart';
import 'package:intl/intl.dart';

@RoutePage()
class EstadoCuentaPage extends ConsumerStatefulWidget {
  const EstadoCuentaPage({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EstadoCuentaPageState();
}

class _EstadoCuentaPageState extends ConsumerState<EstadoCuentaPage> {
  @override
  Widget build(BuildContext context) {
    var provider = ref.watch(posicionConsolidadaControllerProvider);
    final cuentas = provider.posicionConsolidada?.cuentas ?? [];
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text("Mis Estados de Cuenta", style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromRGBO(0, 114, 181, 1.0),
        centerTitle: true,
      ),
      body: cuentas.isEmpty 
      ? const Center(child: Text("No se encontraron cuentas"))
      : ListView.separated(
        itemCount: cuentas.length,
        separatorBuilder: (context, index) => const Divider(height: 1),
        itemBuilder: (context, index) {
          final account = cuentas[index];
          return ListTile(
            leading: const Icon(Icons.calendar_month, color: Color(0xFF0077B6)),
            title: Text("Cuenta: ${account.codigo}", 
                  style: const TextStyle(fontWeight: FontWeight.w500)),
              subtitle: Text(account.nombre ?? "Ahorros"),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ListaMesesEstadoPage(numeroCuenta: account.codigo),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
class ListaMesesEstadoPage extends ConsumerWidget {
  final String numeroCuenta;

  const ListaMesesEstadoPage({super.key, required this.numeroCuenta});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final estadoMeses = ref.watch(estadosCuentaControllerProvider(numeroCuenta));
    final cliente = ref.watch(posicionConsolidadaControllerProvider);
    final usuario = ref.watch(loginControllerProvider);
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text("Seleccione el Período", style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromRGBO(0, 114, 181, 1.0),
        centerTitle: true,
      ),
      body: estadoMeses.when(
        data: (respuesta) => respuesta.periodos.isEmpty
            ? const Center(child: Text("No hay estados de cuenta disponibles"))
            : ListView.separated(
                padding: const EdgeInsets.all(16),
                itemCount: respuesta.periodos.length,
                separatorBuilder: (context, index) => const SizedBox(height: 10),
                itemBuilder: (context, index) {
                  final periodoI = respuesta.periodos[index];
                  final cuentaEncontrada = cliente.posicionConsolidada?.cuentas?.firstWhereOrNull((j) => j.codigo == numeroCuenta,);
                  final periodo = periodoI.copyWith(
                    numeroCuenta: numeroCuenta,
                    nombreCliente: usuario.loginRespuesta?.nombre ?? '',
                    tipoCuenta: cuentaEncontrada?.tipo ?? '',);
                  return Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    child: ListTile(
                      leading: const CircleAvatar(
                        backgroundColor: Color(0xFFE1F5FE),
                        child: Icon(Icons.description, color: Color(0xFF0077B6)),
                      ),
                      title: Text(
                        periodo.nombreMes,
                        style: const TextStyle(fontWeight: FontWeight.bold,color: Color.fromRGBO(0, 96, 153, 1)),
                      ),
                      subtitle: Column(
                        crossAxisAlignment : CrossAxisAlignment.start,
                        children: [
                        Text("Del ${DateFormat('dd/MM/yyyy').format(periodo.fechaInicio!)} al ${DateFormat('dd/MM/yyyy').format(periodo.fechaFin!)}"),
                        const SizedBox(height: 2),
                        const Text("Toca para ver el resumen"),
                        ],
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HistorialMesesPage(mesSeleccionado: periodo),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
        error: (err, stack) => Center(child: Text("Error: $err")),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
String formatearFecha(DateTime? fecha) {
      if (fecha == null) return "--/--/----";
      return DateFormat('dd/MM/yyyy').format(fecha);
    }
class HistorialMesesPage extends StatelessWidget {
final ResumenMesModel mesSeleccionado;

  const HistorialMesesPage({super.key, required this.mesSeleccionado});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromRGBO(0, 114, 181, 1),
        elevation: 0,
        centerTitle: true,
        title: Text(mesSeleccionado.nombreMes, style: const TextStyle(color: Colors.white)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Center(
              child: Image.asset('assets/images/logopantallamenu.png', width: 120, height: 80),
            ),
            const SizedBox(height: 40),
            const Text(
              "Estado de Cuenta",
              style: TextStyle(color: Color(0xFF0077B6), fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.lightBlue.shade100, width: 2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  const Text("Resumen", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 20),
                  _buildRow("Fecha Inicio", formatearFecha(mesSeleccionado.fechaInicio)),
                  _buildRow("Fecha Fin", formatearFecha(mesSeleccionado.fechaFin!)),
                  _buildRow("Saldo anterior", "\$ ${mesSeleccionado.saldoAnterior ?? '0.00'}"),
                  _buildRow("Creditos", "\$ ${mesSeleccionado.totalCreditos ?? '0.00'}"),
                  _buildRow("Debitos", "\$ ${mesSeleccionado.totalDebitos ?? '0.00'}"),
                  _buildRow("Saldo Actual", "\$ ${mesSeleccionado.saldoActual ?? '0.00'}"),
                  _buildRow("Saldo Promedio", "\$ ${mesSeleccionado.saldoPromedio ?? '0.00'}", isLast: true),
                ],
              ),
            ),
            const SizedBox(height: 60),
            Row(
              children: [
                Expanded(
                  child: _buildDownloadButton(
                    label: "Descargar Pdf",
                    icon: Icons.picture_as_pdf,
                    color: const Color.fromRGBO(0, 114, 181, 1),
                    onTap: () => EstadoCuentaExportService.exportarPDF(mesSeleccionado),
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: _buildDownloadButton(
                    label: "Descargar Excel",
                    icon: Icons.picture_as_pdf,
                    color: const Color.fromRGBO(0, 114, 181, 1),
                    onTap: () => EstadoCuentaExportService.exportarExcel(mesSeleccionado),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  Widget _buildDownloadButton({
    required String label, 
    required IconData icon, 
    required Color color, 
    required VoidCallback onTap
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          border: Border.all(color: color.withOpacity(0.5)),
          borderRadius: BorderRadius.circular(10),
          color: color.withOpacity(0.05),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: color, size: 20),
            const SizedBox(width: 8),
            Text(label, style: TextStyle(color: color, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
  Widget _buildRow(String label, String value, {bool isLast = false}) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(label, style: const TextStyle(color: Colors.grey, fontSize: 14)),
              Text(value, style: const TextStyle(color: Colors.grey, fontSize: 14)),
            ],
          ),
        ),
        if (!isLast) const Divider(color: Colors.grey, thickness: 0.5),
      ],
    );
  }
}
