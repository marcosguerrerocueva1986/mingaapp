
import 'package:bancamovilr/index.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MantenimientoPage extends ConsumerStatefulWidget {
  const MantenimientoPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MantenimientoPageState();
}
class _MantenimientoPageState extends ConsumerState<MantenimientoPage> {
  @override
  void initState() {
    super.initState();
  }
  @override
  void dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Atención'),
        backgroundColor: Colors.white, 
        elevation: 0, 
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            appRouter.pushAndPopUntil(const PosicionConsolidadaRoute(), predicate: (_) => false);
          },
        ),
      ),
      body: Container(
        width: double.infinity, 
        padding: const EdgeInsets.all(20.0), 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center, 
          children: <Widget>[
            Image.asset(
              'assets/images/cloudstudiologo.jpg', 
              height: 150, 
              width: 150,
            ),
            const SizedBox(height: 40), 
            const Text(
              '¡Estamos trabajando para mejorar tus servicios!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white, 
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Próximamente, estas funcionalidades estarán disponibles para ti.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 60), 
            ElevatedButton(
              onPressed: () {
                appRouter.pushAndPopUntil(const PosicionConsolidadaRoute(), predicate: (_) => false);
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                'Regresar',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}