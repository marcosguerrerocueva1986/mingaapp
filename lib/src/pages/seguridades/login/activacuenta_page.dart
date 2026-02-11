import 'dart:async';

import 'package:bancamovilr/index.dart';
import 'package:bancamovilr/src/pages/seguridades/login/activacuenta_controller.dart';
import 'package:bancamovilr/src/pages/seguridades/login/recuperarcontrasenia_controller.dart';
import 'package:pinput/pinput.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reactive_forms/reactive_forms.dart';

@RoutePage()
class ActivaCuentaPage extends ConsumerStatefulWidget {
  const ActivaCuentaPage({super.key});
  
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ActivaCuentaPageState();
}

class _ActivaCuentaPageState extends ConsumerState<ActivaCuentaPage> {
  int _duracionInicialSegundos = 60;
  final int _maxSeconds = 60;
  int _secondsRemaining = 60;
  Timer? _timer;
  bool _showResendButton = false;
  
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final provider = ref.watch(activaCuentaControllerProvider);
    if (provider.modoConfirmacion && _timer == null) {
      startTimer();
    }
  }

@override
void didUpdateWidget(covariant ActivaCuentaPage oldWidget) {
super.didUpdateWidget(oldWidget);
final newProvider = ref.read(activaCuentaControllerProvider);
if (newProvider.modoConfirmacion && (_timer == null || !_timer!.isActive)) {
  startTimer();
} else if (!newProvider.modoConfirmacion && _timer != null) {
  _timer?.cancel();
  _timer = null;
}
}

