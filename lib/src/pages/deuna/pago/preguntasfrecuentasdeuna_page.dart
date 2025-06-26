import 'package:bancamovilr/index.dart';

@RoutePage()
class PreguntasFrecuentesDeunaPage extends StatelessWidget {
  const PreguntasFrecuentesDeunaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldBootstrap(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: context.theme.primaryColor,
        centerTitle: true,
        title: const Text(
          'Preguntas Frecuentas',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: defaultPadding * 2),
            const PreguntaRespuesta(
              pregunta: '¿Cómo pago escaneando un código QR Deuna?',
              respuesta:
                  'Encuentra el botón “Escanear” en la pantalla de tu app, escanea el código QR, ingresa el monto y confirma el nombre de la persona o negocio.',
            ),
            const SizedBox(height: defaultPadding * 2),
            const PreguntaRespuesta(
              pregunta: '¿Cuánto tiempo es válido un código QR?',
              respuesta:
                  'El código QR nunca vence. Úsalo las veces que quieras. Recuerda que cada persona o negocio tiene un código QR único.',
            ),
            const SizedBox(height: defaultPadding * 2),
            const PreguntaRespuesta(
              pregunta: '¿Hasta cuánto puedo pagar por QR en un día?',
              respuesta:
                  'El monto máximo diario que puedes pagar por código QR es de hasta \$500.',
            ),
            const SizedBox(height: defaultPadding * 3),
            Card(
              child: Container(
                padding: const EdgeInsets.all(16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.flag,
                        color: Theme.of(context).textTheme.titleMedium!.color),
                    const SizedBox(width: defaultPadding),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ten en cuenta',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: defaultPadding / 3),
                          Text(
                            'Siempre verifica el nombre de la persona o negocio al que vas a pagar antes de confirmar tu pago.',
                            style: Theme.of(context).textTheme.titleMedium,
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF555555),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('CONTINUAR'),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class PreguntaRespuesta extends StatelessWidget {
  final String pregunta;
  final String respuesta;

  const PreguntaRespuesta({
    super.key,
    required this.pregunta,
    required this.respuesta,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          pregunta,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontWeight: FontWeight.w600),
          textAlign: TextAlign.justify,
        ),
        const SizedBox(height: 4),
        Text(
          respuesta,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontWeight: FontWeight.w100, color: Colors.grey),
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }
}
