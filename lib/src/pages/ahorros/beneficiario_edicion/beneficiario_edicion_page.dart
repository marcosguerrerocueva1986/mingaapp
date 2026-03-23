import 'package:dropdown_search/dropdown_search.dart';
import 'package:bancamovilr/index.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:collection/collection.dart';

@RoutePage()
class BeneficiarioEdicionPage extends ConsumerStatefulWidget {
  const BeneficiarioEdicionPage(this.id, this.esInterno, {super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _BeneficiarioEdicionPageState();

  final int id;
  final bool esInterno;
}

class _BeneficiarioEdicionPageState extends ConsumerState<BeneficiarioEdicionPage> 
with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final TextEditingController _numeroCuentaController = TextEditingController();
  final TextEditingController _correoElectronicoController = TextEditingController();
  bool _guardarContacto = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.index = widget.esInterno ? 0 : 1;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(beneficiarioEdicionControllerProvider.notifier).inicializa(widget.id, widget.esInterno);
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
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
    return ScaffoldBootstrap(
      appBar: AppBar(
        bottom: TabBar(
          controller: _tabController,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicatorPadding: const EdgeInsets.fromLTRB(10,0,10,0),
                        dividerColor: Colors.transparent,
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: const Color.fromRGBO(0, 96, 153, 1),
                        ),
                        labelColor: Colors.white, 
                        labelStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                        unselectedLabelColor: const Color.fromRGBO(48, 155, 217, 1), 
          tabs: const [
            Tab(text: "COAC. Minga Ltda."),
            Tab(text: "Otros Bancos y Coops."),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          _FormularioInterno(),
          _FormularioExterno(),
        ],
      ),
    );
  }
}

