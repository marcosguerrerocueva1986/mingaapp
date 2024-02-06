import 'package:bancamovilr/index.dart';
import 'package:flutter/services.dart';
import 'package:pinput/pinput.dart';
import 'package:sks_ticket_view/sks_ticket_view.dart';

import 'package:widgets_to_image/widgets_to_image.dart';

@RoutePage()
class TransferenciaPage extends ConsumerStatefulWidget {
  const TransferenciaPage({
    super.key,
    required this.tipoTransferencia,
    this.cuentaTransferenciaParametro,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TransferenciaPageState();

  final TipoTransferencia tipoTransferencia;
  final CuentaModel? cuentaTransferenciaParametro;
}

class _TransferenciaPageState extends ConsumerState<TransferenciaPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(transferenciaControllerProvider.notifier)
          .inicializa(widget.cuentaTransferenciaParametro);
    });
  }

  @override
  Widget build(BuildContext context) {
    var controller = ref.read(transferenciaControllerProvider.notifier);
    var provider = ref.watch(transferenciaControllerProvider);

    return ScaffoldBootstrap(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: context.theme.primaryColor,
        centerTitle: true,
        title: Text(
          'Transferencia ${widget.tipoTransferencia == TipoTransferencia.misCuentas ? 'Mis Cuentas' : (widget.tipoTransferencia == TipoTransferencia.directa ? 'Interna' : 'Interbancaria')}',
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: ReactiveForm(
          formGroup: controller.form,
          child: SingleChildScrollView(
            child: ListView(
              // crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.start,
              // mainAxisSize: MainAxisSize.min,
              shrinkWrap: true,
              children: [
                if (provider.esComprobante) ...[
                  Text(
                    'Transferencia realizada',
                    textAlign: TextAlign.center,
                    style: context.textTheme.bodyMedium!.copyWith(
                        color: context.getTitlePrimaryColor(),
                        fontWeight: FontWeight.bold),
                  ),
                  // const SizedBox(
                  //   height: defaultPadding,
                  // ),
                  Container(
                    // height: 250,
                    child: SKSTicketView(
                      backgroundPadding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 20),
                      backgroundColor: context.theme.scaffoldBackgroundColor,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 24, horizontal: 0),
                      drawTriangle: false,
                      triangleAxis: Axis.vertical,
                      borderRadius: 6,
                      drawDivider: false,
                      trianglePos: .5,
                      circleDash: false,
                      drawArc: false,
                      dividerPadding: 0,
                      dividerColor: Colors.transparent,
                      dashWidth: 5,
                      contentBackgroundColor:
                          context.theme.scaffoldBackgroundColor,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          WidgetsToImage(
                            controller: controller.controller,
                            child: Container(
                              color: context.theme.scaffoldBackgroundColor,
                              child: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        opacity: 0.15,
                                        image: AssetImage(R.images.marcaagua),
                                        fit: BoxFit.none,
                                        repeat: ImageRepeat.repeat)),
                                padding: const EdgeInsets.all(24),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    const SizedBox(
                                      height: defaultPadding * 3,
                                    ),
                                    Container(
                                      height: 50,
                                      decoration: const BoxDecoration(
                                          color: Colors.transparent),
                                      child: Center(
                                        child: SvgPicture.asset(R.svg.logo,
                                            height: 120),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: defaultPadding,
                                    ),
                                    SizedBox(
                                      width: double.infinity,
                                      child: Text(
                                        'Comprobante Transferencia'
                                            .toUpperCase(),
                                        textAlign: TextAlign.center,
                                        style: context.textTheme.bodyMedium!
                                            .copyWith(
                                                fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: defaultPadding,
                                    ),
                                    ...itemsParaConfirmacionRecibo([
                                      EtiquetaValorRecibo(
                                          etiqueta: 'Valor',
                                          valor: controller.monto.toMoney()),
                                      EtiquetaValorRecibo(
                                          etiqueta: 'Comisión',
                                          valor: 0.00.toMoney()),
                                      EtiquetaValorRecibo(
                                          etiqueta: 'Cuenta Origen',
                                          valor: provider.cuenta?.codigo ?? ''),
                                      EtiquetaValorRecibo(
                                          etiqueta: 'Beneficiario',
                                          valor:
                                              provider.beneficiario?.nombre ??
                                                  ''),
                                      EtiquetaValorRecibo(
                                          etiqueta: 'Cuenta Destino',
                                          valor: provider
                                                  .beneficiario?.numeroCuenta ??
                                              ''),
                                      if (widget.tipoTransferencia ==
                                          TipoTransferencia.interbancaria) ...[
                                        EtiquetaValorRecibo(
                                            etiqueta: 'Institución',
                                            valor: provider.beneficiario
                                                    ?.institucion ??
                                                ''),
                                      ],
                                      if (provider.respuestaProceso !=
                                          null) ...[
                                        EtiquetaValorRecibo(
                                            etiqueta: 'Documento',
                                            valor: provider
                                                .respuestaProceso!.documento),
                                        EtiquetaValorRecibo(
                                            etiqueta: 'Fecha',
                                            valor: provider
                                                .respuestaProceso!.fecha),
                                      ]
                                    ]),
                                    const SizedBox(
                                      height: defaultPadding * 3,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ] else if (provider.esValidacion) ...[
                  Container(
                    height: 50,
                    decoration: const BoxDecoration(color: Colors.transparent),
                    child: Center(
                      child: SvgPicture.asset(R.svg.logo, height: 120),
                    ),
                  ),
                  const SizedBox(
                    height: defaultPadding,
                  ),
                  Text(
                    'Confirma los datos de la transferencia',
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
                              etiqueta: 'Valor',
                              valor: controller.monto.toMoney()),
                          EtiquetaValorRecibo(
                              etiqueta: 'Comisión', valor: 0.00.toMoney()),
                          EtiquetaValorRecibo(
                              etiqueta: 'Cuenta Origen',
                              valor: provider.cuenta?.codigo ?? ''),
                          EtiquetaValorRecibo(
                              etiqueta: 'Beneficiario',
                              valor: provider.beneficiario?.nombre ?? ''),
                          EtiquetaValorRecibo(
                              etiqueta: 'Cuenta Destino',
                              valor: provider.beneficiario?.numeroCuenta ?? ''),
                          if (widget.tipoTransferencia ==
                              TipoTransferencia.interbancaria) ...[
                            EtiquetaValorRecibo(
                                etiqueta: 'Institución',
                                valor:
                                    provider.beneficiario?.institucion ?? ''),
                          ]
                        ]),
                        const SizedBox(
                          height: defaultPadding * 2,
                        ),
                        const Divider(
                          height: 1,
                        ),
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
                              controller.confirmarOtpTransferencia(
                                  widget.tipoTransferencia, otp),
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
                      ],
                    ),
                  )
                ] else ...[
                  WrapperFormItem(
                    label: 'Ingresa el monto a transfererir',
                    child: ReactiveTextField(
                      formControlName: 'monto',
                      style: context.textTheme.displayLarge,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        DollarTextInputFormatter(),
                      ],
                      decoration: const InputDecoration(
                          hintText: '\$ 0.00',
                          isDense: true,
                          focusedBorder: InputBorder.none,
                          border: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none),
                    ),
                  ),
                  WrapperFormItem(
                    label: 'Desde:',
                    child: Card(
                      child: Container(
                        padding: const EdgeInsets.only(
                            top: defaultPadding,
                            left: defaultPadding / 1.2,
                            right: defaultPadding / 1.2,
                            bottom: defaultPadding),
                        child: Column(
                          children: [
                            SelectionCardWidget(
                              text: 'Seleccione una cuenta',
                              subTitle:
                                  'Cuenta desde la cual se realizará la transferencia',
                              isEmpty: provider.cuenta == null,
                              onTap: controller.seleccionarCuenta,
                              child: CuentaItemWidget(
                                cuenta: provider.cuenta,
                                flat: true,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  WrapperFormItem(
                    label: 'Para:',
                    child: Card(
                      child: Container(
                        padding: const EdgeInsets.only(
                            top: defaultPadding,
                            left: defaultPadding / 1.2,
                            right: defaultPadding / 1.2,
                            bottom: defaultPadding),
                        child: Column(
                          children: [
                            SelectionCardWidget(
                              text: 'Seleccione un beneficiario',
                              subTitle:
                                  'Beneficario que recibirá la transferencia',
                              isEmpty: provider.beneficiario == null,
                              onTap: () => controller.seleccionarBeneficiario(
                                  widget.tipoTransferencia),
                              child: BeneficiarioItemWidget(
                                beneficiario: provider.beneficiario,
                                muestraAvatar: false,
                                flat: true,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  WrapperFormItem(
                    label: 'Ingresa una descripción',
                    child: ReactiveTextField(
                      formControlName: 'descripcion',
                      style: context.textTheme.bodyMedium,
                      keyboardType: TextInputType.text,
                      textAlign: TextAlign.left,
                    ),
                  ),
                  WrapperFormItem(
                    label: 'Ingresa un correo de notificación',
                    child: ReactiveTextField(
                      formControlName: 'emailEnvio',
                      style: context.textTheme.bodyMedium,
                      keyboardType: TextInputType.text,
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
                if (provider.esComprobante) ...[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: controller.irInicio,
                          behavior: HitTestBehavior.translucent,
                          child: Card(
                            child: Container(
                              padding: const EdgeInsets.all(defaultPadding),
                              child: Column(
                                children: [
                                  Text(
                                    'Ir a Inicio',
                                    style: context.textTheme.bodyMedium!
                                        .copyWith(
                                            color:
                                                context.getTitlePrimaryColor()),
                                  ),
                                  Icon(
                                    Icons.home_outlined,
                                    color: context.getTitlePrimaryColor(),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: controller.tomarCaptura,
                          behavior: HitTestBehavior.translucent,
                          child: Card(
                            child: Container(
                              padding: const EdgeInsets.all(defaultPadding),
                              child: Column(
                                children: [
                                  Text(
                                    'Compartir',
                                    style: context.textTheme.bodyMedium!
                                        .copyWith(
                                            color:
                                                context.getTitlePrimaryColor()),
                                  ),
                                  Icon(
                                    Icons.share_outlined,
                                    color: context.getTitlePrimaryColor(),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ] else ...[
                  const SizedBox(
                    height: defaultPadding,
                  ),
                  ProcessButton(
                      text: 'CONTINUAR',
                      onPressed: () =>
                          controller.continuar(widget.tipoTransferencia)),
                  const SizedBox(
                    height: defaultPadding,
                  ),
                  ProcessButton(
                      text: 'CANCELAR',
                      isSecondary: true,
                      onPressed: () => controller.cancelar()),
                ]
              ],
            ),
          ),
        ),
      ),
    );
  }
}
