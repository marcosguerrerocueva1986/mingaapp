import 'package:bancamovilr/index.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:sks_ticket_view/sks_ticket_view.dart';
import 'package:widgets_to_image/widgets_to_image.dart';

@RoutePage()
class AbonoPage extends ConsumerStatefulWidget {
  const AbonoPage({super.key, this.prestamoParametro});

  @override
  ConsumerState<AbonoPage> createState() => _AbonoPageState();

  final PrestamoModel? prestamoParametro;
}

class _AbonoPageState extends ConsumerState<AbonoPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(abonoControllerProvider.notifier)
          .inicializa(widget.prestamoParametro);
    });
  }

  @override
  Widget build(BuildContext context) {
    var controller = ref.read(abonoControllerProvider.notifier);
    var provider = ref.watch(abonoControllerProvider);

    final customPinTheme = PinTheme(
      shape: PinCodeFieldShape.box,
      borderRadius: BorderRadius.circular(8),
      fieldHeight: 55,
      fieldWidth: 45,
      borderWidth: 1,
      inactiveColor: const Color.fromRGBO(30, 60, 87, 1).withOpacity(0.5),
      inactiveFillColor: Colors.white,
      selectedColor: const Color.fromRGBO(30, 60, 87, 1),
      selectedFillColor: Colors.white,
      activeColor: const Color.fromRGBO(30, 60, 87, 1),
      activeFillColor: Colors.white,
      errorBorderColor: Colors.redAccent,
    );

    return ScaffoldBootstrap(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: context.theme.primaryColor,
        centerTitle: true,
        title: const Text(
          'Abono Préstamo',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: ReactiveForm(
          formGroup: controller.form,
          child: SingleChildScrollView(
            child: Column(
              children: [
                if (provider.esComprobante) ...[
                  Text(
                    'Abono Realizado',
                    textAlign: TextAlign.center,
                    style: context.textTheme.bodyMedium!.copyWith(
                        color: context.getTitlePrimaryColor(),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
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
                                    const SizedBox(height: defaultPadding * 3),
                                    Container(
                                      height: 50,
                                      decoration: const BoxDecoration(
                                          color: Colors.transparent),
                                      child: Center(
                                        child: SvgPicture.asset(
                                            Theme.of(context).brightness ==
                                                    Brightness.dark
                                                ? R.svg.logoBlack
                                                : R.svg.logo,
                                            height: 120),
                                      ),
                                    ),
                                    const SizedBox(height: defaultPadding),
                                    SizedBox(
                                      width: double.infinity,
                                      child: Text(
                                        'Comprobante Abono'.toUpperCase(),
                                        textAlign: TextAlign.center,
                                        style: context.textTheme.bodyMedium!
                                            .copyWith(
                                                fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    const SizedBox(height: defaultPadding),
                                    ...itemsParaConfirmacionRecibo([
                                      EtiquetaValorRecibo(
                                          etiqueta: 'Valor',
                                          valor: controller.monto.toMoney()),
                                      EtiquetaValorRecibo(
                                          etiqueta: 'Cuenta Débito',
                                          valor: provider.cuenta?.codigo ?? ''),
                                      EtiquetaValorRecibo(
                                          etiqueta: 'Préstamo',
                                          valor:
                                              provider.prestamo?.codigo ?? ''),
                                      EtiquetaValorRecibo(
                                          etiqueta: 'Tipo Préstamo',
                                          valor: provider.prestamo?.tipo ?? ''),
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
                                    const SizedBox(height: defaultPadding * 3),
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
                      child: SvgPicture.asset(
                          Theme.of(context).brightness == Brightness.dark
                              ? R.svg.logoBlack
                              : R.svg.logo,
                          height: 120),
                    ),
                  ),
                  const SizedBox(height: defaultPadding),
                  Text(
                    'Confirma los datos del abono',
                    textAlign: TextAlign.center,
                    style: context.textTheme.bodyMedium!.copyWith(
                        color: context.getTitlePrimaryColor(),
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 10),
                    child: Column(
                      children: <Widget>[
                        ...itemsParaConfirmacionRecibo([
                          EtiquetaValorRecibo(
                              etiqueta: 'Valor',
                              valor: controller.monto.toMoney()),
                          EtiquetaValorRecibo(
                              etiqueta: 'Cuenta Débito',
                              valor: provider.cuenta?.codigo ?? ''),
                          EtiquetaValorRecibo(
                              etiqueta: 'Préstamo',
                              valor: provider.prestamo?.codigo ?? ''),
                          EtiquetaValorRecibo(
                              etiqueta: 'Tipo Préstamo',
                              valor: provider.prestamo?.tipo ?? ''),
                        ]),
                        const SizedBox(height: defaultPadding * 2),
                        const Divider(height: 1),
                        const SizedBox(height: defaultPadding * 2),
                        const Text(
                            "Ingrese el código temporal de seguridad que fue enviado a su correo y/o celular.",
                            textAlign: TextAlign.center),
                        const SizedBox(height: defaultPadding),
                        PinCodeTextField(
                          key: const ValueKey('pinput_abono_otp'),
                          appContext: context,
                          length: 6,
                          animationType: AnimationType.fade,
                          obscureText: true,
                          obscuringCharacter: '●',
                          blinkWhenObscuring: true,
                          pinTheme: customPinTheme,
                          autoFocus: false,
                          showCursor: false,
                          readOnly: false, 
                          beforeTextPaste: (text) => true, 
                          textStyle: const TextStyle(fontSize: 22, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.bold),
                          enableActiveFill: true,
                          keyboardType: TextInputType.number,
                          onCompleted: (pin) => controller.confirmarOtpTransferencia(pin),
                          onChanged: (value) {},
                        ),
                      ],
                    ),
                  )
                ] else ...[
                  WrapperFormItem(
                    label: 'Ingresa el monto a transferir',
                    child: ReactiveTextField(
                      formControlName: 'monto',
                      style: context.textTheme.displayLarge,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        DollarTextInputFormatter(),
                      ],
                      validationMessages: {
                        ValidationMessage.required: (_) =>
                            'Este campo es obligatorio',
                        'montoCero': (_) => 'El monto debe ser mayor que \$0',
                        'montoNegativo': (_) =>
                            'El monto no puede ser negativo',
                        'formatoInvalido': (_) =>
                            'El formato del monto es inválido',
                        'saldoInsuficiente': (_) =>
                            'El monto no puede ser mayor que el saldo de la cuenta',
                      },
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
                                  'Cuenta desde la cual se realizará el abono',
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
                              text: 'Seleccione un préstamo',
                              subTitle: 'Préstamo al que se realizará el abono',
                              isEmpty: provider.prestamo == null,
                              onTap: controller.seleccionarPrestamo,
                              child: PrestamoItemWidget(
                                prestamo: provider.prestamo,
                                flat: true,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
                const SizedBox(height: defaultPadding),
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
                  ProcessButton(
                      text: 'CONTINUAR',
                      onPressed: () => controller.continuar()),
                ]
              ],
            ),
          ),
        ),
      ),
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
            const SizedBox(width: defaultPadding),
            Flexible(
              child: Text(item.valor,
                  overflow: TextOverflow.ellipsis, textAlign: TextAlign.right),
            ),
          ],
        ),
      );

      lista.add(const SizedBox(height: defaultPadding));
    }

    return lista;
  }
}