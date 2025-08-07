import 'package:bancamovilr/index.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

@RoutePage()
class MiPerfilPage extends ConsumerWidget {
  const MiPerfilPage({super.key});
  
  String convertirStringAFechaFormateada(String fechaString) {
    initializeDateFormatting('es', null);

    if (fechaString == null || fechaString.isEmpty) {
      return 'Fecha no disponible';
    }

    try {
      final inputFormat = DateFormat('dd-MM-yyyy HH:mm:ss');
      final fechaDateTime = inputFormat.parse(fechaString);
      final outputFormat = DateFormat('dd MMM yyyy | HH:mm', 'es');
      return outputFormat.format(fechaDateTime);
    } catch (e) {
      print('Error al convertir la fecha: $e');
      return 'Fecha no válida';
    }
  }
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var controller = ref.read(posicionConsolidadaControllerProvider.notifier);
    var provider = ref.watch(posicionConsolidadaControllerProvider);
    var loginProvider = ref.watch(loginControllerProvider);
    var nombreCliente = loginProvider.loginRespuesta?.nombre ?? 'Usuario';
    var fechaUltimoAccesoSF = loginProvider.validacionOtpRespuesta?.usuario?.fechaUltimoAcceso ?? '';
    final fechaFormateada = convertirStringAFechaFormateada(fechaUltimoAccesoSF ?? '');
  
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/logopantallamenu.png', width: 120, height: 80),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                child: Text(
                  'Mi Perfil',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(0, 96, 153, 10),
                  ),
                ),
              ),
              Center(
                child: Column(
                  children: [
                    const SizedBox(height: 24),
                    const CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.grey,
                      child: Text(
                        'DM',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(48, 155, 217, 1),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      nombreCliente,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Último ingreso $fechaFormateada',
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 24),
                  ],
                ),
              ),

              const Text(
                'Informacion personal',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 8),
              _buildListTile(
                icon: Icons.person_outline,
                title: 'Datos personales',
                onTap: () {
                  context.router.push(const DatosPersonalesRoute());
                },
              ),
              _buildListTile(
                icon: Icons.contacts_outlined,
                title: 'Mis contactos',
                onTap: () {
                  context.router.push(const MantenimientoRoute());
                },
              ),
              const SizedBox(height: 24),

              const Text(
                'Configuracion',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 8),
              _buildListTile(
                icon: Icons.credit_card,
                title: 'Limite de transacciones',
                onTap: () {
                  context.router.push(const MontosMaximosRoute());
                },
              ),
              _buildListTile(
                icon: Icons.lock_outline,
                title: 'Cambiar contraseña',
                onTap: () {
                  context.router.push(const CambiarContraseniaRoute());
                },
              ),
              _buildListTile(
                icon: Icons.vpn_key_outlined,
                title: 'Crea, gestiona y activa un PIN',
                onTap: () {
                  context.router.push(const MantenimientoRoute());
                },
              ),
              _buildListTile(
                icon: Icons.fingerprint,
                title: 'Huella / Face ID',
                onTap: () {
                  context.router.push(const MantenimientoRoute());
                },
              ),
              _buildListTile(
                icon: Icons.article_outlined,
                title: 'Terminos y condiciones',
                onTap: () {
                  context.router.push(const TerminosCondicionesRoute());
                },
              ),
              _buildListTile(
                icon: Icons.contact_mail_outlined,
                title: 'Contactenos',
                onTap: () {
                  context.router.push(const MantenimientoRoute());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildListTile({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.symmetric(vertical: 6.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
        side: const BorderSide(color: Color.fromRGBO(48, 155, 217, 1), width: 0.8),
      ),
      child: ListTile(
        leading: Icon(icon, color: Colors.blue),
        title: Text(title, style: const TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.bold)),
        trailing: const Icon(Icons.arrow_forward_ios, size: 10, color: Color.fromRGBO(48, 155, 217, 1)),
        onTap: onTap,
      ),
    );
  }
}