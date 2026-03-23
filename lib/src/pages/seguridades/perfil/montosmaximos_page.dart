import 'package:auto_route/auto_route.dart';
import 'package:bancamovilr/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

@RoutePage()
class MontosMaximosPage extends ConsumerStatefulWidget {
  const MontosMaximosPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MontosMaximosPageState();
}

class _MontosMaximosPageState extends ConsumerState<MontosMaximosPage> {
  late TextEditingController limite;
  @override
  void initState() {
    super.initState();
    final consolidado = ref.read(posicionConsolidadaControllerProvider);
    limite = TextEditingController(
      text: (consolidado.posicionConsolidada?.cliMontosLimites?.limiteTransaccion ?? 0.00).toStringAsFixed(2)
    );
  }
  @override
  void dispose() {
    limite.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    ref.listen(posicionConsolidadaControllerProvider, (previous, next) {
        final valorServidor = (next.posicionConsolidada?.cliMontosLimites?.limiteTransaccion ?? 0.00).toStringAsFixed(2);
        if (limite.text != valorServidor && !next.isLoading) {
            limite.text = valorServidor;
        }
    });
    var consolidado = ref.watch(posicionConsolidadaControllerProvider);
    var controller = ref.read(posicionConsolidadaControllerProvider.notifier);
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
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Text(
                  'Montos maximos transaccionales',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(0, 96, 153, 1),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text(
                  'Banca Móvil',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(0, 96, 153, 1),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text(
                  'Límite de transferencia',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(0, 96, 153, 1),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text(
                  (consolidado.posicionConsolidada?.cliMontosLimites?.limiteTransaccionDiaria ?? 0.00).toMoney(),
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Color.fromRGBO(0, 96, 153, 1),
                  ),
                ),
              ),              
              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text(
                  'Monto de seguridad',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(0, 96, 153, 1),
                  ),
                ),
              ), 
              const SizedBox(height: 5),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text(
                  'Límite de transferencia',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Color.fromRGBO(0, 96, 153, 1),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: limite,
                    keyboardType: const TextInputType.numberWithOptions(decimal: true),
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
                    ],
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide:  BorderSide(color: Color.fromRGBO(48, 155, 217, 1), width: 0.5),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Color.fromRGBO(48, 155, 217, 1), width: 0.5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Color.fromRGBO(48, 155, 217, 1), width: 0.5),
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
                    ),
                  ),
                ],
              ), 
              const SizedBox(height: 350),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    final String limiteTexto = limite.text.trim().replaceAll(',', '.');
                    if (limiteTexto.isEmpty) return;
                    final double? valorDouble = double.tryParse(limiteTexto);
                    if (valorDouble != null) {
                        controller.guardaClienteLimite(valorDouble);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: const Color.fromRGBO(48, 155, 217, 1),
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  child: const Text(
                    'Guardar Cambios',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}