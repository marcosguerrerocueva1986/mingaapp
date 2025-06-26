import 'package:bancamovilr/index.dart';

@RoutePage()
class QrDeunaErrorPage extends StatelessWidget {
  const QrDeunaErrorPage({super.key, this.errorCode = ''});
  final String errorCode;

  @override
  Widget build(BuildContext context) {
    return ScaffoldBootstrap(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Image.asset(R.images.errorDeunaQr, height: 120),
              const SizedBox(height: 20),
              Text(
                'Error $errorCode',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(color: Colors.grey),
              ),
              const SizedBox(height: 10),
              Text(
                'Escanea un QR válido',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              const Text(
                'Asegúrate que el código QR sea de Deuna y pueda recibir pagos',
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              ProcessButton(
                  text: 'VOLVER A INTENTAR',
                  onPressed: () {
                    appRouter.replace(const QrScannerRoute());
                  }),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