class _FormularioInterno extends ConsumerStatefulWidget {
  const _FormularioInterno({super.key});
  @override
  ConsumerState<_FormularioInterno> createState() => _FormularioInternoState();
}
class _FormularioInternoState extends ConsumerState<_FormularioInterno> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(beneficiarioEdicionControllerProvider.notifier).inicializa(0, true);
      ref.read(beneficiarioEdicionControllerProvider.notifier).limpiarBeneficiario();
    });
  }
  @override
  Widget build(BuildContext context) {
    final controller = ref.read(beneficiarioEdicionControllerProvider.notifier);
    final provider = ref.watch(beneficiarioEdicionControllerProvider);
    return SingleChildScrollView(
      padding: const EdgeInsets.all(defaultPadding),
      child: ReactiveForm(
          formGroup: controller.formI,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const Text(
                'Información de la Cuenta:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Color.fromRGBO(48, 155, 217, 1)),
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
                      onChanged: (control) => {
                        ref.read(beneficiarioEdicionControllerProvider.notifier).limpiarBeneficiario()
                      },
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
                      onPressed: controller.validaCuentaBeneficiario,
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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Color.fromRGBO(0, 96, 153, 1)),
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
                          const SizedBox(height: defaultPadding * 1),
                          const Divider(
                            height: 1,
                          ),
                          if ((provider.beneficiario?.id ?? 0) == 0) ...[
                            const SizedBox(
                              height: defaultPadding * 1,
                            ),
                            /* if (provider.esValidacion) ...[
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
                            ] */
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
                key: const ValueKey('correoelectronicobeneficiarioingreso'),
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
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue, 
                    width: 0.5,        
                  ),
                  borderRadius: BorderRadius.circular(10), 
                ),
                child: ReactiveCheckboxListTile(
                  key: const ValueKey('guardarContacto'),
                  formControlName: 'guardarContacto',
                  title: const Text('Guardar Contacto'),
                  secondary: const Icon(Icons.person),
                  controlAffinity: ListTileControlAffinity.trailing,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16.0), 
                ),
              ),
              const SizedBox(height: defaultPadding*2),
              SizedBox(
                width: double.infinity,
                child: ReactiveFormConsumer(
                  builder: (context, form, child) {
                    return ElevatedButton(
                      onPressed: () {
                        controller.guardaBeneficiario('');
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: const Color.fromRGBO(0, 96, 153, 1),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text('Continuar',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
    );
  }
}
class _FormularioExterno extends ConsumerStatefulWidget {
   const _FormularioExterno({super.key});

  @override
  ConsumerState<_FormularioExterno> createState() => _FormularioExternoState();
}

class _FormularioExternoState extends ConsumerState<_FormularioExterno> {
  String? tipoIdentificacionSeleccionado;
  String? tipoCuentaSeleccionado;
  late final TextEditingController _bancoController;
  final Map<String, String> tiposIdentificacion = {
  'Cedula': '1',
  'Ruc': '2',
  'Pasaporte': '3',
};
  final Map<String, String> tiposCuenta = {
  'De Ahorros': '01',
  'Corriente': '02',
};
  @override
  void initState() {
    super.initState();
    _bancoController = TextEditingController(); 
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(beneficiarioEdicionControllerProvider.notifier).inicializa(0, false);
      ref.read(beneficiarioEdicionControllerProvider.notifier).limpiarBeneficiario();
    });
  }
  @override
  void dispose() {
    _bancoController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final controller = ref.read(beneficiarioEdicionControllerProvider.notifier);
    final provider = ref.watch(beneficiarioEdicionControllerProvider);
    return SingleChildScrollView(
      padding: const EdgeInsets.all(defaultPadding),
      child: ReactiveForm(
        formGroup: controller.formE,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Información de la Cuenta', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Color.fromRGBO(48, 155, 217, 1))),
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
                          /* if (provider.esValidacion) ...[
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
                          ] */
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
            const SizedBox(height: defaultPadding*1),
            TypeAheadField<int?>(
              controller: _bancoController,
              builder: (context, controller, focus) {
                return TextFormField(
                  controller: controller,
                  focusNode: focus,
                  decoration: const InputDecoration(
                    labelText: 'Seleccione un banco',
                    hintText: 'Coop. de A. y C. Chibuleo LTDA',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 0.5,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 0.5,
                      ),
                    ),
                    fillColor: Colors.transparent,
                    filled: true,
                  ),
                );
              },
              suggestionsCallback: (pattern) async {
                final bancos = provider.requisitosRespuesta?.institucionesFinancieras ?? [];
                if (pattern.isEmpty) {
                  return bancos.map((banco) => banco.id).toList();
                }
                return bancos.where(
                  (banco) => (banco.nombre ?? '').toLowerCase().contains(pattern.toLowerCase()),
                ).map((banco) => banco.id).toList();
              },
              itemBuilder: (context, suggestion) {
                final banco = provider.requisitosRespuesta?.institucionesFinancieras?.firstWhereOrNull((b) => b.id == suggestion);
                return ListTile(
                  title: Text(banco?.nombre ?? 'Banco Desconocido'),
                );
              },
              onSelected: (int? suggestion) {
                final latestState = ref.read(beneficiarioEdicionControllerProvider); 
                final bancos = latestState.requisitosRespuesta?.institucionesFinancieras ?? [];
                final banco = bancos.firstWhereOrNull((b) => b.id == suggestion);
                if (banco != null) {
                  final selectedName = banco.nombre ?? '';
                  setState(() {
                    _bancoController.text = selectedName;
                  });
                  controller.formE.control('idInstitucion').value = suggestion; 
                  if (controller.formE.contains('institucion')) {
                    controller.formE.control('institucion').value = selectedName;
                  }
                }
              },
            ),
            const SizedBox(height: defaultPadding),
            const Text('Nombre de la persona', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
            const SizedBox(height: defaultPadding),
            ReactiveTextField(
              formControlName: 'nombre',
              decoration: InputDecoration(
                hintText: 'Por ejemplo: Juan, Pedro, etc.',
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
            ),
            const SizedBox(height: defaultPadding),
            const Text('Tipo de Identificacion', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
            const SizedBox(height: defaultPadding),
            Row(
              children: [
                Expanded(
                  flex: 1,
                    child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: tipoIdentificacionSeleccionado == 'Cedula' ? const Color.fromRGBO(0, 96, 153, 1) : Colors.transparent, 
                      side: BorderSide(
                        color: tipoIdentificacionSeleccionado == 'Cedula' ? Colors.blue : Colors.blue, 
                      ),
                      foregroundColor: Colors.grey, 
                      padding: const EdgeInsets.symmetric(vertical: 11),
                    ),
                    onPressed: () {
                      setState(() {
                        tipoIdentificacionSeleccionado = 'Cedula';
                        final codigoId = tiposIdentificacion['Cedula'];
                        controller.formE.control('codigoTipoId').updateValue(codigoId);
                      });
                    },
                    child: Text(
                    'Cédula', 
                    style: TextStyle(
                      color: tipoIdentificacionSeleccionado == 'Cedula' ? Colors.white : Colors.grey, 
                    ),
                  ),                         
                  ),
                ),
                const SizedBox(width: defaultPadding),
                Expanded(
                  flex: 1,
                   child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: tipoIdentificacionSeleccionado == 'Ruc' ? const Color.fromRGBO(0, 96, 153, 1) : Colors.transparent, 
                      side: BorderSide(
                        color: tipoIdentificacionSeleccionado == 'Ruc' ? Colors.grey : Colors.blue, 
                      ),
                      foregroundColor: Colors.grey,
                      padding: const EdgeInsets.symmetric(vertical: 11),
                    ),
                    onPressed: () {
                      setState(() {
                        tipoIdentificacionSeleccionado = 'Ruc';
                        final codigoId = tiposIdentificacion['Ruc'];
                        controller.formE.control('codigoTipoId').updateValue(codigoId);
                      });
                    },
                    child: Text('Ruc', style: TextStyle(
                      color: tipoIdentificacionSeleccionado == 'Ruc' ? Colors.white : Colors.grey, 
                      ),
                    ),
                   ),
                ),
                const SizedBox(width: defaultPadding),
                Expanded(
                  flex: 1,
                   child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: tipoIdentificacionSeleccionado == 'Pasaporte' ? const Color.fromRGBO(0, 96, 153, 1) : Colors.transparent, 
                      side: BorderSide(
                        color: tipoIdentificacionSeleccionado == 'Pasaporte' ? Colors.grey : Colors.blue, 
                      ),
                      foregroundColor: Colors.grey,
                      padding: const EdgeInsets.symmetric(vertical: 11),
                    ),
                    onPressed: () {
                      setState(() {
                        tipoIdentificacionSeleccionado = 'Pasaporte';
                        final codigoId = tiposIdentificacion['Pasaporte'];
                        controller.formE.control('codigoTipoId').updateValue(codigoId);
                      });
                    },
                  child: Text('Pasaporte', style: TextStyle(color: tipoIdentificacionSeleccionado == 'Pasaporte' ? Colors.white : Colors.grey, // <-- El color del texto cambia aquí
                      ),
                    ),
                   ),
                ),
              ],
            ),
            const SizedBox(height: defaultPadding),
            const Text('Numero de identificación', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
            const SizedBox(height: defaultPadding),
            ReactiveTextField(
              key: const ValueKey('identificacionBeneficiarioNuevo'),
              formControlName: 'identificacion',
              decoration: InputDecoration(
                hintText: 'Ej: 1234567890',
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
            ),
            const SizedBox(height: defaultPadding),
            const Text('Tipo de cuenta', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
            const SizedBox(height: defaultPadding),
            Row(
              children: [
                Expanded(
                  flex: 1,
                   child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: tipoCuentaSeleccionado == 'De Ahorros' ? const Color.fromRGBO(0, 96, 153, 1) : Colors.transparent, 
                      side: BorderSide(
                        color: tipoCuentaSeleccionado == 'De Ahorros' ? Colors.blue : Colors.blue, 
                      ),
                      foregroundColor: Colors.grey, 
                      padding: const EdgeInsets.symmetric(vertical: 11),
                    ),
                    onPressed: () {
                      setState(() {
                        tipoCuentaSeleccionado = 'De Ahorros';
                        final codigoId = tiposCuenta['De Ahorros'];
                        controller.formE.control('codigoTipoCuenta').updateValue(codigoId);
                      });
                    },
                    child: Text('De Ahorros', style: TextStyle(
                      color: tipoCuentaSeleccionado == 'De Ahorros' ? Colors.white : Colors.grey, 
                    ),
                  ),                         
                  ),
                ),
                const SizedBox(width: defaultPadding),
                Expanded(
                  flex: 1,
                   child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: tipoCuentaSeleccionado == 'Corriente' ? const Color.fromRGBO(0, 96, 153, 1) : Colors.transparent, 
                      side: BorderSide(
                        color: tipoCuentaSeleccionado == 'Corriente' ? Colors.blue : Colors.blue, 
                      ),
                      foregroundColor: Colors.grey, 
                      padding: const EdgeInsets.symmetric(vertical: 11),
                    ),
                    onPressed: () {
                      setState(() {
                        tipoCuentaSeleccionado = 'Corriente';
                        final codigoId = tiposCuenta['Corriente'];
                        controller.formE.control('codigoTipoCuenta').updateValue(codigoId);
                      });
                    },
                    child: Text('Corriente', style: TextStyle(color: tipoCuentaSeleccionado == 'Corriente' ? Colors.white : Colors.grey, 
                    ),
                  ),                         
                  ),
                ),
              ],
            ),
            const SizedBox(height: defaultPadding),
            const Text('Numero de cuenta', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
            const SizedBox(height: defaultPadding),
            ReactiveTextField(
              formControlName: 'numeroCuentaExterno',
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
            ),
            const SizedBox(height: defaultPadding * 2),
            const Text('Información personal', style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromRGBO(0, 96, 153, 1))),
            const SizedBox(height: defaultPadding),
            ReactiveTextField(
              formControlName: 'email',
              decoration: InputDecoration(
                labelText: 'Correo electrónico',
                hintText: 'ejemplo@correo.com',
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
            ),
            const SizedBox(height: defaultPadding),
            ReactiveCheckboxListTile(
              formControlName: 'guardarContacto',
              title: const Text('Guardar Contacto'),
              secondary: const Icon(Icons.person),
              controlAffinity: ListTileControlAffinity.trailing,
              contentPadding: EdgeInsets.zero,
            ),
            const SizedBox(height: defaultPadding * 2),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  controller.guardaBeneficiario('');
                },
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: const Color.fromRGBO(0, 96, 153, 1),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text('Continuar',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}