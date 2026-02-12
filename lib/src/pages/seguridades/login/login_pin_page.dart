import 'package:auto_route/auto_route.dart';
import 'package:bancamovilr/index.dart';
import 'package:bancamovilr/src/pages/seguridades/login/login_pin_page_controller.dart';
import 'package:bancamovilr/src/pages/seguridades/perfil/registro_pin_controller.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:pinput/pinput.dart';
import 'package:provider/provider.dart';

@RoutePage()
class LoginPinPage extends ConsumerStatefulWidget {
  const LoginPinPage({super.key});

  @override
  ConsumerState<LoginPinPage> createState() => _LoginPinPageState();
}

class _LoginPinPageState extends ConsumerState<LoginPinPage> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();

  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }
  void _onKeyPress(String value) {
    if (pinController.text.length < 6) {
      pinController.text += value;
    }
  }

  void _onBackspace() {
    if (pinController.text.isNotEmpty) {
      pinController.text = pinController.text.substring(0, pinController.text.length - 1);
    }
  }
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double keyboardHeight = screenHeight * 0.38; 
    final defaultPinTheme = PinTheme(
      width: 45,
      height: 55,
      textStyle: const TextStyle(fontSize: 22, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.bold),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromRGBO(30, 60, 87, 1).withOpacity(0.5)),
        borderRadius: BorderRadius.circular(8),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            const SizedBox(height: 90),
                            Center(
                              child: Image.asset('assets/images/logopantallamenu.png',
                                width: 180,
                                errorBuilder: (context, error, stackTrace) =>
                                    const Icon(Icons.account_balance_wallet,
                                        size: 50, color: Colors.blue),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 40),
                        const Text(
                          "Ingresa tu PIN de acceso",
                          style: TextStyle(color: Color(0xFF0072B5), fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 30),
                        Center(
                          child: Pinput(
                            key: const ValueKey('pinput_pin_login'),
                            length: 6,
                            controller: pinController,
                            focusNode: focusNode,
                            obscureText: true,
                            readOnly: true,
                            useNativeKeyboard: false,
                            keyboardType: TextInputType.number,
                            defaultPinTheme: defaultPinTheme,
                            hapticFeedbackType: HapticFeedbackType.mediumImpact,
                            onCompleted: (pin) {
                              ref.read(loginControllerProvider.notifier).loginConPin(pin);
                            },
                          ),
                        ),
                        const SizedBox(height: 15),
                        Center(
                          child: TextButton(
                            onPressed: () => _mostrarOpcionesRecuperacion(context),
                            child: const Text(
                              " ",//"¿Olvidaste tu PIN?",
                              style: TextStyle(color: Color.fromRGBO(0, 114, 181, 48), fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Center(
                          child: TextButton(
                            onPressed: () => context.router.replace(const LoginRoute()),
                            child: const Text(
                              "Ingresar con contraseña",
                              style: TextStyle(color: Color.fromRGBO(0, 114, 181, 48), fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: keyboardHeight,
                  padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  child: _buildCustomKeyboard(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _mostrarOpcionesRecuperacion(BuildContext context) {
    // Aquí puedes llamar al diálogo que creamos anteriormente
  }

  Widget _buildCustomKeyboard() {
    final keys = [
      ['1', '2', '3'],
      ['4', '5', '6'],
      ['7', '8', '9'],
      ['', '0', 'Borrar'],
    ];

    return Column(
      children: keys.map((row) {
        return Expanded(
          child: Row(
            children: row.map((key) {
              if (key == '') return const Expanded(child: SizedBox());
              
              return Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(2.0), // Espacio entre botones
                  child: Material(
                    color: const Color(0xFFF5F7F9), // Color de fondo individual
                    borderRadius: BorderRadius.circular(3),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(3),
                      onTap: () => key == 'Borrar' ? _onBackspace() : _onKeyPress(key),
                      child: Center(
                        child: Text(
                          key,
                          style: TextStyle(
                            fontSize: key == 'Borrar' ? 16 : 24, 
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF1E3C57),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        );
      }).toList(),
    );
  }
}