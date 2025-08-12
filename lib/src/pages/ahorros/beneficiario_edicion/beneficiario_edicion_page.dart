import 'package:awesome_select/awesome_select.dart';
import 'package:bancamovilr/index.dart';
import 'package:pinput/pinput.dart';

@RoutePage()
class BeneficiarioEdicionPage extends ConsumerStatefulWidget {
  const BeneficiarioEdicionPage(this.id, this.esInterno, {super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _BeneficiarioEdicionPageState();

  final int id;
  final bool esInterno;
}

class _BeneficiarioEdicionPageState extends ConsumerState<BeneficiarioEdicionPage> {
  final TextEditingController _numeroCuentaController = TextEditingController();
  final TextEditingController _correoElectronicoController = TextEditingController();
  bool _guardarContacto = false;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(beneficiarioEdicionControllerProvider.notifier).inicializa(widget.id, widget.esInterno);
    });
  }

  @override
  void dispose() {
    _numeroCuentaController.dispose();
    _correoElectronicoController.dispose();
    super.dispose();
  }

  void _validarCuenta() {
    final numeroCuenta = _numeroCuentaController.text;
    if (numeroCuenta.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Por favor, ingresa el número de cuenta.')),
      );
      return;
    }
  }

  _continuar(BeneficiarioModel? beneficiario) {
    final numeroCuenta = _numeroCuentaController.text;

    if (numeroCuenta.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Por favor, completa todos los campos.')),
      );
      return;
    }
    appRouter.popAndPush(TransferenciaRoute(tipoTransferencia: TipoTransferencia.directa, beneficiario: beneficiario));
  }

  @override
  Widget build(BuildContext context) {
    var controller = ref.read(beneficiarioEdicionControllerProvider.notifier);
    var provider = ref.watch(beneficiarioEdicionControllerProvider);

    return ScaffoldBootstrap(
      appBar: AppBar(
        title: const Text('', style: TextStyle(color: Color.fromRGBO(0, 96, 153, 10))),
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.white),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Color.fromRGBO(0, 96, 153, 10)),
          onPressed: () => context.router.pop(),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: ReactiveForm(
          formGroup: controller.form,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: const Color.fromRGBO(0, 114, 181, 1),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text('COAC. Minga Ltda.'),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                      },
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Color.fromRGBO(0, 114, 181, 1)),
                        foregroundColor: const Color.fromRGBO(0, 114, 181, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text('Otros Bancos y Coops.'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const Text(
                'Información de la Cuenta:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Color.fromRGBO(0, 96, 153, 10)),
              ),
              const SizedBox(height: 1),
              const Text(
                'Nro. de cuenta:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: ReactiveTextField(
                      formControlName: 'numeroCuenta',
                      controller: _numeroCuentaController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.blue, 
                            width: 0.5,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.blue,
                            width: 0.5,
                          ),
                        ),
                        fillColor: Colors.transparent,
                        filled: true,
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: controller.verificarYGenerarOtp,
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: const Color.fromRGBO(0, 114, 181, 1),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 20),
                      ),
                      child: const Text('Validar cuenta'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const Text(
                'Información personal:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Color.fromRGBO(0, 96, 153, 10)),
              ),
              if(provider.esValidacion) ...[
                const SizedBox(
                      height: defaultPadding,
                    ),
                    Text(
                      (provider.beneficiario?.id ?? 0) > 0
                          ? 'Datos del Beneficiario'
                          : 'Confirma los datos del registro de beneficiario',
                      textAlign: TextAlign.center,
                      style: context.textTheme.bodyMedium!.copyWith(
                          color: context.getTitlePrimaryColor(),
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          // color: Colors.white,
                          ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 10),
                      child: Column(
                        children: <Widget>[
                          ...itemsParaConfirmacionRecibo([
                            EtiquetaValorRecibo(
                                etiqueta: 'Número Cuenta',
                                valor: provider.beneficiario?.numeroCuenta ?? ''),
                            EtiquetaValorRecibo(
                                etiqueta: 'Nombre',
                                valor: provider.beneficiario?.nombre ?? ''),
                            EtiquetaValorRecibo(
                                etiqueta: 'Identificación',
                                valor:
                                    provider.beneficiario?.identificacion ?? ''),
                            EtiquetaValorRecibo(
                                etiqueta: 'Institución',
                                valor: provider.beneficiario?.institucion ?? ''),
                            if (!provider.esInterno) ...[
                              EtiquetaValorRecibo(
                                  etiqueta: 'Tipo Cuenta',
                                  valor: provider.beneficiario?.tipoCuenta ?? ''),
                            ]
                          ]),
                          const SizedBox(height: defaultPadding * 2),
                          const Divider(
                            height: 1,
                          ),
                          if ((provider.beneficiario?.id ?? 0) == 0) ...[
                            const SizedBox(
                              height: defaultPadding * 2,
                            ),
                            if (_guardarContacto) ...[
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
                                onCompleted: (String otp) =>
                                    controller.guardaBeneficiario(otp),
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
                            ]
                          ] else ...[
                            const SizedBox(
                              height: defaultPadding,
                            ),
                            ProcessButton(
                                text: 'ELIMINAR',
                                onPressed: controller.eliminarBeneficiario),
                          ]
                        ],
                      ),
                    )
              ],
          
              const SizedBox(height: 1),
              const Text(
                'Correo electrónico:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: _correoElectronicoController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.blue, 
                      width: 0.5,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                      width: 0.5,
                    ),
                  ),
                  fillColor: Colors.transparent,
                  filled: true,
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              CheckboxListTile(
                title: const Text('Guardar Contacto'),
                secondary: const Icon(Icons.person),
                value: _guardarContacto,
                onChanged: (bool? value) {
                  setState(() {
                    _guardarContacto = value ?? false;
                  });
                },
                controlAffinity: ListTileControlAffinity.trailing,
                contentPadding: EdgeInsets.zero,
              ),
              
              const SizedBox(height: defaultPadding*2),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => _continuar(provider.beneficiario),
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: const Color.fromRGBO(0, 96, 153, 10),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Continuar',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
