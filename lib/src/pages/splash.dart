import 'package:bancamovilr/index.dart';
@RoutePage()
class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {
  // ignore: unused_field
  String _statusMessage = 'Inicializando...';

  @override
  void initState() {
    super.initState(); 
    _initializeApp();
  }

  Future<void> _initializeApp() async {
    await Future.delayed(const Duration(seconds: 5));
    _redirectToLoginPage();
  }

  void _redirectToLoginPage() {
    appRouter.pushAndPopUntil(const LoginPrincipalRoute(), predicate: (_) => false);
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldBootstrap(
      body: Stack(
        fit: StackFit.expand,
        children:<Widget> [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/fondoSplash.jpg'),
                fit: BoxFit.cover),
            ),
          ),
          Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/logo1.png',
              width: 300,
              height: 300,
            ),
            const SizedBox(height: 20),
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            const Text('',style: TextStyle(color: Colors.white, fontSize: 5),
            ),
          ],
        ),
      ),
        ],
      ),
    );
  }
}
