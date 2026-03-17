import 'package:bancamovilr/index.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

@RoutePage()
class MiPerfilPage extends ConsumerStatefulWidget {
  const MiPerfilPage({super.key});

  @override 
  ConsumerState<ConsumerStatefulWidget> createState() => _MiPerfilPageState();
}
class _MiPerfilPageState extends ConsumerState<MiPerfilPage> {
  
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      if (mounted) {
        ref.read(posicionConsolidadaControllerProvider.notifier)
           .actualizaConsolidado();
      }
    });
  }

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
  String obtenerIniciales(String nombreCompleto) {
    if (nombreCompleto == null || nombreCompleto.isEmpty) {
      return '';
    }
    List<String> partes = nombreCompleto
        .trim() 
        .split(RegExp(r'\s+')) 
        .where((s) => s.isNotEmpty) 
        .toList();

    if (partes.isEmpty) {
      return '';
    }
    String inicialNombre = partes.first[0].toUpperCase();
    String inicialApellido = '';
    if (partes.length > 1) {
      inicialApellido = partes.last[0].toUpperCase();
    }
    return inicialApellido + inicialNombre;
  }
  @override
  Widget build(BuildContext context) {
    var controller = ref.read(posicionConsolidadaControllerProvider.notifier);
    var provider = ref.watch(posicionConsolidadaControllerProvider);
    var loginProvider = ref.watch(loginControllerProvider);
    var nombreCliente = loginProvider.loginRespuesta?.nombre ?? 'Usuario';
    var fechaUltimoAccesoSF = loginProvider.validacionOtpRespuesta?.usuario?.fechaUltimoAcceso ?? '';
    final fechaFormateada = convertirStringAFechaFormateada(fechaUltimoAccesoSF);
    var nombreIniciales = obtenerIniciales(nombreCliente);
    return PopScope(
    canPop: false, // Bloqueamos la salida directa de la app
    onPopInvokedWithResult: (didPop, result) {
      if (didPop) return;
      appRouter.pushAndPopUntil(
        const PosicionConsolidadaRoute(), 
        predicate: (route) => false,
      );
    },
    child: Scaffold(
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
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.grey,
                      child: Text(
                        nombreIniciales,
                        style: const TextStyle(
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
                  appRouter.push(const DatosPersonalesRoute());
                },
              ),
              _buildListTile(
                icon: Icons.contacts_outlined,
                title: 'Mis contactos',
                onTap: () {
                  appRouter.push(const SeleccionBeneficiarioRoute());
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
                  appRouter.push(const MontosMaximosRoute());
                },
              ),
              _buildListTile(
                icon: Icons.lock_outline,
                title: 'Cambiar contraseña',
                onTap: () {
                  final codigo = loginProvider.validacionOtpRespuesta?.usuario?.codigoUsuario;
                    if (codigo != null) {
                      appRouter.push(CambiarContraseniaRoute(codigoUsuario: codigo));
                    } else {
                      NotificationService.showError(text: 'No se pudo obtener el código de usuario');
                  }
                },
              ),
              _buildListTile(
                icon: Icons.vpn_key_outlined,
                title: 'Crea, gestiona y activa un PIN',
                onTap: () {
                  appRouter.push(const RegistroPinRoute());
                },
              ),
              _buildListTile(
                icon: Icons.fingerprint,
                title: 'Huella / Face ID',
                onTap: () {
                  appRouter.push(const MantenimientoRoute());
                },
              ),
              _buildListTile(
                icon: Icons.article_outlined,
                title: 'Terminos y condiciones',
                onTap: () {
                  appRouter.push(const TerminosCondicionesRoute());
                },
              ),
              _buildListTile(
                icon: Icons.contact_mail_outlined,
                title: 'Contactenos',
                onTap: () {
                  appRouter.push(const ContactenosRoute());
                },
              ),
              _buildListTile(
                icon: Icons.logout,
                title: 'Cerrar Sesión',
                onTap: () async {
                  final bool? confirmar = await showDialog<bool>(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('Cerrar sesión'),
                      content: const Text('¿Está seguro de que desea salir?'),
                      actions: [
                        TextButton(onPressed: () => Navigator.pop(context, false), child: const Text('Cancelar')),
                        TextButton(onPressed: () => Navigator.pop(context, true), child: const Text('Sí')),
                      ],
                    ),
                  );
                  if (confirmar == true) {
                    ref.read(loginControllerProvider.notifier).logout(context);
                  }
                },
              ),
              const SizedBox(height: 10),
            ],
          ),
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
