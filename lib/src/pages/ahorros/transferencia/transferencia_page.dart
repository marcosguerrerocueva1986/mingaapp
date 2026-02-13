import 'dart:async';

import 'package:bancamovilr/index.dart';
import 'package:bancamovilr/src/pages/ahorros/widgets/simple_item_widget.dart';
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
    this.beneficiario
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TransferenciaPageState();

  final TipoTransferencia tipoTransferencia;
  final CuentaModel? cuentaTransferenciaParametro;
  final BeneficiarioModel? beneficiario;
}

class _TransferenciaPageState extends ConsumerState<TransferenciaPage> {
  int _duracionInicialSegundos = 60;
  final int _maxSeconds = 60;
  int _secondsRemaining = 60;
  Timer? _timer;
  bool _showResendButton = false;
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
  void didChangeDependencies() {
    super.didChangeDependencies();
    final provider = ref.watch(transferenciaControllerProvider);
    if (provider.esValidacion && _timer == null) {
      startTimer();
    }
  }

@override
void didUpdateWidget(covariant TransferenciaPage oldWidget) {
super.didUpdateWidget(oldWidget);
final newProvider = ref.read(transferenciaControllerProvider);
if (newProvider.esValidacion && (_timer == null || !_timer!.isActive)) {
  startTimer();
} else if (!newProvider.esValidacion && _timer != null) {
  _timer?.cancel();
  _timer = null;
}
}

void startTimer() {
if (_timer != null) {
  _timer!.cancel();
}
_showResendButton = false;

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (!mounted) { 
          timer.cancel();
          return;
      }
      setState(() {
        if (_secondsRemaining <= 0) {
          timer.cancel();
          setState(() {
            _showResendButton = true;
            _secondsRemaining = 0; 
          });
        } else {
          setState(() {
            _secondsRemaining--;
          });
        }
      });
    });
  }

  String get timerText =>
      '${(_secondsRemaining ~/ 60).toString().padLeft(2, '0')}:${(_secondsRemaining % 60).toString().padLeft(2, '0')}';

  Future<void> _resendOtp() async {
    final controller = ref.read(transferenciaControllerProvider.notifier);
    final form = controller.form;
    final String? monto = form.control('monto').value as String?;
    if (monto == null || monto.isEmpty) {
      NotificationService.showWarning(text: 'Por favor, ingrese el monto antes de reenviar.');
      return;
    }
    await ref.read(transferenciaControllerProvider.notifier).reenviarCodigo(widget.tipoTransferencia, widget.beneficiario!);
    setState(() {
      _secondsRemaining = _duracionInicialSegundos; 
      _showResendButton = false;
    });
    startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    ref.listen(transferenciaControllerProvider, (previous, next) { 
      if (next.esValidacion && !(previous?.esValidacion ?? false)) {
        var minutosOtp = ref.watch(posicionConsolidadaControllerProvider);
        int minutos = minutosOtp.posicionConsolidada!.minutosDuracionOtp == 0 ? 1 : 3;
        int segundoTotales = minutos * 60;
        setState(() {
          _duracionInicialSegundos = segundoTotales;
          _secondsRemaining = segundoTotales;
          _showResendButton = false;
        });
        startTimer();
      }
    });
    var controller = ref.read(transferenciaControllerProvider.notifier);
    var provider = ref.watch(transferenciaControllerProvider);

    var loginProvider = ref.read(loginControllerProvider);
    var nombreCliente = loginProvider.loginRespuesta?.nombre ?? '';

    return ScaffoldBootstrap(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            context.router.pop();
          },
        ),
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
            child: Column(
               mainAxisSize: MainAxisSize.min,
              children: [
                if (provider.esComprobante) ...[
                  Text(
                    'Transferencia realizada',
                    textAlign: TextAlign.center,
                    style: context.textTheme.bodyMedium!.copyWith(
                        color: context.getTitlePrimaryColor(),
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
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
                                        child: SvgPicture.asset(
                                            Theme.of(context).brightness ==
                                                    Brightness.dark
                                                ? R.svg.logoBlack
                                                : R.svg.logo,
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
                                          valor: ((widget.tipoTransferencia ==
                                                      TipoTransferencia
                                                          .interbancaria)
                                                  ? (provider
                                                          .requisitosTransferencia
                                                          ?.comision ??
                                                      0.00)
                                                  : 0.00)
                                              .toMoney()),
                                      EtiquetaValorRecibo(
                                          etiqueta: 'Cuenta Origen',
                                          valor: provider.cuenta?.codigo ?? ''),
                                      EtiquetaValorRecibo(
                                          etiqueta: 'Beneficiario',
                                          valor:
                                              ('${provider.beneficiario?.apellido ?? ''} ${provider.beneficiario?.nombre ?? ''}')),
                                      EtiquetaValorRecibo(
                                          etiqueta: 'Cuenta Destino',
                                          valor: provider.beneficiario?.numeroCuenta ??
                                              ''),
                                      if (widget.tipoTransferencia ==
                                          TipoTransferencia.interbancaria) ...[
                                        EtiquetaValorRecibo(
                                            etiqueta: 'Institución',
                                            valor: provider.beneficiario?.institucion ??
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
                                        EtiquetaValorRecibo(
                                            etiqueta: 'Ordenante',
                                            valor: nombreCliente),
                                        EtiquetaValorRecibo(
                                            etiqueta: 'Concepto',
                                            valor: controller
                                                .obtenerDescipcionTransferencia()),
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
                      child: SvgPicture.asset(
                          Theme.of(context).brightness == Brightness.dark
                              ? R.svg.logoBlack
                              : R.svg.logo,
                          height: 120),
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
                            etiqueta: 'Comisión',
                            valor: ((widget.tipoTransferencia ==
                                        TipoTransferencia.interbancaria)
                                    ? (provider.requisitosTransferencia
                                            ?.comision ??
                                        0.00)
                                    : 0.00)
                                .toMoney()),
                        EtiquetaValorRecibo(
                            etiqueta: 'Cuenta Origen',
                            valor: provider.cuenta?.codigo ?? ''),
                        EtiquetaValorRecibo(
                            etiqueta: 'Beneficiario',
                            valor:
                                ('${provider.beneficiario?.nombre ?? ''} ${provider.beneficiario?.apellido ?? ''}')),
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
                      const SizedBox(height: defaultPadding * 1,),
                      const Divider(height: 1,),
                      const SizedBox(height: defaultPadding * 1,),
                      const Text(
                          "Ingrese el código temporal de seguridad que fue enviado a su correo y/o celular.",
                          textAlign: TextAlign.center),
                      const SizedBox(height: defaultPadding,),
                      Pinput(
                        key: const ValueKey('pinput_transferencia_confirmacion'),
                        //androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsUserConsentApi,
                        length: 6,
                        //defaultPinTheme: defaultPinTheme,
                        onCompleted: (String otp) {
                          if (_secondsRemaining > 0) {
                          controller.confirmarOtpTransferencia(widget.tipoTransferencia, otp);
                        } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('El tiempo ha expirado. Reenvíe el código.'),
                          ),
                        );
                      }
                      },     
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
                      const SizedBox(height: 32),
                      if (!_showResendButton)
                        SizedBox(
                          width: 100,
                          height: 100,
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              CircularProgressIndicator(
                                value: _secondsRemaining / _maxSeconds,
                                strokeWidth: 6,
                                backgroundColor: Colors.grey,
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  _secondsRemaining > _maxSeconds / 3
                                      ? const Color.fromRGBO(48, 155, 217, 1) 
                                      : Colors.red, 
                                ),
                              ),
                              Center(
                                child: Text(
                                  timerText,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      else
                        ProcessButton(
                              onPressed: controller.form.control('monto').valid
                              ? _resendOtp
                              : null,
                              text: 'Reenviar código temporal'.toUpperCase(),
                            ),
                          const SizedBox(height: 20),
                          ProcessButton(
                          key: const ValueKey('regresar_activacuenta_button'),
                          isSecondary: false,
                          onPressed: controller.cancelar,
                          text: 'Regresar'.toUpperCase(),
                        ),                       
                      ],
                    ),
                  )
                ] else ...[
                  WrapperFormItem(
                    label: 'Ingresa el monto a transferir',
                    child: ReactiveTextField(
                      formControlName: 'monto',
                      style: context.textTheme.displayLarge?.copyWith(
                        fontSize: 60, 
                        height: 1.0, 
                      ),
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
                          contentPadding: EdgeInsets.zero,
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
                      margin: EdgeInsets.zero,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: defaultPadding / 1.2,
                            vertical: defaultPadding / 50,
                        ),
                        child: Column(
                          children: [
                            SelectionCardWidget(
                              text: 'Seleccione una cuenta',
                              subTitle: 'Cuenta desde la cual se realizará la transferencia',
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
                      margin: EdgeInsets.zero,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: defaultPadding / 1.2,
                            vertical: defaultPadding / 50,
                        ),
                        child: Column(
                          children: [
                            SelectionCardWidget(
                              text: 'Seleccione un beneficiario',
                              subTitle:
                                  'Beneficario que recibirá la transferencia',
                              isEmpty: widget.beneficiario == null,
                              onTap: () => controller.seleccionarBeneficiario(widget.tipoTransferencia),
                              child: BeneficiarioItemWidget(
                                beneficiario: widget.beneficiario,
                                muestraAvatar: false,
                                flat: true,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),

                 if (widget.tipoTransferencia == TipoTransferencia.interbancaria) 
                  WrapperFormItem(
                    label: 'Selección Concepto:',
                    child: Card(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: defaultPadding / 1.2,
                            vertical: defaultPadding / 10,
                        ),
                        child: Column(
                          children: [
                            SelectionCardWidget(
                              text: 'Seleccione un Concepto',
                              subTitle:
                                  'Motivo de la transferencia',
                              isEmpty: provider.concepto == null,
                              onTap: controller.seleccionarConcepto,
                              child: SimpleItemWidget(
                                item: ComunItemModel(codigo: provider.concepto?.codigo??"", nombre: provider.concepto?.nombre??"" ),
                                flat: true,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                  else
                     const SizedBox(
                    height: defaultPadding,
                  ),
                  WrapperFormItem(
                    label: 'Ingresa una descripción',
                    child: ReactiveTextField(
                      formControlName: 'descripcion',
                      style: context.textTheme.bodyMedium?.copyWith(
                        fontSize: 15, 
                        height: 1.0, 
                      ),
                      keyboardType: TextInputType.text,
                      textAlign: TextAlign.left,
                    ),
                  ),
                  WrapperFormItem(
                    label: 'Ingresa un correo de notificación',
                    child: ReactiveTextField(
                      formControlName: 'emailEnvio',
                      style: context.textTheme.bodyMedium?.copyWith(
                        fontSize: 15, 
                        height: 1.0, 
                      ),
                      keyboardType: TextInputType.text,
                      textAlign: TextAlign.left,
                    ),
                  ), 
                  const SizedBox(
                    height: defaultPadding*1,
                  ),
                  ReactiveFormConsumer(builder: (context, form, child) {
                    return ProcessButton(
                        key: const ValueKey('continuartransferencia'),
                        text: 'CONTINUAR',
                        onPressed: form.valid
                            ? () =>
                                controller.continuar(widget.tipoTransferencia, widget.beneficiario!)
                            : null);
                  }),
                  const SizedBox(
                    height: defaultPadding,
                  ),
                  ProcessButton(
                    key: const ValueKey('regresar_activacuenta_button'),
                    isSecondary: false,
                    onPressed: controller.cancelar,
                    text: 'Regresar'.toUpperCase(),
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
                  ] 
              ],
            ),
          ),
        ),
      ),
    );
  }
}
