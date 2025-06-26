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

class _BeneficiarioEdicionPageState
    extends ConsumerState<BeneficiarioEdicionPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(beneficiarioEdicionControllerProvider.notifier)
          .inicializa(widget.id, widget.esInterno);
    });
  }

  @override
  Widget build(BuildContext context) {
    var controller = ref.read(beneficiarioEdicionControllerProvider.notifier);
    var provider = ref.watch(beneficiarioEdicionControllerProvider);

    return ScaffoldBootstrap(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: context.theme.primaryColor,
        centerTitle: true,
        title: const Text(
          'Beneficiario',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: ReactiveForm(
          formGroup: controller.form,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (provider.esValidacion) ...[
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
                              etiqueta: 'Apellido',
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
                        const SizedBox(
                          height: defaultPadding * 2,
                        ),
                        const Divider(
                          height: 1,
                        ),
                        if ((provider.beneficiario?.id ?? 0) == 0) ...[
                          const SizedBox(
                            height: defaultPadding * 2,
                          ),
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
                ] else ...[
                  WrapperFormItem(
                    label: 'Número de Cuenta:',
                    child: ReactiveTextField(
                      formControlName: 'numeroCuenta',
                      keyboardType: TextInputType.number,
                      decoration: inputDecorationForm,
                    ),
                  ),
                  if (!provider.esInterno) ...[
                    WrapperFormItem(
                      label: 'Institución Financiera:',
                      child: ReactiveSmartSelect(
                        formControlName: 'idInstitucion',
                        title: 'Seleccione una institución',
                        placeholder: 'Selecciona una institución',
                        label: 'Institución Transferencia',
                        choiceItems: (provider.requisitosRespuesta
                                    ?.institucionesFinancieras ??
                                [])
                            .map((e) => S2Choice(value: e.id, title: e.nombre))
                            .toList(),
                      ),
                    ),
                    WrapperFormItem(
                      label: 'Tipo de Cuenta:',
                      child: ReactiveSmartSelect(
                        formControlName: 'codigoTipoCuenta',
                        title: 'Selecciona un tipo de Cuenta',
                        placeholder: 'Selecciona un tipo de Cuenta',
                        label: 'Tipo Cuenta',
                        choiceItems:
                            (provider.requisitosRespuesta?.tiposCuenta ?? [])
                                .map((e) =>
                                    S2Choice(value: e.codigo, title: e.nombre))
                                .toList(),
                      ),
                    ),
                    WrapperFormItem(
                      label: 'Tipo de Identificación:',
                      child: ReactiveSmartSelect(
                        formControlName: 'codigoTipoId',
                        title: 'Seleccione un tipo de identificación',
                        placeholder: 'Selecciona un tipo de identificación',
                        label: 'Tipo Identificación',
                        choiceItems: (provider
                                    .requisitosRespuesta?.tiposIdentificacion ??
                                [])
                            .map((e) =>
                                S2Choice(value: e.codigo, title: e.nombre))
                            .toList(),
                      ),
                    ),
                    WrapperFormItem(
                      label: 'Identificación:',
                      child: ReactiveTextField(
                        formControlName: 'identificacion',
                        keyboardType: TextInputType.number,
                        decoration: inputDecorationForm,
                      ),
                    ),
                    WrapperFormItem(
                      label: 'Nombre:',
                      child: ReactiveTextField(
                        formControlName: 'nombre',
                        decoration: inputDecorationForm,
                      ),
                    ),
                    WrapperFormItem(
                      label: 'Apellido:',
                      child: ReactiveTextField(
                        formControlName: 'apellido',
                        decoration: inputDecorationForm,
                      ),
                    ),
                    WrapperFormItem(
                      label: 'Email:',
                      child: ReactiveTextField(
                        formControlName: 'email',
                        decoration: inputDecorationForm,
                      ),
                    ),
                  ],
                  ProcessButton(
                      text: 'VERIFICAR',
                      onPressed: controller.verificarYGenerarOtp),
                ]
              ],
            ),
          ),
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      // floatingActionButton: !provider.esComprobante
      //     ? Column(
      //         children: <Widget>[
      //           const Spacer(
      //             flex: 1,
      //           ),
      //           FloatingActionButton.extended(
      //             // backgroundColor: context.getTitlePrimaryColor(),
      //             onPressed: controller.irInicio,
      //             tooltip: 'Ir a Inicio',
      //             label: const Text('Ir a Inicio'),
      //             heroTag: null,
      //             icon: const Icon(Icons.home),
      //           ),
      //           const SizedBox(
      //             height: 10,
      //           ),
      //           FloatingActionButton.extended(
      //             onPressed: controller.tomarCaptura,
      //             tooltip: 'Compartir',
      //             label: const Text('Compartir'),
      //             heroTag: null,
      //             icon: const Icon(Icons.share),
      //           ),
      //         ],
      //       )
      //     : null,
    );
  }

  List<Widget> itemsParaConfirmacionRecibo(
      List<EtiquetaValorRecibo> listaDetalle) {
    List<Widget> lista = [];

    for (var item in listaDetalle) {
      lista.add(
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              '${item.etiqueta}:',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              width: defaultPadding,
            ),
            Flexible(
              child: Text(item.valor,
                  overflow: TextOverflow.ellipsis, textAlign: TextAlign.right),
            ),
          ],
        ),
      );

      lista.add(
        const SizedBox(
          height: defaultPadding,
        ),
      );
    }

    return lista;

    // return [
    //   Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     children: <Widget>[
    //       const Text(
    //         'Valor:',
    //         style: TextStyle(fontWeight: FontWeight.bold),
    //       ),
    //       const SizedBox(
    //         width: defaultPadding,
    //       ),
    //       Flexible(
    //         child: Text(100.00.toMoney(),
    //             overflow: TextOverflow.ellipsis, textAlign: TextAlign.right),
    //       ),
    //     ],
    //   ),
    //   const SizedBox(
    //     height: 20,
    //   ),
    //   Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     children: <Widget>[
    //       const Text(
    //         'Comisión:',
    //         style: TextStyle(fontWeight: FontWeight.bold),
    //       ),
    //       const SizedBox(
    //         width: defaultPadding,
    //       ),
    //       Flexible(
    //         child: Text(
    //             widget.tipoTransferencia != TipoTransferencia.interbancaria
    //                 ? (0.00).toMoney()
    //                 : 0.00.toMoney(),
    //             overflow: TextOverflow.ellipsis,
    //             textAlign: TextAlign.right),
    //       ),
    //     ],
    //   ),
    //   const SizedBox(
    //     height: defaultPadding,
    //   ),
    //   Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     children: <Widget>[
    //       const Text(
    //         'Cuenta Origen: ',
    //         style: TextStyle(fontWeight: FontWeight.bold),
    //       ),
    //       const SizedBox(
    //         width: defaultPadding,
    //       ),
    //       Flexible(
    //         child: Text(provider.cuenta?.codigo ?? '',
    //             overflow: TextOverflow.ellipsis, textAlign: TextAlign.right),
    //       ),
    //     ],
    //   ),
    //   const SizedBox(
    //     height: defaultPadding,
    //   ),
    //   Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     children: <Widget>[
    //       const Text(
    //         'Beneficiario:',
    //         style: TextStyle(fontWeight: FontWeight.bold),
    //       ),
    //       const SizedBox(
    //         width: defaultPadding,
    //       ),
    //       Flexible(
    //         child: Text(provider.beneficiario?.nombre ?? '',
    //             overflow: TextOverflow.ellipsis, textAlign: TextAlign.right),
    //       ),
    //     ],
    //   ),
    //   if (widget.tipoTransferencia == TipoTransferencia.interbancaria) ...[
    //     const SizedBox(
    //       height: defaultPadding,
    //     ),
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       children: <Widget>[
    //         const Text(
    //           'Institución: ',
    //           style: TextStyle(fontWeight: FontWeight.bold),
    //         ),
    //         const SizedBox(
    //           width: defaultPadding,
    //         ),
    //         Flexible(
    //           child: Text(provider.beneficiario?.institucion ?? '',
    //               overflow: TextOverflow.ellipsis, textAlign: TextAlign.right),
    //         ),
    //       ],
    //     )
    //   ],
    //   const SizedBox(
    //     height: defaultPadding,
    //   ),
    //   Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     children: <Widget>[
    //       const Text(
    //         'Cuenta Destino:',
    //         style: TextStyle(fontWeight: FontWeight.bold),
    //       ),
    //       const SizedBox(
    //         width: defaultPadding,
    //       ),
    //       Flexible(
    //         child: Text(provider.beneficiario?.numeroCuenta ?? '',
    //             overflow: TextOverflow.ellipsis, textAlign: TextAlign.right),
    //       ),
    //     ],
    //   )
    // ];
  }
}
