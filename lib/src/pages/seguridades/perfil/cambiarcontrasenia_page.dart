import 'package:auto_route/auto_route.dart';
import 'package:bancamovilr/index.dart';
import 'package:bancamovilr/src/pages/seguridades/perfil/cambiarcontrasenia_controller.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

@RoutePage()
class CambiarContraseniaPage extends ConsumerStatefulWidget {
  final String codigoUsuario;
  const CambiarContraseniaPage({super.key, required this.codigoUsuario});
  
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CambiarContraseniaState();
}

class _CambiarContraseniaState extends ConsumerState<CambiarContraseniaPage> {
  @override
  Widget build(BuildContext context) {
    var controller = ref.read(cambiarContraseniaControllerProvider.notifier);
    var provider = ref.watch(cambiarContraseniaControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/logopantallamenu.png', width: 120, height: 80),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body: ReactiveForm(
        formGroup: controller.form,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                    key: const ValueKey('pinput_login_confirmacion'),
                    androidSmsAutofillMethod:
                        AndroidSmsAutofillMethod.smsUserConsentApi,
                    length: 6,
                    defaultPinTheme: defaultPinTheme,
                    onCompleted: controller.confimarOtpRegistroCambioContrasenia,
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
                  const SizedBox(height: defaultPadding * 10),
                  ProcessButton(
                    key: const ValueKey('regresar_login_button'),
                    isSecondary: false,
                    onPressed: controller.cancelar,
                    text: 'Regresar'.toUpperCase(),
                  ),

                ] else ...[
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                    child: Text(
                      'Cambiar contraseña',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(0, 96, 153, 10),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: defaultPadding,
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Contraseña actual",
                        style: TextStyle(fontSize: 17, color: Colors.grey),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  ReactiveTextField(
                    key: const ValueKey('pwdAnteriorCambioContrasenia'),
                    formControlName: 'pwdAnterior',
                    obscureText: provider.obscurecerClave,
                    validationMessages: {
                      ValidationMessage.required: (error) => 'Ingrese su contraseña actual',
                      // Puedes agregar más validaciones si las tienes en tu formControl:
                      //ValidationMessage.minLength: (error) => 'Debe tener al menos ${(error as Map)['requiredLength']} caracteres',
                    },
                    decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.lock_outline,
                          size: 15.0,
                        ),
                        suffixIcon: GestureDetector(
                          onTap: controller.toggleOscurecerClave,
                          child: Icon(
                            provider.obscurecerClave
                                ? Icons.remove_red_eye
                                : Icons.remove_red_eye_outlined,
                            size: 24.0,
                          ),
                        ),
                        contentPadding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
                        hintText: "Ingrese su contraseña",
                        errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.red.withOpacity(0.3)),
                            borderRadius: BorderRadius.circular(12.0)),
                        focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.red.withOpacity(0.3)),
                            borderRadius: BorderRadius.circular(12.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: const Color.fromRGBO(48, 155, 217, 1).withOpacity(0.7)),
                            borderRadius: BorderRadius.circular(12.0)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey.withOpacity(0.7)),
                            borderRadius: BorderRadius.circular(12.0)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey.withOpacity(0.7)),
                            borderRadius: BorderRadius.circular(12.0))),
                  ),
                  const SizedBox(
                    height: defaultPadding,
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Contraseña nueva",
                        style: TextStyle(fontSize: 17, color: Colors.grey),
                      ),
                    ),
                  ),
                  ReactiveTextField(
                    key: const ValueKey('pwdNuevaCambioContrasenia'),
                    formControlName: 'pwdNueva',
                    obscureText: provider.obscurecerClave,
                    validationMessages: {
                      ValidationMessage.required: (error) => 'Ingrese su contraseña nueva',
                      // Puedes agregar más validaciones si las tienes en tu formControl:
                      //ValidationMessage.minLength: (error) => 'Debe tener al menos ${(error as Map)['requiredLength']} caracteres',
                    },
                    decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.lock_outline,
                          size: 15.0,
                        ),
                        suffixIcon: GestureDetector(
                          onTap: controller.toggleOscurecerClave,
                          child: Icon(
                            provider.obscurecerClave
                                ? Icons.remove_red_eye
                                : Icons.remove_red_eye_outlined,
                            size: 24.0,
                          ),
                        ),
                        contentPadding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
                        hintText: "Ingrese su contraseña",
                        errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.red.withOpacity(0.3)),
                            borderRadius: BorderRadius.circular(12.0)),
                        focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.red.withOpacity(0.3)),
                            borderRadius: BorderRadius.circular(12.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: const Color.fromRGBO(48, 155, 217, 1).withOpacity(0.7)),
                            borderRadius: BorderRadius.circular(12.0)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey.withOpacity(0.7)),
                            borderRadius: BorderRadius.circular(12.0)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey.withOpacity(0.7)),
                            borderRadius: BorderRadius.circular(12.0))),
                  ),
                  const SizedBox(
                    height: defaultPadding,
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Confirmar contraseña nueva",
                        style: TextStyle(fontSize: 17, color: Colors.grey),
                      ),
                    ),
                  ),
                  ReactiveTextField(
                    key: const ValueKey('pwdNuevaConfirmarCambioContrasenia'),
                    formControlName: 'pwdNuevaConfirmar',
                    obscureText: provider.obscurecerClave,
                    validationMessages: {
                      ValidationMessage.mustMatch: (error) => 'Las contraseñas no coinciden',
                    },
                    decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.lock_outline,
                          size: 15.0,
                        ),
                        suffixIcon: GestureDetector(
                          onTap: controller.toggleOscurecerClave,
                          child: Icon(
                            provider.obscurecerClave
                                ? Icons.remove_red_eye
                                : Icons.remove_red_eye_outlined,
                            size: 24.0,
                          ),
                        ),
                        contentPadding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
                        hintText: "Ingrese su contraseña",
                        errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.red.withOpacity(0.3)),
                            borderRadius: BorderRadius.circular(12.0)),
                        focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.red.withOpacity(0.3)),
                            borderRadius: BorderRadius.circular(12.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: const Color.fromRGBO(48, 155, 217, 1).withOpacity(0.7)),
                            borderRadius: BorderRadius.circular(12.0)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey.withOpacity(0.7)),
                            borderRadius: BorderRadius.circular(12.0)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey.withOpacity(0.7)),
                            borderRadius: BorderRadius.circular(12.0))),
                  ),
                  const SizedBox(height: 300),
                  SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      controller.cambiarContrasenia(widget.codigoUsuario);
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: const Color.fromRGBO(48, 155, 217, 1),
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    child: const Text(
                      'Cambiar contraseña',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}