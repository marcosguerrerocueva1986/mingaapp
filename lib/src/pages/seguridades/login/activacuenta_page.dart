import 'package:bancamovilr/index.dart';
import 'package:pinput/pinput.dart';

@RoutePage()
class ActivaCuentaPage extends ConsumerStatefulWidget {
  const ActivaCuentaPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ActivaCuentaPageState();
}

class _ActivaCuentaPageState extends ConsumerState<ActivaCuentaPage> {
  @override
  Widget build(BuildContext context) {
    var controller = ref.read(loginControllerProvider.notifier);
    var provider = ref.watch(loginControllerProvider);

    return ScaffoldBootstrap(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 120, 20, 35),
        child: FutureBuilder<bool>(
            future: controller.tienePinAccesoRegistrado(),
            builder: (context, snapshot) {
              return Center(
                child: ReactiveForm(
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
                            key: const ValueKey('usuarioactivacuenta'),
                            formControlName: 'codigoUsuario',
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
                            key: const ValueKey('passwordactivacuenta'),
                            formControlName: 'pwdUsuario',
                            obscureText: provider.obscurecerClave,
                            decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.lock_outline,
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
                            onPressed: () {appRouter.push(const MantenimientoRoute());},
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
              );
            }),
      ),
    );
  }
}
