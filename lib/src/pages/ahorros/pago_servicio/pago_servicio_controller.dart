import 'package:bancamovilr/index.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:widgets_to_image/widgets_to_image.dart';

part 'pago_servicio_controller.g.dart';

@riverpod
class PagoServicioController extends _$PagoServicioController {
  final form = fb.group({
    'monto': ['0.00', MontoPersonalizadoValidator(0.00)],
    'referencia': ['', Validators.required],
  });

  double monto = 0.00;
  WidgetsToImageController controller = WidgetsToImageController();
  List<ServicioModel> _todosLosServicios = [];

  @override
  PagoServicioState build() {
    return PagoServicioState();
  }

  Future inicializa(CuentaModel? primerCuenta) async {
    primerCuenta ??= ref
        .read(posicionConsolidadaControllerProvider)
        .posicionConsolidada
        ?.cuentas
        .firstOrNull;

    var client = HttpClientHelper.getClient();
    var respuesta = await guard(() async =>
        await client.consultaRequisitosPagoServicios(BaseRequerimiento()));

    if (respuesta.hasValue) {
      final idsFavoritos = sharedPreferences.serviciosFavoritos;
      final servicios = (respuesta.value?.servicios ?? []).map((s) {
        return s.copyWith(esFavorito: idsFavoritos.contains(s.id));
      }).toList();

      _todosLosServicios = servicios;
      final ordenados = _ordenarServicios(servicios);

      state = state.copyWith(
        cuenta: primerCuenta,
        requisitos: respuesta.value,
        servicios: ordenados,
      );
    }
  }

  void toggleFavoritoServicio(ServicioModel servicio) {
    final actualizado = servicio.copyWith(esFavorito: !servicio.esFavorito);

    final favoritos = sharedPreferences.serviciosFavoritos;

    if (actualizado.esFavorito) {
      favoritos.add(actualizado.id);
    } else {
      favoritos.remove(actualizado.id);
    }

    sharedPreferences.serviciosFavoritos = favoritos;

    _todosLosServicios = _todosLosServicios.map((s) {
      return s.id == servicio.id ? actualizado : s;
    }).toList();

    _actualizarListaServiciosOrdenada();
  }

  void filtrarServicios(String texto) {
    EasyDebounce.debounce('filter-service', const Duration(milliseconds: 500),
        () => _procesarFiltroServicios(texto));
  }

  void _procesarFiltroServicios(String texto) {
    final filtro = texto.toLowerCase();
    final filtrados = _todosLosServicios
        .where((s) => s.nombre.toLowerCase().contains(filtro))
        .toList();

    state = state.copyWith(servicios: _ordenarServicios(filtrados));
  }

  void _actualizarListaServiciosOrdenada() {
    state = state.copyWith(servicios: _ordenarServicios(_todosLosServicios));
  }

  List<ServicioModel> _ordenarServicios(List<ServicioModel> lista) {
    final copia = [...lista];
    copia.sort((a, b) {
      if (a.esFavorito != b.esFavorito) {
        return b.esFavorito ? 1 : -1;
      }
      return a.nombre.toLowerCase().compareTo(b.nombre.toLowerCase());
    });
    return copia;
  }

  void toggleSeleccionarRubro(RubroPagoExternoDetalle rubro) {
    var actualizado = rubro.copyWith(seleccionado: !rubro.seleccionado);
    final listaActualizada =
        (state.respuestaConsulta?.rubrosDetalle?.listaRubros ?? [])
            .map((s) => s.idRubro == rubro.idRubro ? actualizado : s)
            .toList();

    final nuevoRubrosDetalle = state.respuestaConsulta?.rubrosDetalle
        ?.copyWith(listaRubros: listaActualizada);
    final nuevaRespuestaConsulta =
        state.respuestaConsulta!.copyWith(rubrosDetalle: nuevoRubrosDetalle);

    state = state.copyWith(respuestaConsulta: nuevaRespuestaConsulta);
  }

  Future seleccionarCuenta() async {
    // Implementar lógica si es necesario
  }

  Future seleccionarServicio(ServicioModel servicio) async {
    state = state.copyWith(servicioSeleccionado: servicio);
  }

  Future consultar() async {
    if (!state.esValidacion) {
      var referencia = form.value['referencia'].toString();
      var client = HttpClientHelper.getClient();
      var respuesta = await guard(() async =>
          await client.consultaRubrosPagoServicio(
              ConsultaValoresServiciosBasicosRequerimiento(
                  idProducto: state.servicioSeleccionado!.id,
                  referencia: referencia)));

      if (respuesta.hasValue) {
        state = state.copyWith(respuestaConsulta: respuesta.value);
      }
    }
  }

  Future irPantallaIngreso() async {
    if (!state.esValidacion) {
      var valorPredefinido = state.respuestaConsulta?.rubrosDetalle?.listaRubros
          .where((element) => element.seleccionado)
          .map((e) => e.valorPago)
          .toList()
          .sum();

      form.patchValue({'monto': '\$ $valorPredefinido'});

      if (!((state.respuestaConsulta?.rubrosDetalle?.permiteAbono) ?? false)) {
        form.control('monto').markAsDisabled();
      }

      state = state.copyWith(esIngreso: true);
    }
  }

