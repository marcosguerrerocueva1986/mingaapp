import 'package:auto_route/auto_route.dart';
import 'package:bancamovilr/index.dart';
import 'package:bancamovilr/src/pages/seguridades/perfil/registro_pin_controller.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

@RoutePage()
class RegistroPinPage extends ConsumerStatefulWidget {
  const RegistroPinPage({super.key});

  @override
  ConsumerState<RegistroPinPage> createState() => _RegistroPinPageState();
}

class _RegistroPinPageState extends ConsumerState<RegistroPinPage> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  final _pinKey = const ValueKey('pinput_pin_registro');

  void _onKeyPress(String value) {
    if (!mounted) return;
    try {
      if (pinController.text.length < 6) {
        pinController.text += value; 
      }
    } catch (e) {
      debugPrint("Error al presionar tecla: Controlador ya no existe.");
    }
  }
  void _onBackspace() {
    if (!mounted) return;
    try {
      if (pinController.text.isNotEmpty) {
        pinController.text = pinController.text.substring(0, pinController.text.length - 1);
      }
    } catch (e) {
      debugPrint("Error al borrar: Controlador ya no existe.");
    }
  }

  @override
  void dispose() {
    focusNode.unfocus();
    final controllerParaLimpiar = pinController;
    final focusParaLimpiar = focusNode;
    Future.microtask(() {
      controllerParaLimpiar.dispose();
      focusParaLimpiar.dispose();
    });

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.read(registroPinControllerProvider.notifier);
    final provider = ref.watch(registroPinControllerProvider);
    final login = ref.watch(loginControllerProvider);
    
    final double screenHeight = MediaQuery.of(context).size.height;
    final double keyboardHeight = screenHeight * 0.38;

    final customPinTheme = PinTheme(
      shape: PinCodeFieldShape.box,
      borderRadius: BorderRadius.circular(8),
      fieldHeight: 55,
      fieldWidth: 45,
      borderWidth: 1,
      inactiveColor: const Color.fromRGBO(30, 60, 87, 1).withOpacity(0.5),
      inactiveFillColor: Colors.white,
      selectedColor: const Color.fromRGBO(30, 60, 87, 1),
      selectedFillColor: Colors.white,
      activeColor: const Color.fromRGBO(30, 60, 87, 1),
      activeFillColor: Colors.white,
      errorBorderColor: Colors.redAccent,
    );

    return Scaffold(
      backgroundColor: Colors.white,
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
                          child: PinCodeTextField(
                            key: _pinKey,
                            appContext: context,
                            length: 6,
                            controller: pinController,
                            focusNode: focusNode,
                            obscureText: true,
                            obscuringCharacter: '●',
                            blinkWhenObscuring: true,
                            autoFocus: false,
                            showCursor: false,
                            readOnly: false, 
                            keyboardType: TextInputType.number,
                            animationType: AnimationType.fade,
                            pinTheme: customPinTheme,
                            textStyle: TextStyle(
                              color: Color(0xFF0077B6),
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                            enableActiveFill: true,
                            onChanged: (value) {},
                            beforeTextPaste: (text) => true, 
                          ),
                        ),
                        const SizedBox(height: 50),
                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: provider.isLoading ? null : () {
                              final pinIngresado = pinController.text;
                              final usuarioId = ref.read(loginControllerProvider).loginRespuesta?.id;
                              if (pinIngresado.length == 6 && usuarioId != null) {
                                controller.RegistrarPin(pinIngresado, usuarioId);
                              } else if (usuarioId == null) {
                                NotificationService.showError(text: 'Sesión no válida. Reingrese a la app.');
                              } else {
                                NotificationService.showWarning(text: 'El PIN debe tener 6 dígitos.');
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
                      ],
                    ),
                  ),
                ),
                // Teclado personalizado
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
              color: Colors.black.withOpacity(0.3),
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
                  padding: const EdgeInsets.all(2.0),
                  child: Material(
                    color: const Color(0xFFF5F7F9),
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