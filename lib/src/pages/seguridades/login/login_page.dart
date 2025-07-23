import 'package:bancamovilr/index.dart';
import 'package:pinput/pinput.dart';

@RoutePage()
class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var controller = ref.read(loginControllerProvider.notifier);
    var provider = ref.watch(loginControllerProvider);

    return ScaffoldBootstrap(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
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
                        SvgPicture.asset(
                          Theme.of(context).brightness == Brightness.dark
                              ? R.svg.logoBlack
                              : R.svg.logo,
                          fit: BoxFit.contain,
                          height: 120,
                          width: 120,
                        ),
                        const SizedBox(
                          height: defaultPadding * 2,
                        ),
                        if (provider.modoConfirmacion) ...[
                          const Text(
                              "Ingrese el código temporal de seguridad que fue enviado a su correo y/o celular.",
                              textAlign: TextAlign.center),
                          const SizedBox(
                            height: defaultPadding,
                          ),
                          Pinput(
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
                          const SizedBox(
                            height: defaultPadding * 2,
                          ),
                          // ProcessButton(
                          //   onPressed: controller.login,
                          //   text: 'Confirmar'.toUpperCase(),
                          // ),
                          // const SizedBox(
                          //   height: defaultPadding,
                          // ),
                          ProcessButton(
                            isSecondary: true,
                            onPressed: controller.cancelar,
                            text: 'Cancelar'.toUpperCase(),
                          ),
                        ] else ...[
                          if (provider.estaValidado) ...[
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 60.0,
                              child: Image.network(
                                '${Configs.baseUrlSite}assets/images/seguridad/${provider.informacionValidada?.imagen ?? ''}',
                                width: 85,
                                height: 85,
                              ),
                            ),
                            const SizedBox(
                              height: defaultPadding,
                            ),
                            Text(
                              '"${provider.informacionValidada?.frase ?? ''}"',
                              style: context.textTheme.bodyMedium!
                                  .copyWith(fontStyle: FontStyle.italic),
                            ),
                            const SizedBox(
                              height: defaultPadding,
                            ),
                          ],
                          ReactiveTextField(
                            key: const ValueKey('usuario'),
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
                                hintText: "Usuario",
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
                            height: defaultPadding,
                          ),
                          if (provider.estaValidado) ...[
                            ReactiveTextField(
                              key: const ValueKey('password'),
                              formControlName: 'pwdUsuario',
                              obscureText: provider.obscurecerClave,
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
                                  contentPadding: const EdgeInsets.fromLTRB(
                                      20.0, 15.0, 20.0, 15.0),
                                  hintText: "Clave",
                                  errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.red.withOpacity(0.3)),
                                      borderRadius:
                                          BorderRadius.circular(32.0)),
                                  focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.red.withOpacity(0.3)),
                                      borderRadius:
                                          BorderRadius.circular(32.0)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey.withOpacity(0.7)),
                                      borderRadius:
                                          BorderRadius.circular(32.0)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey.withOpacity(0.7)),
                                      borderRadius:
                                          BorderRadius.circular(32.0)),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey.withOpacity(0.7)),
                                      borderRadius:
                                          BorderRadius.circular(32.0))),
                            ),
                            const SizedBox(
                              height: defaultPadding,
                            ),
                          ],
                          ProcessButton(
                            onPressed: controller.login,
                            text: 'Iniciar Sesión'.toUpperCase(),
                          ),
                        ],
                        const SizedBox(
                          height: defaultPadding * 4,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: GestureDetector(
                                behavior: HitTestBehavior.translucent,
                                onTap: () =>
                                    appRouter.push(const AgenciaRoute()),
                                child: Card(
                                  child: Container(
                                    padding: const EdgeInsets.all(
                                        defaultPadding * 2),
                                    child: const Column(children: [
                                      Icon(
                                        Icons.location_on,
                                        size: 30,
                                      ),
                                      SizedBox(
                                        height: defaultPadding,
                                      ),
                                      Text(
                                        'Ubícanos',
                                        textAlign: TextAlign.center,
                                      )
                                    ]),
                                  ),
                                ),
                              ),
                            ),
                            if (snapshot.hasData &&
                                (snapshot.data ?? false)) ...[
                              Expanded(
                                child: GestureDetector(
                                  behavior: HitTestBehavior.translucent,
                                  onTap: controller.accesoPorHuella,
                                  child: Card(
                                    child: Container(
                                      padding: const EdgeInsets.all(
                                          defaultPadding * 2),
                                      child: const Column(children: [
                                        Icon(
                                          Icons.fingerprint_outlined,
                                          size: 30,
                                        ),
                                        SizedBox(
                                          height: defaultPadding,
                                        ),
                                        Text(
                                          'Huella',
                                          textAlign: TextAlign.center,
                                        )
                                      ]),
                                    ),
                                  ),
                                ),
                              )
                            ]
                          ],
                        )
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