  Future procesarPagoServicio(String otp) async {
    if (state.esValidacion) {
      var client = HttpClientHelper.getClient();

      var respuesta = await guard(() async =>
          await client.procesaTransaccionPagoServicios(
              ProcesaPagoServiciosBasicosRequerimiento(
                  guidConsulta: state.respuestaConsulta?.guidConsulta ?? '',
                  cuentaDebito: state.cuenta?.codigo ?? '',
                  rubrosDetalle: state.respuestaConsulta?.rubrosDetalle,
                  otpIngresado: otp)));

      if (respuesta.hasValue) {
        ref
            .read(posicionConsolidadaControllerProvider.notifier)
            .actualizaConsolidado(disableLoading: true);

        state = state.copyWith(
            esComprobante: true, respuestaProceso: respuesta.value!);
      }
    }
  }

  Future continuar() async {
    if (state.esValidacion) {
      state = state.copyWith(esValidacion: false);
    } else if (state.esIngreso) {
      generarOtpPagoServicio();
    } else if (state.respuestaConsulta != null) {
      irPantallaIngreso();
    } else if (state.servicioSeleccionado != null) {
      var referencia = form.value['referencia'];
      if (referencia != null && referencia.toString().isNotEmpty) {
        consultar();
      } else {
        NotificationService.showError(
            title: 'Referencia',
            text: 'Debe ingresar la referencia para consultar');
      }
    }
  }

  Future cancelar() async {
    if (state.esValidacion) {
      state = state.copyWith(esValidacion: false);
    } else if (state.esIngreso) {
      state = state.copyWith(esIngreso: false);
    } else if (state.respuestaConsulta != null) {
      state = state.copyWith(respuestaConsulta: null);
    } else if (state.servicioSeleccionado != null) {
      state = state.copyWith(servicioSeleccionado: null);
    } else if (state.esValidacion) {
      state = state.copyWith(esValidacion: false);
    } else {
      await appRouter.pop();
    }
  }

  Future generarOtpPagoServicio() async {
    if (!state.esValidacion) {
      var client = HttpClientHelper.getClient();

      var montoString =
          form.control('monto').value.toString().replaceAll('\$', '').trim();

      monto = double.tryParse(montoString.toString()) ?? 0;
      var valorPago = monto;

      var puedePagar = true;
      var listaRubros =
          state.respuestaConsulta?.rubrosDetalle?.listaRubros ?? [];

      var rubrosNoSeleccionados =
          listaRubros.where((element) => !element.seleccionado);

      for (var item in listaRubros.where((element) => element.seleccionado)) {
        if (rubrosNoSeleccionados
            .any((element) => element.prioridad < item.prioridad)) {
          puedePagar = false;
          break;
        }

        if (state.respuestaConsulta?.rubrosDetalle?.permitePagoAbierto ??
            false) {
          item.valorPago = valorPago;
          valorPago = 0.00;
        } else {
          if (item.comision >= valorPago && puedePagar) {
            puedePagar = false;
            break;
          } else {
            if (item.valor <= valorPago) {
              item.valorPago = item.valor;
              valorPago -= item.valor;
            } else {
              item.valorPago = valorPago;
              valorPago = 0.00;
            }
          }
        }
      }

      String mensajeError = '';

      if (!puedePagar) {
        mensajeError =
            'Verifique rubros seleccionados y montos, no puede pagar rubros de mayor prioridad sin seleccionar rubros previos, o tiene saldo insuficiente';
      } else if (valorPago > 0.00) {
        mensajeError = 'Monto es superior al adeudado';
      }

      if (mensajeError.isNotEmpty) {
        NotificationService.showError(text: mensajeError);
      } else {
        var respuesta = await guard(() async =>
            await client.generaOtpServiciosBasicos(
                ProcesaPagoServiciosBasicosRequerimiento(
              guidConsulta: state.respuestaConsulta?.guidConsulta ?? '',
              cuentaDebito: state.cuenta?.codigo ?? '',
              rubrosDetalle: state.respuestaConsulta?.rubrosDetalle,
            )));

        if (respuesta.hasValue) {
          ref
              .read(posicionConsolidadaControllerProvider.notifier)
              .actualizaConsolidado(disableLoading: true);

          state = state.copyWith(esValidacion: true);
        }
      }
    }
  }

  String obtenerDescipcionTransferencia() {
    return form.value['descripcion']?.toString() ?? '';
  }

  Future tomarCaptura() async {
    final bytes = await controller.capture();
    await Share.shareXFiles([
      XFile.fromData(
        bytes!,
        name: 'comprobante.png',
        mimeType: 'image/png',
      ),
    ], text: 'Comprobante Transferencia');
  }

  Future irInicio() async {
    appRouter.navigate(const PosicionConsolidadaRoute());
  }
}
