import 'dart:math';
import 'dart:async';
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

class _LoginPrincipalState extends ConsumerState<LoginPrincipalPage> 
with TickerProviderStateMixin {
  String? _errorMessage;
  bool _isLoading = false;
  final LocalAuthentication auth = LocalAuthentication();
  bool _isBiometricAvailable = false;
  late AnimationController _logoMitadAnimationController;
  late Animation<double> _logoMitadScaleAnimation;
  static const double _logoMitadWidth = 350.0;
  static const double _logoMitadHeight = 350.0;
  @override
  void dispose() {
    _logoMitadAnimationController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _checkBiometrics();
    _logoMitadAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    )..repeat(reverse: true); 

    _logoMitadScaleAnimation = Tween<double>(begin: 0.8, end: 1.05).animate( 
      CurvedAnimation(
        parent: _logoMitadAnimationController,
        curve: Curves.easeInOut, 
      ),
    );
  }

  Future<void> _checkBiometrics() async {
    bool canCheckBiometrics = false;
    try {
      canCheckBiometrics = await auth.canCheckBiometrics;
      if (canCheckBiometrics) {
        List<BiometricType> availableBiometrics = await auth.getAvailableBiometrics();
        if (availableBiometrics.isNotEmpty) {
          setState(() {
          canCheckBiometrics = true;
        });
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
  if (mounted) {
    setState(() {
      _errorMessage = null;
      _isLoading = true;
    });
  }

  final bool isBiometricAvailable = await auth.canCheckBiometrics;
  if (!isBiometricAvailable) {
      if (mounted) {
        setState(() {
          _errorMessage = 'Biometría no disponible o no configurada.';
          _isLoading = false;
        });
      }
      return;
    }
    
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
      String message;
      if (e.code == 'NotAvailable') {
        message = 'Biometría no disponible en este dispositivo.';
      } else if (e.code == 'NotEnrolled') {
        message = 'No hay huellas dactilares registradas.';
      } else if (e.code == 'PasscodeNotSet') {
        message = 'Por favor, configure un bloqueo de pantalla.';
      } else {
        message = 'Error de autenticación: ${e.message}';
      }
      if (mounted) {
        setState(() {
          _errorMessage = message;
          _isLoading = false;
        });
      }
      return; 
    }
    
    if (!mounted) return;
    if (authenticated) {
        final AuthStorageService authStorageService = ref.read(authStorageServiceProvider);
        final storedUserId = await authStorageService.getUserId();
        String? accessToken = await authStorageService.getToken();

        if (accessToken != null) {
        final controller = ref.read(loginControllerProvider.notifier);
        controller.accesoPorHuella(accessToken); 
      } else {
        _errorMessage = 'No hay datos de sesión guardados. Inicie sesión con credenciales.';
      }
    } else {
      _errorMessage = 'Autenticación de huella fallida o cancelada.';
    }

    if (mounted) {
      setState(() {
        _isLoading = false;
        _errorMessage = _errorMessage;
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
                  AnimatedBuilder(
                    animation: _logoMitadAnimationController,
                    builder: (context, child) {
                      return Transform.scale(
                        scale: _logoMitadScaleAnimation.value,
                        child: child,
                      );
                    },
                    child: Image.asset( 
                      'assets/images/logomitad.png',
                      width: _logoMitadWidth, 
                      height: _logoMitadHeight,
                    ),
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
                              context.router.push(const LoginPinRoute());
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