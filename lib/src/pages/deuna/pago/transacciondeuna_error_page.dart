import 'package:bancamovilr/index.dart';

@RoutePage()
class TransaccionDeunaErrorPage extends StatelessWidget {
  const TransaccionDeunaErrorPage({super.key, this.errorCode = ''});

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
              Image.asset(R.images.errorDeunaTransaccion, height: 120),
              const SizedBox(height: defaultPadding * 1.25),
              Text(
                'Error $errorCode',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(color: Colors.grey),
              ),
              const SizedBox(height: defaultPadding),
              Text(
                'Error en la transacción',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              const Text(
                'Transacción no disponible en este momento, intente más tarde.',
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    const SizedBox(height: defaultPadding),
                    ProcessButton(
                        text: 'LISTO',
                        onPressed: () {
                          appRouter.popUntilRoot();
                        }),
                    const SizedBox(height: defaultPadding),
                    ProcessButton(
                        text: 'OBTENER AYUDA',
                        onPressed: () {
                          //appRouter.back();
                        }),
                  ],
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