void startTimer() {
if (_timer != null) {
  _timer!.cancel();
}
_showResendButton = false;

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (!mounted) { 
          timer.cancel();
          return;
      }
      setState(() {
        if (_secondsRemaining <= 0) {
          timer.cancel();
          setState(() {
            _showResendButton = true;
            _secondsRemaining = 0; 
          });
        } else {
          setState(() {
            _secondsRemaining--;
          });
        }
      });
    });
  }

  String get timerText =>
      '${(_secondsRemaining ~/ 60).toString().padLeft(2, '0')}:${(_secondsRemaining % 60).toString().padLeft(2, '0')}';

  Future<void> _resendOtp() async {
    final controller = ref.read(activaCuentaControllerProvider.notifier);
    final form = controller.form;
    final String? usuario = form.control('codigoUsuario').value as String?;
    if (usuario == null || usuario.isEmpty) {
      NotificationService.showWarning(text: 'Por favor, ingrese su usuario antes de reenviar.');
      return;
    }
    await ref.read(recuperarContraseniaControllerProvider.notifier).reenviaCorreoCambioContrasenia(form);
    setState(() {
      _secondsRemaining = _duracionInicialSegundos; 
      _showResendButton = false;
    });
    startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(activaCuentaControllerProvider, (previous, next) { 
      if (next.modoConfirmacion && !(previous?.modoConfirmacion ?? false)) {
        int minutos = next.minutosDuracionOtp == 0 ? 1 : 3;
        int segundoTotales = minutos * 60;
        setState(() {
          _duracionInicialSegundos = segundoTotales;
          _secondsRemaining = segundoTotales;
          _showResendButton = false;
        });
        startTimer();
      }
    });
    final controller = ref.read(activaCuentaControllerProvider.notifier);
    final provider = ref.watch(activaCuentaControllerProvider);
    
    return ScaffoldBootstrap(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 120, 20, 35),
        child: Center(
          child: ReactiveForm(
            key: const ValueKey('form_activa_cuenta'),
            formGroup: controller.form,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: defaultPadding * 3,),
                  SvgPicture.asset(
                    Theme.of(context).brightness == Brightness.dark
                        ? R.svg.logoBlack
                        : R.svg.logoPantallas,
                    fit: BoxFit.fill,
                    height: 50,
                    width: 80,
                  ),
                  const SizedBox(height: defaultPadding * 2),
                  if (provider.modoConfirmacion) ...[
                    const SizedBox(height: defaultPadding * 5),
                    const Text(
                        "Ingrese el código temporal de seguridad que fue enviado a su correo y/o celular.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        )),
                    const SizedBox(height: defaultPadding * 2),
                    Pinput(
                      key: const ValueKey('pinput_activacioncuenta_confirmacion'),
                      androidSmsAutofillMethod:
                          AndroidSmsAutofillMethod.smsUserConsentApi,
                      length: 6,
                      onCompleted: (pin) {
                        if (_secondsRemaining > 0) {
                          controller.confimarOtpRegistro(pin);
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('El tiempo ha expirado. Reenvíe el código.'),
                            ),
                          );
                        }
                      },
                      defaultPinTheme: defaultPinTheme,
                      focusedPinTheme: defaultPinTheme.copyWith(
                        height: 68,
                        width: 64,
                        decoration: defaultPinTheme.decoration,
                      ),
                      errorPinTheme: defaultPinTheme.copyWith(
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 234, 238, 1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    const SizedBox(height: 32),
                    if (!_showResendButton)
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            CircularProgressIndicator(
                              value: _secondsRemaining / _maxSeconds,
                              strokeWidth: 6,
                              backgroundColor: Colors.grey,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                 _secondsRemaining > _maxSeconds / 3
                                    ? const Color.fromRGBO(48, 155, 217, 1) 
                                    : Colors.red, 
                              ),
                            ),
                            Center(
                              child: Text(
                                timerText,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    else
                      ProcessButton(
                        onPressed: controller.form.control('codigoUsuario').valid 
                        ? _resendOtp
                        : null,
                        text: 'Reenviar código temporal'.toUpperCase(),
                      ),
                    const SizedBox(height: 20),
                    ProcessButton(
                      key: const ValueKey('regresar_activacuenta_button'),
                      isSecondary: false,
                      onPressed: controller.cancelar,
                      text: 'Regresar'.toUpperCase(),
                    ),
                  ] else ...[
                    const Padding(
                      padding: EdgeInsets.fromLTRB(20, 5, 10, 0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Activa tu Cuenta",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color.fromRGBO(0, 114, 181, 48),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(20, 5, 0, 5),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Número de Identificación",
                          style: TextStyle(fontSize: 17, color: Colors.grey),
                        ),
                      ),
                    ),
                    ReactiveTextField(
                      key: const ValueKey('identificacionActivaCuenta'),
                      formControlName: 'identificacion',
                      readOnly: !provider.permiteEditarUsuario,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.verified_user_outlined,
                            // color: Colors.grey,
                            size: 15.0,
                          ),
                          contentPadding: const EdgeInsets.fromLTRB(
                              20.0, 15.0, 20.0, 15.0),
                          hintText: "Ingrese su identificación",
                          errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.red.withOpacity(0.3)),
                              borderRadius: BorderRadius.circular(32.0)),
                          focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.red.withOpacity(0.3)),
                              borderRadius: BorderRadius.circular(32.0)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey.withOpacity(0.7)),
                              borderRadius: BorderRadius.circular(32.0)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey.withOpacity(0.7)),
                              borderRadius: BorderRadius.circular(32.0)),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey.withOpacity(0.7)),
                              borderRadius: BorderRadius.circular(32.0))),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(20, 5, 0, 5),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Usuario",
                          style: TextStyle(fontSize: 17, color: Colors.grey),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    ReactiveTextField(
                      key: const ValueKey('codigousuarioactivacuenta'),
                      formControlName: 'codigoUsuario',
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.verified_user_outlined,
                            size: 15.0,
                          ),
                          contentPadding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
                          hintText: "Ingrese su usuario",
                          errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.red.withOpacity(0.3)),
                              borderRadius: BorderRadius.circular(32.0)),
                          focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.red.withOpacity(0.3)),
                              borderRadius: BorderRadius.circular(32.0)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey.withOpacity(0.7)),
                              borderRadius: BorderRadius.circular(32.0)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey.withOpacity(0.7)),
                              borderRadius: BorderRadius.circular(32.0)),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey.withOpacity(0.7)),
                              borderRadius: BorderRadius.circular(32.0))),
                    ),
                    const SizedBox(height: 50,),
                    ProcessButton(
                      key: const ValueKey('continuaractivacuenta'),
                      onPressed: () {
                        controller.activarCuenta();
                      },
                      text: 'Continuar'.toUpperCase(),
                    ),
                    const SizedBox(height: 2,),
                    ProcessButton(
                      key: const ValueKey('regresaractivacuenta'),
                      onPressed: () {appRouter.pop();},
                      text: 'Regresar'.toUpperCase(),
                    ),
                    const SizedBox(height: defaultPadding * 4),
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
