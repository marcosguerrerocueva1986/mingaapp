import 'package:auto_route/auto_route.dart';
import 'package:bancamovilr/index.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

@RoutePage()
class DatosPersonalesPage extends ConsumerStatefulWidget {
  const DatosPersonalesPage({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DatosPersonalesPageState();
}

class _DatosPersonalesPageState extends ConsumerState<DatosPersonalesPage> {
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
  Widget build(BuildContext context) {
    var controller = ref.read(posicionConsolidadaControllerProvider.notifier);
    var provider = ref.watch(posicionConsolidadaControllerProvider);
    var loginProvider = ref.watch(loginControllerProvider);
    var nombreCliente = loginProvider.loginRespuesta?.nombre ?? 'Usuario';
    var fechaUltimoAccesoSF = loginProvider.validacionOtpRespuesta?.usuario?.fechaUltimoAcceso ?? '';
    final fechaFormateada = convertirStringAFechaFormateada(fechaUltimoAccesoSF);
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
                  'Datos personales',
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
              _buildInfoItem(title: 'Estado Civil', value: provider.posicionConsolidada?.persona?.estadoCivil),
              _buildInfoItem(title: 'Fecha nacimiento', value: provider.posicionConsolidada?.persona?.fechaNacimiento.toString()),
              _buildInfoItem(title: 'Telefono', value: provider.posicionConsolidada?.persona?.telefono),
              _buildInfoItem(title: 'Direccion', value: provider.posicionConsolidada?.persona?.direccion),
              _buildInfoItem(title: 'Correo', value: provider.posicionConsolidada?.persona?.email),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoItem({required String title, required String? value}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 16),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
        ),
        const SizedBox(height: 4),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            value ?? 'Información no disponible', 
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ),
        const Divider(color: Colors.grey, height: 20),
      ],
    );
  }
}