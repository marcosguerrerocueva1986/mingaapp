import 'package:auto_route/auto_route.dart';
import 'package:bancamovilr/index.dart';
import 'package:bancamovilr/src/pages/seguridades/perfil/registro_pin_controller.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:pinput/pinput.dart';
import 'package:provider/provider.dart';

@RoutePage()
class RegistroPinPage extends ConsumerStatefulWidget {
  const RegistroPinPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RegistroPinPageState();
}

class _RegistroPinPageState extends ConsumerState<RegistroPinPage> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  void _onKeyPress(String value) {
    if (pinController.text.length < 6) {
      setState(() => pinController.text += value);
    }
  }

  void _onBackspace() {
    if (pinController.text.isNotEmpty) {
      pinController.text = pinController.text.substring(0, pinController.text.length - 1);
    }
  }

  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var controller = ref.read(registroPinControllerProvider.notifier);
    var provider = ref.watch(registroPinControllerProvider);
    var login = ref.watch(loginControllerProvider);
    final double screenHeight = MediaQuery.of(context).size.height;
    final double keyboardHeight = screenHeight * 0.38; 

    final defaultPinTheme = PinTheme(
      width: 45,
      height: 55,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.bold,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromRGBO(30, 60, 87, 1).withOpacity(0.5)),
        borderRadius: BorderRadius.circular(8),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
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
                      const SizedBox(height: 40),
                      Center(
                        child: Image.asset(
                          'assets/images/logopantallamenu.png',
                          width: 180,
                          errorBuilder: (context, error, stackTrace) =>
                              const Icon(Icons.account_balance_wallet,
                                  size: 50, color: Colors.blue),
                        ),
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        "Registro de PIN",
                        style: TextStyle(
                          color: Color(0xFF0077B6),
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 30),
                      Center(
                        child: Pinput(
                          key: const ValueKey('pinput_pin_registro'),
                          length: 6,
                          controller: pinController,
                          focusNode: focusNode,
                          obscureText: true,
                          readOnly: true,
                          useNativeKeyboard: false,
                          defaultPinTheme: defaultPinTheme,
                          separatorBuilder: (index) => const SizedBox(width: 8),
                          hapticFeedbackType: HapticFeedbackType.lightImpact,
                        ),
                      ),
                      const SizedBox(height: 50),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            final pinIngresado = pinController.text;
                            if (pinIngresado.length == 6) {
                              controller.RegistrarPin(
                                  pinIngresado, login.loginRespuesta!.id);
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF0072B5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            elevation: 0,
                          ),
                          child: const Text(
                            "Registrar",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Center(
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "",//"Olvide mi PIN",
                            style: TextStyle(
                              fontSize: 15,
                              color: Color.fromRGBO(0, 114, 181, 48),
                              fontWeight: FontWeight.bold,
                            ),
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
          if (provider.isLoading)
            Container(
              color: Colors.white.withOpacity(0.1), 
              child: const Center(
                child: CircularProgressIndicator(
                  color: Color(0xFF0072B5),
                  strokeWidth: 5,
                ),
              ),
            ),
        ],
      ),
    );
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