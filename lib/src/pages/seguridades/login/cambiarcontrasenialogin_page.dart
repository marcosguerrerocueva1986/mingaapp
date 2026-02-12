import 'package:bancamovilr/index.dart';
import 'package:bancamovilr/src/pages/seguridades/login/cambiarcontrasenialogin_controller.dart';

@RoutePage()
class CambiarContraseniaLoginPage extends ConsumerStatefulWidget {
  final String codigoUsuario;
  const CambiarContraseniaLoginPage({super.key,required this.codigoUsuario});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CambiarContraseniaLoginPageState();
}
class _CambiarContraseniaLoginPageState extends ConsumerState<CambiarContraseniaLoginPage> {
  bool _obscureTextPwdAnterior = true;
  bool _obscureTextPwdNueva = true;
  bool _obscureTextPwdConfirmar = true;
  
  void _togglePwdAnterior() {
    setState(() {
      _obscureTextPwdAnterior = !_obscureTextPwdAnterior;
    });
  }

  void _togglePwdNueva() {
    setState(() {
      _obscureTextPwdNueva = !_obscureTextPwdNueva;
    });
  }

  void _togglePwdConfirmar() {
    setState(() {
      _obscureTextPwdConfirmar = !_obscureTextPwdConfirmar;
    });
  }

  @override
  Widget build(BuildContext context) {
    var controller = ref.read(cambiarContraseniaLoginControllerProvider.notifier);
    var provider = ref.watch(cambiarContraseniaLoginControllerProvider); 
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
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                  child: Text(
                    'Actualice su contraseña',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(0, 96, 153, 10),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                const Padding(
                            padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Ingrese contraseña temporal enviado al correo",
                                style: TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                ReactiveTextField(
                  key: const ValueKey('passwordAnterior'),
                  formControlName: 'pwdAnterior',
                  obscureText: _obscureTextPwdAnterior,
                  validationMessages: {
                             ValidationMessage.required: (error) => 'Ingrese su contraseña temporal',
                              // Puedes agregar más validaciones si las tienes en tu formControl:
                              //ValidationMessage.minLength: (error) => 'Debe tener al menos ${(error as Map)['requiredLength']} caracteres',
                            },
                  decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.lock_outline,
                        size: 15.0,
                      ),
                      suffixIcon: GestureDetector(
                        onTap: _togglePwdAnterior,
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
                          borderSide: const BorderSide(
                              color: Color.fromRGBO(0, 114, 181, 48)),
                          borderRadius: BorderRadius.circular(12.0)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromRGBO(0, 114, 181, 48)),
                          borderRadius: BorderRadius.circular(12.0)),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromRGBO(0, 114, 181, 48)),
                          borderRadius: BorderRadius.circular(12.0))),
                ),
                const SizedBox(height: 16),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Contraseña nueva",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                ReactiveTextField(
                  key: const ValueKey('passwordNueva'),
                  formControlName: 'pwdNueva',
                  obscureText: _obscureTextPwdNueva,
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
                        onTap: _togglePwdNueva,
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
                              color: Colors.grey.withOpacity(0.7)),
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
                const SizedBox(height: 16),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Confirmar contraseña nueva",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                ReactiveTextField(
                  key: const ValueKey('passwordConfirmarNueva'),
                  formControlName: 'pwdNuevaConfirmar',
                  obscureText: _obscureTextPwdConfirmar,                 
                  validationMessages: {
                    ValidationMessage.mustMatch: (error) => 'Las contraseñas no coinciden',
                  },
                  decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.lock_outline,
                        size: 15.0,
                      ),
                      suffixIcon: GestureDetector(
                        onTap: _togglePwdConfirmar,
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
                              color: Colors.grey.withOpacity(0.7)),
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
                const SizedBox(height: 250),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      controller.cambiarContraseniaLogin(widget.codigoUsuario);
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
            ),
          ),
        ),
      ),
    );
  }
}