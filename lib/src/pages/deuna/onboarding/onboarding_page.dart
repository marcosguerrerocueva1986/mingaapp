import 'package:bancamovilr/index.dart';
import 'package:permission_handler/permission_handler.dart';

@RoutePage()
class OnboardingPage extends ConsumerStatefulWidget {
  const OnboardingPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends ConsumerState<OnboardingPage>
    with SingleTickerProviderStateMixin {
  
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _checkCameraPermission();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);
  }

  void _checkCameraPermission() async {
    final status = await Permission.camera.request();
    if (!status.isGranted) {
      appRouter.back();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: context.theme.primaryColor,
          centerTitle: true,
          title: const Text(
            'Pagar a un QR Deuna',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              AspectRatio(
                aspectRatio: 5 / 3,
                child: Image.asset(
                  R.images.onboardingDeuna,
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: defaultPadding),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Paga a miles de comercios de forma rápida y segura',
                      textAlign: TextAlign.start,
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(
                            color:
                                Theme.of(context).textTheme.titleColor(context),
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(height: defaultPadding),
                    _buildFeature(
                      icon: Icons.qr_code_scanner_outlined,
                      title: 'Escanea un QR Deuna y paga al instante',
                      description:
                          'Olvídate del efectivo y de escribir números de cuenta.',
                    ),
                    const SizedBox(height: defaultPadding),
                    _buildFeature(
                      icon: Icons.security_outlined,
                      title: 'Seguridad en cada transacción',
                      description:
                          'Tus pagos están protegidos con nuestra tecnología.',
                    ),
                    const SizedBox(height: defaultPadding),
                    _buildFeature(
                      icon: Icons.notifications_none_outlined,
                      title: 'Recibirás una notificación',
                      description:
                          'Siempre recibirás avisos por tus pagos para mantener el control de tu cuenta.',
                    ),
                    const SizedBox(height: defaultPadding),
                    ProcessButton(
                      text: 'CONTINUAR',
                      onPressed: () {
                        SharedPreference preferences = SharedPreference();
                        preferences.onBoardingDeunaMostrado.val = true;

                        appRouter.replace(const QrScannerRoute());
                      },
                    ),
                  ],
                ),
              ),
            ])));
  }

  Widget _buildFeature(
      {required IconData icon,
      required String title,
      required String description}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding / 1.9),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon,
              color: Theme.of(context).textTheme.titleColor(context),
              size: 30.0),
          const SizedBox(width: defaultPadding),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                Text(description),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    // ELIMINADO: controller?.dispose();
    _animationController.dispose();
    super.dispose();
  }
}