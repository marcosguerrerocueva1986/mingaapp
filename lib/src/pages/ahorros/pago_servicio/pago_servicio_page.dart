import 'package:bancamovilr/index.dart';
import 'package:pinput/pinput.dart';
import 'package:sks_ticket_view/sks_ticket_view.dart';

import 'package:widgets_to_image/widgets_to_image.dart';

@RoutePage()
class PagoServicioPage extends ConsumerStatefulWidget {
  const PagoServicioPage({
    super.key,
    this.cuentaTransferenciaParametro,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PagoServicioPageState();

  final CuentaModel? cuentaTransferenciaParametro;
}

class _PagoServicioPageState extends ConsumerState<PagoServicioPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(pagoServicioControllerProvider.notifier)
          .inicializa(widget.cuentaTransferenciaParametro);
    });
  }

  @override
  Widget build(BuildContext context) {
    var controller = ref.read(pagoServicioControllerProvider.notifier);
    var provider = ref.watch(pagoServicioControllerProvider);

    return ScaffoldBootstrap(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: context.theme.primaryColor,
        centerTitle: true,
        title: const Text(
          'Pago de Servicios',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: ReactiveForm(
          formGroup: controller.form,
          child: ListView(
            children: [
              if (provider.esComprobante) ...[
                Text(
                  'Pago realizado',
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
                    backgroundPadding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                    backgroundColor: context.theme.scaffoldBackgroundColor,
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 24, horizontal: 0),
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
                                    height: defaultPadding,
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
                                      'Comprobante Pago'.toUpperCase(),
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
                                    ...(provider.respuestaProceso?.datosRecibo
                                            .map((datoRecibo) {
                                          var index = datoRecibo.indexOf(':');

                                          return EtiquetaValorRecibo(
                                              etiqueta: index > 1
                                                  ? datoRecibo.substring(
                                                      0, index)
                                                  : datoRecibo,
                                              valor: index > 1
                                                  ? datoRecibo.substring(
                                                      index, datoRecibo.length)
                                                  : '');
                                        }).toList() ??
                                        []),
                                    // EtiquetaValorRecibo(
                                    //     etiqueta: 'Valor',
                                    //     valor: controller.monto.toMoney()),
                                    // EtiquetaValorRecibo(
                                    //     etiqueta: 'Cuenta Origen',
                                    //     valor: provider.cuenta?.codigo ?? ''),
                                    // EtiquetaValorRecibo(
                                    //     etiqueta: 'Servicio',
                                    //     valor: provider
                                    //             .servicioSeleccionado?.nombre ??
                                    //         ''),
                                    // EtiquetaValorRecibo(
                                    //     etiqueta: 'Referencia',
                                    //     valor: provider.respuestaConsulta
                                    //             ?.rubrosDetalle?.referencia ??
                                    //         ''),
                                    if (provider.respuestaProceso != null) ...[
                                      EtiquetaValorRecibo(
                                          etiqueta: 'Documento',
                                          valor: provider
                                              .respuestaProceso!.documento),
                                      EtiquetaValorRecibo(
                                          etiqueta: 'Fecha',
                                          valor:
                                              provider.respuestaProceso!.fecha),
                                    ]
                                  ]),
                                  const SizedBox(
                                    height: defaultPadding,
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
                  'Confirma los datos del pago',
                  textAlign: TextAlign.center,
                  style: context.textTheme.bodyMedium!.copyWith(
                      color: context.getTitlePrimaryColor(),
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  decoration: const BoxDecoration(
                      // color: Colors.white,
                      ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  child: Column(
                    children: <Widget>[
                      ...itemsParaConfirmacionRecibo([
                        EtiquetaValorRecibo(
                            etiqueta: 'Valor',
                            valor: controller.monto.toMoney()),
                        EtiquetaValorRecibo(
                            etiqueta: 'Cuenta Origen',
                            valor: provider.cuenta?.codigo ?? ''),
                        EtiquetaValorRecibo(
                            etiqueta: 'Servicio',
                            valor: provider.servicioSeleccionado?.nombre ?? ''),
                        EtiquetaValorRecibo(
                            etiqueta: 'Referencia',
                            valor: provider.respuestaConsulta?.rubrosDetalle
                                    ?.referencia ??
                                ''),
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
                        //androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsUserConsentApi,
                        length: 6,
                        // controller: controller,
                        // focusNode: focusNode,
                        defaultPinTheme: defaultPinTheme,
                        onCompleted: (String otp) =>
                            controller.procesarPagoServicio(otp),
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
                      ProcessButton(
                          text: 'CANCELAR',
                          isSecondary: true,
                          onPressed: () => controller.cancelar()),
                    ],
                  ),
                )
              ] else if (provider.esIngreso) ...[
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
                      'montoNegativo': (_) => 'El monto no puede ser negativo',
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
                            text: '',
                            subTitle: '',
                            isEmpty: false,
                            onTap: () {},
                            child: ServicioItemWidget(
                              servicio: provider.servicioSeleccionado,
                              showFavorito: false,
                              onTapFavorito: () {},
                              flat: true,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ] else
                (provider.servicioSeleccionado != null
                    ? (provider.respuestaConsulta != null
                        ? Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 10),
                            child: ListView(
                              shrinkWrap: true,
                              children: [
                                ...itemsParaConfirmacionRecibo([
                                  EtiquetaValorRecibo(
                                      etiqueta: 'Servicio',
                                      valor: provider
                                              .servicioSeleccionado?.nombre ??
                                          ''),
                                  EtiquetaValorRecibo(
                                      etiqueta: 'Referencia',
                                      valor: provider.respuestaConsulta
                                              ?.rubrosDetalle?.referencia ??
                                          ''),
                                ]),
                                const SizedBox(
                                  height: defaultPadding,
                                ),
                                ListView.separated(
                                  shrinkWrap: true,
                                  separatorBuilder: (context, index) =>
                                      const Divider(
                                    height: 2,
                                  ),
                                  itemBuilder: (context, index) {
                                    var rubro = provider.respuestaConsulta
                                        ?.rubrosDetalle?.listaRubros[index];

                                    return InkWell(
                                        onTap: () => controller
                                            .toggleSeleccionarRubro(rubro),
                                        child:
                                            RubroPagoSeleccion(rubro: rubro!));
                                  },
                                  itemCount: provider.respuestaConsulta
                                          ?.rubrosDetalle?.listaRubros.length ??
                                      0,
                                ),
                              ],
                            ),
                          )
                        : ListView(
                            shrinkWrap: true,
                            children: [
                              if (!provider
                                  .servicioSeleccionado!.esEspecial) ...[
                                SizedBox(
                                  child: Text(
                                    provider.servicioSeleccionado?.nombre ?? '',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                const SizedBox(
                                  height: defaultPadding,
                                ),
                                WrapperFormItem(
                                  label:
                                      provider.servicioSeleccionado?.etiqueta ??
                                          'Referencia',
                                  child: ReactiveTextField(
                                    formControlName: 'referencia',
                                    style: context.textTheme.bodyMedium,
                                    keyboardType: TextInputType.text,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ] else
                                ...generaCamposConsulta(provider
                                        .respuestaCamposConsulta
                                        ?.camposConsultaDetalle
                                        ?.camposConsulta ??
                                    [])
                            ],
                          ))
                    : Column(mainAxisSize: MainAxisSize.min, children: [
                        const InfoText(
                          text: 'Seleccione el servicio a pagar',
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: SearchBox(
                            onChanged: controller.filtrarServicios,
                          ),
                        ),
                        const SizedBox(
                          height: defaultPadding,
                        ),
                        ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          separatorBuilder: (context, index) =>
                              separadorListaItems,
                          itemBuilder: (context, index) {
                            var servicio = provider.servicios[index];

                            return GestureDetector(
                              onTap: () =>
                                  controller.seleccionarServicio(servicio),
                              behavior: HitTestBehavior.translucent,
                              child: ServicioItemWidget(
                                servicio: servicio,
                                onTapFavorito: () =>
                                    controller.toggleFavoritoServicio(servicio),
                              ),
                            );
                          },
                          itemCount: provider.servicios.length,
                        ),
                      ])),
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
                                  style: context.textTheme.bodyMedium!.copyWith(
                                      color: context.getTitlePrimaryColor()),
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
                                  style: context.textTheme.bodyMedium!.copyWith(
                                      color: context.getTitlePrimaryColor()),
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
              ] else if (!provider.esValidacion &&
                  provider.servicioSeleccionado != null) ...[
                const SizedBox(
                  height: defaultPadding,
                ),
                ReactiveFormConsumer(builder: (context, form, child) {
                  return ProcessButton(
                      text: 'CONTINUAR',
                      onPressed: () => controller.continuar());
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
        ),
      ),
    );
  }

  List<Widget> generaCamposConsulta(List<CampoConsulta> items) {
    var lista = <Widget>[];

    for (var elemento in items) {
      if (elemento.nombre != "PSI_NOMBRE_OPERADOR_IFI") {
        lista.add(etiqueta(elemento));
      }
      if ((elemento.tipoDato == "" ||
              elemento.tipoDato == "A" ||
              elemento.tipoDato == "N" ||
              elemento.tipoDato == "M" ||
              elemento.tipoDato == "C" ||
              elemento.tipoDato == "R") &&
          (elemento.catalogo.isEmpty) &&
          elemento.nombre != "PSI_NOMBRE_OPERADOR_IFI") {
        lista.add(entrada(elemento));
      } else if ((elemento.catalogo.isNotEmpty ||
              elemento.tipoDato == "A" ||
              elemento.tipoDato == "N" ||
              elemento.tipoDato == "M" ||
              elemento.tipoDato == "C") &&
          (elemento.catalogo.isNotEmpty) &&
          elemento.nombre != "PSI_NOMBRE_OPERADOR_IFI") {
        lista.add(opciones(elemento));
      }

      lista.add(const SizedBox(
        height: defaultPadding,
      ));
    }

    return lista;
  }

  Widget etiqueta(CampoConsulta camposConsulta) {
    return Text(
      (camposConsulta.etiqueta.isNotEmpty)
          ? camposConsulta.etiqueta
          : camposConsulta.nombre,
    );
  }

  Widget entrada(CampoConsulta camposConsulta) {
    return ReactiveTextField(
      formControlName: camposConsulta.nombre.toLowerCase(),
      style: context.textTheme.bodyMedium,
      keyboardType: TextInputType.text,
      textAlign: TextAlign.left,
    );
  }

  Widget opciones(CampoConsulta campos) {
    return ReactiveDropdownField(
        formControlName: campos.nombre.toLowerCase(),
        isDense: true,
        isExpanded: true,
        decoration: const InputDecoration(
          hintText: "Seleccione",
        ),
        items: campos.catalogo.map<DropdownMenuItem<String>>((Catalogo cat) {
          return DropdownMenuItem<String>(
            value: cat.valor,
            child: Text(
              cat.descripcion,
              overflow: TextOverflow.ellipsis,
            ),
          );
        }).toList());
  }
}

class RubroPagoSeleccion extends StatelessWidget {
  const RubroPagoSeleccion({
    Key? key,
    required this.rubro,
  }) : super(key: key);

  final RubroPagoExternoDetalle rubro;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          // color: Colors.white,
          border: Border(
        left: BorderSide(
          width: 3,
          color: rubro.seleccionado
              ? (Theme.of(context).brightness == Brightness.light
                  ? Theme.of(context).primaryColor
                  : Colors.grey)
              : (Theme.of(context).brightness == Brightness.light
                  ? Colors.transparent
                  : Colors.transparent),
        ),
      )),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(rubro.descripcion,
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.justify,
                    style: Theme.of(context).textTheme.bodySmall),
              ),
              const SizedBox(
                width: defaultPadding,
              ),
              SizedBox(
                child: Text(
                  rubro.valorConComision.toMoney(),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
