import 'dart:math';
import 'dart:async';
import 'package:bancamovilr/index.dart';
import 'package:bancamovilr/src/providers/auth_storage_provider.dart';
import 'package:bancamovilr/src/services/auth_storage_service.dart';
import 'package:bancamovilr/subfolders.dart' hide SharedPreferences;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:local_auth/local_auth.dart';
import 'package:bancamovilr/src/pages/loginprincipal_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:local_auth/local_auth.dart';
import 'package:local_auth_android/local_auth_android.dart';

@RoutePage()
class LoginPrincipalPage extends ConsumerStatefulWidget {
  const LoginPrincipalPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginPrincipalState();
}

class _LoginPrincipalState extends ConsumerState<LoginPrincipalPage> 
with SingleTickerProviderStateMixin {
  String? _errorMessage;
  bool _isLoading = false;
  final LocalAuthentication auth = LocalAuthentication();
  final FlutterSecureStorage _storage = const FlutterSecureStorage();
  bool _isBiometricAvailable = false;
  late AnimationController _logoMitadAnimationController;
  late Animation<double> _logoMitadScaleAnimation;
  static const double _logoMitadWidth = 350.0;
  static const double _logoMitadHeight = 340.0;
  @override
  void dispose() {
    _logoMitadAnimationController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 10), () {
    if (mounted) {
        ref.read(loginPrincipalControllerProvider.notifier).actualizaImagen();
      }
    });
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
  _mostrarMiDialogo(){
    showModalBottomSheet(
      context: context,
      isDismissible: false,
      enableDrag: false,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            const SizedBox(height: 25),
            const Icon(Icons.fingerprint, size: 60, color: Color(0xFF006099)),
            const SizedBox(height: 15),
            const Text(
              'Autenticación Cooperativa Minga',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Coloque su dedo en el sensor para continuar',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 30),
            const CircularProgressIndicator(),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                auth.stopAuthentication();
                Navigator.pop(context);
              },
              child: const Text('CANCELAR', style: TextStyle(color: Colors.blueAccent)),
            ),
          ],
        ),
      ),
    );
  }
  Future<void> _loginConHuellaDactilar() async {
    if (!mounted) return;
    setState(() => _isLoading = true);    
    bool authenticated = false;
    try {
        authenticated = await auth.authenticate(
        localizedReason: 'Ponga su dedo en el dactilar para continuar',
        options: const AuthenticationOptions(
          biometricOnly: true,
          stickyAuth: true,
          useErrorDialogs: true
        ),
      );
    } on PlatformException catch (e) {
      print("Error: ${e.code}");
    }
    if (mounted && Navigator.of(context, rootNavigator: true).canPop()) {
      Navigator.of(context, rootNavigator: true).pop();
    }
    if (!mounted) return;
    if (authenticated) {
      final prefs = await SharedPreferences.getInstance();
      String? tokenGuardado = prefs.getString('biometric_token');
      //String? tokenGuardado = await _storage.read(key: 'biometric_token');
      if (tokenGuardado != null) {
        HttpClientHelper.token = tokenGuardado;
        final controller = ref.read(loginControllerProvider.notifier);
        controller.accesoPorHuella(tokenGuardado); 
      } else {
          setState(() => _errorMessage = 'Debe ingresar manualmente una vez.');
      }
    } else {
      HapticFeedback.vibrate();
      setState(() => _isLoading = false);
    }
  }
  @override
  Widget build(BuildContext context) {
    var provider = ref.watch(loginPrincipalControllerProvider);
    final imagenesBase = provider.posicionConsolidada?.listaInicial ?? [];
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
                    child: (imagenesBase.isNotEmpty == true && imagenesBase[0].imagen != null)
                      ? Image.memory(
                          imagenesBase[0].imagen!, 
                          width: _logoMitadWidth,
                          height: _logoMitadHeight,
                          fit: BoxFit.contain,
                          errorBuilder: (context, error, stackTrace) => 
                              Image.asset('assets/images/logomitad.png', width: _logoMitadWidth, height: _logoMitadHeight,), 
                        )
                      : Image.asset('assets/images/logomitad.png', width: _logoMitadWidth, height: _logoMitadHeight,),
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