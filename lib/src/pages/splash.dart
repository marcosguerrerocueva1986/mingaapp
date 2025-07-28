import 'package:bancamovilr/index.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:math'; 

@RoutePage()
class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  // Animaciones para las "sombras" (formas flotantes)
  late Animation<Offset> _shadow1OffsetAnimation;
  late Animation<double> _shadow1OpacityAnimation;
  late Animation<Offset> _shadow2OffsetAnimation;
  late Animation<double> _shadow2OpacityAnimation;
  late Animation<Offset> _shadow3OffsetAnimation;
  late Animation<double> _shadow3OpacityAnimation;

  // Animación para el descenso del logo
  late Animation<Offset> _logoSlideAnimation;
  late Animation<double> _logoFadeAnimation; // Para que el logo también aparezca suavemente

  final Random _random = Random(); // Para posiciones aleatorias

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 4), 
      vsync: this,
    );
    // Sombra 1
    _shadow1OffsetAnimation = Tween<Offset>(
      begin: const Offset(-0.8, -0.8), // Empieza arriba a la izquierda
      end: const Offset(0.8, 0.8),    // Se mueve a abajo a la derecha
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.6, curve: Curves.easeInOut), // De 0% a 60% del tiempo total
      ),
    );
    _shadow1OpacityAnimation = Tween<double>(begin: 0.0, end: 0.7).animate( // Aparece y se desvanece
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.8, curve: Curves.easeIn), // De 0% a 80% del tiempo total
      ),
    );

    // Sombra 2
    _shadow2OffsetAnimation = Tween<Offset>(
      begin: const Offset(0.8, 0.8),    // Empieza abajo a la derecha
      end: const Offset(-0.8, -0.8),   // Se mueve a arriba a la izquierda
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.1, 0.7, curve: Curves.easeInOut), // De 10% a 70% del tiempo total
      ),
    );
    _shadow2OpacityAnimation = Tween<double>(begin: 0.0, end: 0.7).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.1, 0.9, curve: Curves.easeIn), // De 10% a 90% del tiempo total
      ),
    );

    // Sombra 3
    _shadow3OffsetAnimation = Tween<Offset>(
      begin: const Offset(0.0, 1.0),    // Empieza abajo
      end: const Offset(0.0, -1.0),   // Se mueve a arriba
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.2, 0.8, curve: Curves.easeInOut), // De 20% a 80% del tiempo total
      ),
    );
    _shadow3OpacityAnimation = Tween<double>(begin: 0.0, end: 0.7).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.2, 1.0, curve: Curves.easeIn), // De 20% a 100% del tiempo total
      ),
    );


    // --- Animación del Logo (inicia alrededor del segundo 1.5, termina en el segundo 4) ---
    _logoSlideAnimation = Tween<Offset>(
      // Empieza un poco arriba del centro (o donde quieras que inicie su bajada)
      begin: const Offset(0.0, -0.2),
      // Termina en la mitad inferior de la pantalla.
      // Ajustado a 0.15 para que baje un poco más allá del centro.
      end: const Offset(0.0, 0.15), // <-- AJUSTE CLAVE AQUÍ para que baje a la mitad
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.5, 1.0, curve: Curves.easeOutBack), // Inicia al 50%, termina al 100%
      ),
    );

    _logoFadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.5, 1.0, curve: Curves.easeIn), // Inicia al 50%, termina al 100%
      ),
    );
    _controller.forward();
    Timer(const Duration(seconds: 4), () {
      _initializeApp();
    });
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  Future<void> _initializeApp() async {
    await Future.delayed(const Duration(seconds: 2));
    appRouter.pushAndPopUntil(const LoginPrincipalRoute(), predicate: (_) => false);
  }

  // Helper para crear una sombra flotante
  Widget _buildFloatingShadow(Animation<Offset> offsetAnimation, Animation<double> opacityAnimation, Color color) {
    return Positioned.fill(
      child: Align(
        alignment: Alignment.center, // Alinea al centro para que el offset sea relativo a eso
        child: SlideTransition(
          position: offsetAnimation,
          child: FadeTransition(
            opacity: opacityAnimation,
            child: Container(
              width: 100 + _random.nextDouble() * 50, // Tamaño aleatorio
              height: 100 + _random.nextDouble() * 50, // Tamaño aleatorio
              decoration: BoxDecoration(
                shape: BoxShape.circle, // Forma de círculo
                color: color.withOpacity(0.1), // Color base transparente
                boxShadow: [
                  BoxShadow(
                    color: color.withOpacity(0.4), // Color de la sombra
                    blurRadius: 50 + _random.nextDouble() * 50, // Radio de desenfoque aleatorio
                    spreadRadius: 10 + _random.nextDouble() * 20, // Expansión de la sombra
                    offset: Offset(_random.nextDouble() * 10 - 5, _random.nextDouble() * 10 - 5), // Offset aleatorio
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldBootstrap(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          // Fondo principal de la imagen
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/fondoSplash.jpg'),
                fit: BoxFit.cover),
            ),
          ),

          // --- Las "sombras jugando" ---
          _buildFloatingShadow(_shadow1OffsetAnimation, _shadow1OpacityAnimation, Colors.blue),
          _buildFloatingShadow(_shadow2OffsetAnimation, _shadow2OpacityAnimation, Colors.blueAccent),
          _buildFloatingShadow(_shadow3OffsetAnimation, _shadow3OpacityAnimation, Colors.blueAccent),


          // El logo descendiendo y apareciendo
          Center( // Esto centra el Column, y el SlideTransition hará el movimiento relativo
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Centra el contenido verticalmente
              children: <Widget>[
                SlideTransition(
                  position: _logoSlideAnimation,
                  child: FadeTransition(
                    opacity: _logoFadeAnimation,
                    child: Image.asset(
                      'assets/images/logo1.png',
                      width: 300,
                      height: 300,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Si quieres que el indicador de progreso sea visible, cambia Colors.transparent
                const CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Colors.transparent,
                  ),
                ),
                const SizedBox(height: 20),
                // Si quieres un texto de "Cargando...", ponlo aquí y ajusta el fontSize
                const Text(
                  '',
                  style: TextStyle(color: Colors.white, fontSize: 5),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}