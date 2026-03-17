import 'package:bancamovilr/index.dart';
import 'package:bancamovilr/src/pages/seguridades/login/recuperarcontrasenia_controller.dart';

@RoutePage()
class RecuperarContraseniaPage extends ConsumerStatefulWidget {
  const RecuperarContraseniaPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RecuperarContraseniaPageState();
}

class _RecuperarContraseniaPageState extends ConsumerState<RecuperarContraseniaPage> {
  @override
  Widget build(BuildContext context) {
    var controller = ref.read(recuperarContraseniaControllerProvider.notifier);
    var provider = ref.watch(recuperarContraseniaControllerProvider);

    return ScaffoldBootstrap(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 120, 20, 100),
        child: FutureBuilder<bool>(
            future: controller.tienePinAccesoRegistrado(),
            builder: (context, snapshot) {
              return Padding(
                padding: EdgeInsets.zero,
                child: ReactiveForm(
                  formGroup: controller.form,
                  child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: defaultPadding * 3),
                      SvgPicture.asset(
                        Theme.of(context).brightness == Brightness.dark
                            ? R.svg.logoBlack
                            : R.svg.logoPantallas,
                        fit: BoxFit.fill,
                        height: 50,
                        width: 80,
                      ),
                      const SizedBox(height: defaultPadding * 2),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(20, 5, 10, 0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Olvide mi contraseña",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16,
                                color: Color.fromRGBO(0, 114, 181, 48),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 50),
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
                        ReactiveTextField(
                          key: const ValueKey('usuariorecuperacontrasenia'),
                          formControlName: 'codigoUsuario',
                          readOnly: !provider.permiteEditarUsuario,
                          validationMessages: {
                             ValidationMessage.required: (error) => 'Ingrese su usuario',
                              // Puedes agregar más validaciones si las tienes en tu formControl:
                              //ValidationMessage.minLength: (error) => 'Debe tener al menos ${(error as Map)['requiredLength']} caracteres',
                            },
                          decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.verified_user_rounded,
                                // color: Colors.grey,
                                size: 15.0,
                              ),
                              contentPadding: const EdgeInsets.fromLTRB(
                                  20.0, 15.0, 20.0, 15.0),
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
                        const SizedBox(
                          height: 150,
                        ),
                        ProcessButton(
                          key: const ValueKey('continuar_recuperarcontrasenia_button'),
                          onPressed: (){
                            controller.validarUsuarioCambioContrasenia();
                          },
                          text: 'Continuar'.toUpperCase(),
                        ),
                        const SizedBox(height: 5),
                        ProcessButton(
                          key: const ValueKey('regresar_recuperarcontraseña_button'),
                          onPressed: (){
                            appRouter.pop();
                          },
                          text: 'Regresar'.toUpperCase(),
                        ),
                      ],
                  ),
                  
                                    ),                
                ),
              );
            }),
      ),
    );
  }
}
