import 'package:bancamovilr/index.dart';
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
                SKSTicketView(
                  backgroundPadding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                  backgroundColor: context.theme.scaffoldBackgroundColor,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 24, horizontal: 0),
                  drawTriangle: false,
                  borderRadius: 6,
                  contentBackgroundColor:
                      context.theme.scaffoldBackgroundColor,
                  child: WidgetsToImage(
                    controller: controller.controller,
                    child: Container(
                      color: context.theme.scaffoldBackgroundColor,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          opacity: 0.15,
                          image: AssetImage(R.images.marcaagua),
                          repeat: ImageRepeat.repeat
                        )
                      ),
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: SvgPicture.asset(
                                Theme.of(context).brightness == Brightness.dark
                                    ? R.svg.logoBlack
                                    : R.svg.logo,
                                height: 80),
                          ),
                          const SizedBox(height: defaultPadding),
                          SizedBox(
                            width: double.infinity,
                            child: Text(
                              'Comprobante de Pago'.toUpperCase(),
                              textAlign: TextAlign.center,
                              style: context.textTheme.bodyMedium!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(height: defaultPadding),
                          ...itemsParaConfirmacionRecibo([
                            ...(provider.respuestaProceso?.datosRecibo.map((datoRecibo) {
                              var index = datoRecibo.indexOf(':');
                              return EtiquetaValorRecibo(
                                  etiqueta: index > 1 ? datoRecibo.substring(0, index) : datoRecibo,
                                  valor: index > 1 ? datoRecibo.substring(index + 1).trim() : '');
                            }).toList() ?? []),
                            if (provider.respuestaProceso != null) ...[
                              EtiquetaValorRecibo(
                                  etiqueta: 'Documento',
                                  valor: provider.respuestaProceso!.documento),
                              EtiquetaValorRecibo(
                                  etiqueta: 'Fecha',
                                  valor: provider.respuestaProceso!.fecha),
                            ]
                          ]),
                        ],
                      ),
                    ),
                  ),
                )
              ] else if (provider.esValidacion) ...[
                const SizedBox(height: defaultPadding),
                Text(
                  'Confirma los datos del pago',
                  textAlign: TextAlign.center,
                  style: context.textTheme.bodyMedium!.copyWith(
                      color: context.getTitlePrimaryColor(),
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: defaultPadding),
                ...itemsParaConfirmacionRecibo([
                  EtiquetaValorRecibo(etiqueta: 'Valor', valor: controller.monto.toMoney()),
                  EtiquetaValorRecibo(etiqueta: 'Cuenta Origen', valor: provider.cuenta?.codigo ?? ''),
                  EtiquetaValorRecibo(etiqueta: 'Servicio', valor: provider.servicioSeleccionado?.nombre ?? ''),
                  EtiquetaValorRecibo(
                      etiqueta: 'Referencia',
                      valor: provider.respuestaConsulta?.rubrosDetalle?.referencia ?? ''),
                ]),
                const Divider(),
                const Text(
                    "Ingrese el código temporal de seguridad enviado.",
                    textAlign: TextAlign.center),
                const SizedBox(height: defaultPadding),
                // Reemplazo de Pinput por un campo reactivo estándar
                WrapperFormItem(
                  label: 'Código de Seguridad',
                  child: ReactiveTextField(
                    formControlName: 'otp',
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    obscureText: true,
                    style: const TextStyle(letterSpacing: 10, fontSize: 24, fontWeight: FontWeight.bold),
                    decoration: const InputDecoration(
                      hintText: '******',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (control) {
                      if (control.value?.toString().length == 6) {
                        controller.procesarPagoServicio(control.value.toString());
                      }
                    },
                  ),
                ),
                const SizedBox(height: defaultPadding * 2),
                ProcessButton(text: 'REGRESAR', isSecondary: true, onPressed: controller.cancelar),
              ] else if (provider.esIngreso) ...[
                WrapperFormItem(
                  label: 'Monto a pagar',
                  child: ReactiveTextField(
                    formControlName: 'monto',
                    style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [DollarTextInputFormatter()],
                    decoration: const InputDecoration(hintText: '\$ 0.00', border: InputBorder.none),
                  ),
                ),
                const SizedBox(height: defaultPadding),
                SelectionCardWidget(
                  text: 'Cuenta de Origen',
                  subTitle: provider.cuenta != null ? 'Débito de ${provider.cuenta!.codigo}' : 'Seleccione la cuenta para el débito',
                  isEmpty: provider.cuenta == null,
                  onTap: controller.seleccionarCuenta,
                  child: CuentaItemWidget(cuenta: provider.cuenta, flat: true),
                ),
                const SizedBox(height: defaultPadding),
                SelectionCardWidget(
                  text: 'Servicio a Pagar',
                  subTitle: provider.servicioSeleccionado?.nombre ?? 'Detalle del servicio',
                  isEmpty: provider.servicioSeleccionado == null,
                  onTap: () {}, 
                  child: ServicioItemWidget(
                    servicio: provider.servicioSeleccionado,
                    showFavorito: false,
                    onTapFavorito: () {},
                    flat: true,
                  ),
                ),
              ] else ...[
                if (provider.servicioSeleccionado != null) ...[
                   if (provider.respuestaConsulta != null) ...[
                      ...itemsParaConfirmacionRecibo([
                        EtiquetaValorRecibo(etiqueta: 'Servicio', valor: provider.servicioSeleccionado?.nombre ?? ''),
                        EtiquetaValorRecibo(etiqueta: 'Referencia', valor: provider.respuestaConsulta?.rubrosDetalle?.referencia ?? ''),
                      ]),
                      const Divider(),
                      ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        separatorBuilder: (context, index) => const Divider(),
                        itemCount: provider.respuestaConsulta?.rubrosDetalle?.listaRubros.length ?? 0,
                        itemBuilder: (context, index) {
                          var rubro = provider.respuestaConsulta?.rubrosDetalle?.listaRubros[index];
                          return InkWell(
                            onTap: () => controller.toggleSeleccionarRubro(rubro!),
                            child: RubroPagoSeleccion(rubro: rubro!)
                          );
                        },
                      ),
                   ] else ...[
                      if (!provider.servicioSeleccionado!.esEspecial) ...[
                        WrapperFormItem(
                          label: provider.servicioSeleccionado?.etiqueta ?? 'Referencia',
                          child: ReactiveTextField(
                            formControlName: 'referencia',
                            decoration: const InputDecoration(hintText: 'Ingrese el dato solicitado'),
                          ),
                        ),
                      ] else ...[
                        ...generaCamposConsulta(provider.respuestaCamposConsulta?.camposConsultaDetalle?.camposConsulta ?? [])
                      ]
                   ]
                ] else ...[
                  const InfoText(text: 'Seleccione el servicio que desea pagar'),
                  SearchBox(onChanged: controller.filtrarServicios),
                  const SizedBox(height: defaultPadding),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    separatorBuilder: (context, index) => const Divider(),
                    itemCount: provider.servicios.length,
                    itemBuilder: (context, index) {
                      var servicio = provider.servicios[index];
                      return ListTile(
                        title: Text(servicio.nombre),
                        leading: const Icon(Icons.receipt_long),
                        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                        onTap: () => controller.seleccionarServicio(servicio),
                      );
                    },
                  ),
                ]
              ],
              
              if (provider.esComprobante) ...[
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(child: ProcessButton(text: 'INICIO', isSecondary: true, onPressed: controller.irInicio)),
                    const SizedBox(width: 10),
                    Expanded(child: ProcessButton(text: 'COMPARTIR', onPressed: controller.tomarCaptura)),
                  ],
                )
              ] else if (!provider.esValidacion && provider.servicioSeleccionado != null) ...[
                const SizedBox(height: 20),
                ProcessButton(text: 'CONTINUAR', onPressed: () => controller.continuar()),
                const SizedBox(height: 10),
                ProcessButton(text: 'CANCELAR', isSecondary: true, onPressed: () => controller.cancelar()),
              ]
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> itemsParaConfirmacionRecibo(List<EtiquetaValorRecibo> listaDetalle) {
    return listaDetalle.map((item) => Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('${item.etiqueta}:', style: const TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(width: 10),
              Flexible(child: Text(item.valor, textAlign: TextAlign.right)),
            ],
          ),
          const SizedBox(height: 4),
        ],
      ),
    )).toList();
  }

  List<Widget> generaCamposConsulta(List<CampoConsulta> items) {
    return items.where((e) => e.nombre != "PSI_NOMBRE_OPERADOR_IFI").map((elemento) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(elemento.etiqueta.isNotEmpty ? elemento.etiqueta : elemento.nombre, 
               style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          if (elemento.catalogo.isEmpty)
            ReactiveTextField(
              formControlName: elemento.nombre.toLowerCase(),
              decoration: const InputDecoration(border: OutlineInputBorder()),
            )
          else
            ReactiveDropdownField(
              formControlName: elemento.nombre.toLowerCase(),
              decoration: const InputDecoration(border: OutlineInputBorder()),
              items: elemento.catalogo.map((cat) => DropdownMenuItem(value: cat.valor, child: Text(cat.descripcion))).toList(),
            ),
          const SizedBox(height: defaultPadding),
        ],
      );
    }).toList();
  }
}

class RubroPagoSeleccion extends StatelessWidget {
  const RubroPagoSeleccion({Key? key, required this.rubro}) : super(key: key);
  final RubroPagoExternoDetalle rubro;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: rubro.seleccionado ? context.theme.primaryColor.withOpacity(0.05) : null,
        border: Border(left: BorderSide(width: 4, color: rubro.seleccionado ? context.theme.primaryColor : Colors.transparent))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: Text(rubro.descripcion)),
          const SizedBox(width: 8),
          Text(rubro.valorConComision.toMoney(), style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}