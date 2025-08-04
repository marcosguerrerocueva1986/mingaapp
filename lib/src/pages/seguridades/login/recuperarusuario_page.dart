import 'package:bancamovilr/index.dart';
import 'package:pinput/pinput.dart';

@RoutePage()
class RecuperarUsuarioPage extends ConsumerStatefulWidget {
  const RecuperarUsuarioPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RecuperarUsuarioPageState();
}

class _RecuperarUsuarioPageState extends ConsumerState<RecuperarUsuarioPage> {
  @override
  Widget build(BuildContext context) {
    var controller = ref.read(loginControllerProvider.notifier);
    var provider = ref.watch(loginControllerProvider);

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
                          key: const ValueKey('pinput_codigo_seguridad'),
                          androidSmsAutofillMethod:
                              AndroidSmsAutofillMethod.smsUserConsentApi,
                          length: 6,
                          // controller: controller,
                          // focusNode: focusNode,
                          defaultPinTheme: defaultPinTheme,
                          onCompleted: controller.confimarOtpIngreso,
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
                        // ProcessButton(
                        //   onPressed: controller.login,
                        //   text: 'Confirmar'.toUpperCase(),
                        // ),
                        // const SizedBox(
                        //   height: defaultPadding,
                        // ),
                        ProcessButton(
                          key: const ValueKey('regresar_confirmacion_button'),
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
                              "Olvide mi usuario",
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
                              "Ingrese su número de cédula",
                              style: TextStyle(fontSize: 17, color: Colors.grey),
                            ),
                          ),
                        ),
                        ReactiveTextField(
                          key: const ValueKey('usuariorecuperacion'),
                          formControlName: 'codigoUsuario',
                          readOnly: !provider.permiteEditarUsuario,
                          decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.verified_user_rounded,
                                // color: Colors.grey,
                                size: 15.0,
                              ),
                              contentPadding: const EdgeInsets.fromLTRB(
                                  20.0, 15.0, 20.0, 15.0),
                              hintText: "Identificación",
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
                          key: const ValueKey('continuar_recuperar_button'),
                          onPressed: (){
                            appRouter.push(const MantenimientoRoute());
                          },
                          text: 'Continuar'.toUpperCase(),
                        ),
                        const SizedBox(height: 5),
                        ProcessButton(
                          key: const ValueKey('regresar_recuperar_button'),
                          onPressed: (){
                            appRouter.pop();
                          },
                          text: 'Regresar'.toUpperCase(),
                        ),
                      ],
                      const SizedBox(height: defaultPadding * 2),
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
