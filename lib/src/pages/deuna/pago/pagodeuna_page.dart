import 'package:bancamovilr/index.dart';
import 'package:bancamovilr/src/pages/deuna/pago/index.dart';
import 'package:flutter/services.dart';
import 'package:pinput/pinput.dart';
import 'package:sks_ticket_view/sks_ticket_view.dart';

import 'package:widgets_to_image/widgets_to_image.dart';

@RoutePage()
class PagoDeunaPage extends ConsumerStatefulWidget {
  const PagoDeunaPage({
    super.key,
    required this.codigoQr,
    this.cuentaTransferenciaParametro,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PagoDeunaPageState();

  final String codigoQr;
  final CuentaModel? cuentaTransferenciaParametro;
}

class _PagoDeunaPageState extends ConsumerState<PagoDeunaPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(pagoDeunaControllerProvider.notifier)
          .inicializa(widget.cuentaTransferenciaParametro, widget.codigoQr);
    });
  }

  @override
  Widget build(BuildContext context) {
    var controller = ref.read(pagoDeunaControllerProvider.notifier);
    var provider = ref.watch(pagoDeunaControllerProvider);

    var cuentaDestino = provider.infoCuentaVinculada?.account.name ?? '';

    return ScaffoldBootstrap(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: context.theme.primaryColor,
        centerTitle: true,
        title: Text(
          provider.esComprobante
              ? ''
              : (provider.esValidacion
                  ? 'Confirmemos tu pago'
                  : 'Ingresa un monto'),
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: Stack(
        children: [
          if (provider.esComprobante) ...[
            SizedBox(
                // height: 250,
                child: ReciboDeuna(
              key: UniqueKey(),
              controller: controller,
              cuentaDestino: cuentaDestino,
              provider: provider,
              usarCaptura: true,
            )),
            Positioned.fill(
              child: Container(
                color: Theme.of(context).scaffoldBackgroundColor,
                height: MediaQuery.of(context).size.height -
                    MediaQuery.of(context).padding.top,
                width: double.infinity,
              ),
            ),
          ],
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: ReactiveForm(
              formGroup: controller.form,
              child: SingleChildScrollView(
                child: Stack(
                  children: [
                    ListView(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.start,
                      // mainAxisSize: MainAxisSize.min,
                      shrinkWrap: true,
                      children: [
                        if (provider.esComprobante) ...[
                          Stack(
                            children: [
                              SizedBox(
                                  // height: 250,
                                  child: ReciboDeuna(
                                key: UniqueKey(),
                                controller: controller,
                                cuentaDestino: cuentaDestino,
                                provider: provider,
                                usarCaptura: false,
                              )),
                            ],
                          )
                        ] else if (provider.esValidacion) ...[
                          Container(
                            height: 50,
                            decoration:
                                const BoxDecoration(color: Colors.transparent),
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
                            height: defaultPadding * 2,
                          ),
                          // Text(
                          //   'Confirma los datos de la transferencia',
                          //   textAlign: TextAlign.center,
                          //   style: context.textTheme.bodyMedium!.copyWith(
                          //       color: context.getTitlePrimaryColor(),
                          //       fontWeight: FontWeight.bold),
                          // ),
                          Container(
                            decoration: const BoxDecoration(
                                // color: Colors.white,
                                ),
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 10),
                            child: Column(
                              children: <Widget>[
                                ...itemsParaConfirmacionReciboDeUna(context, [
                                  EtiquetaValorRecibo(
                                      icon: (provider.infoCuentaVinculada
                                                  ?.account.isMerchant ??
                                              false)
                                          ? Icons.storefront_outlined
                                          : Icons.person_outline,
                                      etiqueta: 'Cuenta destino',
                                      valor: cuentaDestino),
                                  EtiquetaValorRecibo(
                                      icon: Icons.monetization_on_outlined,
                                      etiqueta: 'Monto',
                                      valor: controller.monto.toMoney()),
                                  EtiquetaValorRecibo(
                                      icon: Icons.wallet_membership_outlined,
                                      etiqueta: 'Motivo',
                                      valor:
                                          controller.obtenerDescipcionPago()),
                                  EtiquetaValorRecibo(
                                      icon: Icons.wallet_outlined,
                                      etiqueta: 'Cuenta Origen',
                                      valor: provider.cuenta?.codigo ?? ''),
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
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Total del pago",
                                        textAlign: TextAlign.start,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                                color: context
                                                    .getTitlePrimaryColor(),
                                                fontWeight: FontWeight.bold)),
                                    Text(controller.monto.toMoney(),
                                        textAlign: TextAlign.end,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                                color: context
                                                    .getTitlePrimaryColor(),
                                                fontWeight: FontWeight.bold)),
                                  ],
                                ),
                                const SizedBox(
                                  height: defaultPadding,
                                ),
                              ],
                            ),
                          )
                        ] else ...[
                          WrapperFormItem(
                            label: 'Ingresa el valor a pagar',
                            child: ReactiveTextField(
                              formControlName: 'monto',
                              style: context.textTheme.displayLarge,
                              readOnly: provider.montoSoloLectura,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              // controller: controller.textEditingControllerInternal,
                              // onTap: (_) {
                              //   controller.textEditingControllerInternal.selection =
                              //       TextSelection(
                              //           baseOffset: 0,
                              //           extentOffset: controller
                              //               .textEditingControllerInternal.text.length);
                              // },
                              inputFormatters: [
                                DollarTextInputFormatter(),
                              ],
                              validationMessages: {
                                ValidationMessage.required: (_) =>
                                    'Este campo es obligatorio',
                                'montoCero': (_) =>
                                    'El monto debe ser mayor que \$0',
                                'montoNegativo': (_) =>
                                    'El monto no puede ser negativo',
                                'formatoInvalido': (_) =>
                                    'El formato del monto es inválido',
                                'saldoInsuficiente': (_) =>
                                    'El monto no puede ser mayor que el saldo de la cuenta',
                                'montoMayorDisponible': (_) =>
                                    'El monto no puede ser mayor que \$500',
                              },
                              decoration: const InputDecoration(
                                hintText: '\$ 0.00',
                                isDense: true,
                                focusedBorder: InputBorder.none,
                                border: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                focusedErrorBorder: InputBorder.none,
                              ),
                            ),
                          ),
                          WrapperFormItem(
                            label: 'Cuenta de origen:',
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
                            label: 'Cuenta de destino:',
                            child: Card(
                              child: Container(
                                padding: const EdgeInsets.only(
                                    top: 0,
                                    left: defaultPadding / 1.2,
                                    right: defaultPadding / 1.2,
                                    bottom: 0),
                                child: Row(
                                  children: [
                                    Container(
                                        padding: const EdgeInsets.only(
                                            top: defaultPadding,
                                            left: defaultPadding / 1.2,
                                            right: defaultPadding / 1.2,
                                            bottom: defaultPadding),
                                        child: Text(cuentaDestino))
                                  ],
                                ),
                              ),
                            ),
                          ),
                          WrapperFormItem(
                            label: 'Motivo',
                            child: ReactiveTextField(
                              formControlName: 'descripcion',
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
                                      padding:
                                          const EdgeInsets.all(defaultPadding),
                                      child: Column(
                                        children: [
                                          Text(
                                            'Ir a Inicio',
                                            style: context.textTheme.bodyMedium!
                                                .copyWith(
                                                    color: context
                                                        .getTitlePrimaryColor()),
                                          ),
                                          Icon(
                                            Icons.home_outlined,
                                            color:
                                                context.getTitlePrimaryColor(),
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
                                      padding:
                                          const EdgeInsets.all(defaultPadding),
                                      child: Column(
                                        children: [
                                          Text(
                                            'Compartir',
                                            style: context.textTheme.bodyMedium!
                                                .copyWith(
                                                    color: context
                                                        .getTitlePrimaryColor()),
                                          ),
                                          Icon(
                                            Icons.share_outlined,
                                            color:
                                                context.getTitlePrimaryColor(),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: defaultPadding * 1.5,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text('Con la tecnología de'),
                                    Image.asset(
                                      Theme.of(context).brightness ==
                                              Brightness.dark
                                          ? R.images.logoDeunaBlanco
                                          : R.images.logoDeunaMorado,
                                      height: 16,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ] else ...[
                          const SizedBox(
                            height: defaultPadding,
                          ),
                          ReactiveFormConsumer(builder: (context, form, child) {
                            return ProcessButton(
                                text: !provider.esValidacion
                                    ? 'CONTINUAR'
                                    : 'PAGAR',
                                onPressed: form.valid
                                    ? () {
                                        if (!provider.esValidacion) {
                                          controller.validaPagoDeuna();
                                        } else {
                                          controller.pagar();
                                        }
                                      }
                                    : null);
                          }),
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
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ReciboDeuna extends StatelessWidget {
  const ReciboDeuna({
    super.key,
    required this.controller,
    required this.provider,
    required this.cuentaDestino,
    this.usarCaptura = true,
  });

  final PagoDeunaController controller;
  final PagoDeunaState provider;
  final String cuentaDestino;
  final bool usarCaptura;

  @override
  Widget build(BuildContext context) {
    final contenido = Container(
      color: context.theme.scaffoldBackgroundColor,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            opacity: 0.15,
            image: AssetImage(R.images.marcaagua),
            fit: BoxFit.none,
            repeat: ImageRepeat.repeat,
          ),
        ),
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: defaultPadding),
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
            SizedBox(
              width: double.infinity,
              child: Text(
                'Pago exitoso'.toUpperCase(),
                textAlign: TextAlign.center,
                style: context.textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: defaultPadding),
            ...itemsParaConfirmacionRecibo([
              EtiquetaValorRecibo(
                  etiqueta: 'Monto', valor: controller.monto.toMoney()),
              EtiquetaValorRecibo(
                  etiqueta: 'Cuenta Origen',
                  valor: provider.cuenta?.codigo ?? ''),
              EtiquetaValorRecibo(
                  etiqueta: 'Motivo',
                  valor: controller.obtenerDescipcionPago()),
              if (provider.respuestaProceso != null) ...[
                EtiquetaValorRecibo(
                    etiqueta: 'Fecha', valor: provider.respuestaProceso!.fecha),
                EtiquetaValorRecibo(
                    etiqueta: 'Nro. de Transacción',
                    valor: provider.respuestaProceso!.documento),
              ],
            ]),
            const Text('Comercio:',
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: defaultPadding / 2),
            Card(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding / 1.2,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(defaultPadding),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              (provider.infoCuentaVinculada?.account
                                          .isMerchant ??
                                      false)
                                  ? Icons.storefront_outlined
                                  : Icons.person_outline,
                            ),
                            const SizedBox(width: defaultPadding),
                            Flexible(
                              child: Text(
                                cuentaDestino,
                                textAlign: TextAlign.justify,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 3,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (usarCaptura) ...[
              const SizedBox(height: defaultPadding * 2),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text('Con la tecnología de'),
                        Image.asset(
                          Theme.of(context).brightness == Brightness.dark
                              ? R.images.logoDeunaBlanco
                              : R.images.logoDeunaMorado,
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: defaultPadding),
            ] else ...[
              const SizedBox(height: defaultPadding),
            ]
          ],
        ),
      ),
    );

    return SKSTicketView(
      backgroundPadding:
          const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
      backgroundColor: context.theme.scaffoldBackgroundColor,
      contentPadding: const EdgeInsets.symmetric(vertical: 24, horizontal: 0),
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
      contentBackgroundColor: context.theme.scaffoldBackgroundColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          usarCaptura
              ? WidgetsToImage(
                  controller: controller.controller,
                  child: contenido,
                )
              : contenido,
        ],
      ),
    );
  }
}
