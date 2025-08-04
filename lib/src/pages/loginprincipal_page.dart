import 'package:bancamovilr/index.dart';
import 'package:bancamovilr/src/providers/auth_storage_provider.dart';
import 'package:bancamovilr/src/services/auth_storage_service.dart';
import 'package:bancamovilr/subfolders.dart' hide SharedPreferences;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
import 'package:bancamovilr/src/pages/loginprincipal_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

@RoutePage()
class LoginPrincipalPage extends ConsumerStatefulWidget {
  const LoginPrincipalPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginPrincipalState();
}

class _LoginPrincipalState extends ConsumerState<LoginPrincipalPage> {
  String? _errorMessage;
  bool _isLoading = false;
  final LocalAuthentication auth = LocalAuthentication();
  bool _isBiometricAvailable = false;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _checkBiometrics();
  }

  Future<void> _checkBiometrics() async {
    bool canCheckBiometrics = false;
    try {
      canCheckBiometrics = await auth.canCheckBiometrics;
      if (canCheckBiometrics) {
        List<BiometricType> availableBiometrics = await auth.getAvailableBiometrics();
        if (availableBiometrics.isNotEmpty) {
          canCheckBiometrics = true;
        } else {
          canCheckBiometrics = false;
        }
      }
    } on PlatformException catch (e) {
      print('Error al verificar biometría: ${e.message}');
      canCheckBiometrics = false;
    }
    if (!mounted) return;
    setState(() {
      _isBiometricAvailable = canCheckBiometrics;
    });
  }
  Future<void> _loginConHuellaDactilar() async {
    try {
      setState(() {
        _errorMessage = null; // Limpiar mensaje de error anterior
        _isLoading = true;
      });
      if (!_isBiometricAvailable) {
        setState(() {
          _errorMessage = 'Biometría no disponible o no configurada en el dispositivo.';
          _isLoading = false;
        });
        return;
      }
    } catch (e) {
      setState(() {
        _errorMessage = 'Error de biometría: $e';
      });
    }
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/huelladactilar.png',
                height: 100,
                width: 100,
                color: Colors.blueAccent,
              ),
              const SizedBox(height: 20),
              const Text(
                'Toca el sensor para acceder',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              const CircularProgressIndicator(), 
            ],
          ),
        );
      },
    );
    bool authenticated = false;
    try {
        authenticated = await auth.authenticate(
          localizedReason: 'Autenticación con huella para acceder',
          options: const AuthenticationOptions(
            biometricOnly: true,
            stickyAuth: false,
          ),
        );
      } on PlatformException catch (e) {
        print('Error en la autenticación biométrica: ${e.message}');
        authenticated = false;
        setState(() {
          _errorMessage = 'Error: ${e.message!.split(':').last.trim()}';
        });
      } finally {
        if (mounted && Navigator.of(context).canPop()) {
          Navigator.of(context).pop();
        }
      }
      if (!mounted) return;
      if (authenticated) {
        final AuthStorageService authStorageService = ref.read(authStorageServiceProvider);
        final storedUserId = await authStorageService.getUserId();
        if (storedUserId != null) {
          final controller = ref.read(loginPrincipalControllerProvider.notifier);
          controller.accesoPorHuella(storedUserId);
        }
        else {
          setState(() {
          _errorMessage = 'No hay datos de usuario guardados para login biométrico. Inicie sesión con credenciales.';
          });
        }
      }
      else {
        setState(() {
          _errorMessage ??= 'Autenticación de huella fallida.';
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.zero,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget> [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/fondoLogin.jpg'),
                fit: BoxFit.cover),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Image.asset('assets/images/logo1.png', width: 160, height: 130),
                          const SizedBox(width: 32,),
                          Image.asset('assets/images/logo2.png', width: 160, height: 110),
                        ],
                    ),
                  ),
                ],
              ),
            ), 
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset('assets/images/logomitad.png',
                  width: 350,
                  height: 350,
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget> [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            context.router.push(const LoginRoute());
                          },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              elevation: 0,
                              padding: EdgeInsets.zero,
                              shadowColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Ink.image(
                              image: const AssetImage('assets/images/usuariocontrasenia.png'),
                              fit: BoxFit.cover,
                              width: 75,
                              height: 120,
                            ),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: _loginConHuellaDactilar,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              elevation: 0,
                              padding: EdgeInsets.zero,
                              shadowColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: Ink.image(
                              image: const AssetImage('assets/images/accesobiometrico.png'),
                              fit: BoxFit.cover,
                              width: 70,
                              height: 120,
                            ),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                              print('Botón 3 presionado');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              elevation: 0,
                              padding: EdgeInsets.zero,
                              shadowColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Ink.image(
                              image: const AssetImage('assets/images/pin.png'),
                              fit: BoxFit.cover,
                              width: 70,
                              height: 120,
                            ),
                        ),
                      ),
                    ],                    
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget> [
                      TextButton(
                        onPressed: () {
                          appRouter.push(const ActivaCuentaRoute());
                        }, 
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                        ),
                        child: const Text(
                          'Activa tu Cuenta',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                            decorationThickness: 2.0,
                            decorationColor: Colors.white,
                            fontSize: 18,
                            height: 1.3,
                          ),
                        )
                      ),
                    ],
                  ),
                  const SizedBox(height: 5,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}