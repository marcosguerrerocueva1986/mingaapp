import 'package:bancamovilr/index.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';

part 'cuenta_detalle_controller.g.dart';

@riverpod
class CuentaDetalleController extends _$CuentaDetalleController {
  @override
  CuentaDetalleState build() {
    return CuentaDetalleState();
  }

  Future actualizaInformacion(CuentaModel cuenta) async {
    var client = HttpClientHelper.getClient();

    var respuesta = await guard(() async => await client
        .consultaMovimientosCuenta(ConsultaMovimientosCuentaRequerimiento(
            idUsuario: HttpClientHelper.idUsuario,
            codigoCuenta: cuenta.codigo,
            numeroRegistros: 15)));

    if (respuesta.hasValue) {
      state =
          state.copyWith(cuenta: cuenta, respuestaMovimientos: respuesta.value);
    }
  }

  Future filtarPorFecha() async {
    var context = appRouter.navigatorKey.currentContext!;
    var results = await showCalendarDatePicker2Dialog(
      context: context,
      config: CalendarDatePicker2WithActionButtonsConfig(
          calendarType: CalendarDatePicker2Type.range),
      dialogBackgroundColor:
          context.theme.scaffoldBackgroundColor.withOpacity(1.0),
      dialogSize: const Size(325, 400),
      value: [],
      borderRadius: BorderRadius.circular(15),
    );

    if (results?.isNotEmpty ?? false) {
      var client = HttpClientHelper.getClient();

      var respuesta = await guard(() async => await client
          .consultaMovimientosCuenta(ConsultaMovimientosCuentaRequerimiento(
              idUsuario: HttpClientHelper.idUsuario,
              codigoCuenta: state.cuenta?.codigo ?? '',
              fechaDesde: results?.first,
              fechaHasta: results?.last)));

      if (respuesta.hasValue) {
        state = state.copyWith(respuestaMovimientos: respuesta.value);
      } else {
        return ConsultaMovimientosCuentaRespuesta(movimientos: []);
      }
    }
  }

  Future<ConsultaMovimientosCuentaRespuesta> movimientosCuenta(
      CuentaModel cuenta) async {
    var client = HttpClientHelper.getClient();
    DateTime now = DateTime.now();
    var respuesta = await guard(() async => await client
        .consultaMovimientosCuenta(ConsultaMovimientosCuentaRequerimiento(
            idUsuario: HttpClientHelper.idUsuario,
            codigoCuenta: state.cuenta?.codigo ?? '',
            fechaHasta: DateTime.now())));

    if (respuesta.hasValue) {
      return respuesta.value as ConsultaMovimientosCuentaRespuesta;
    } else {
      return ConsultaMovimientosCuentaRespuesta(movimientos: []);
    }
  }

  Future irATransferencia() async {
    return showDialog(
      context: appRouter.navigatorKey.currentContext!,
      builder: (context) => SimpleDialog(
        title: const Text(
          'Tipo de Transferencia',
          textAlign: TextAlign.center,
        ),
        children: <Widget>[
          SimpleDialogOption(
            onPressed: () async {
              appRouter.pop();
              appRouter.navigate(TransferenciaRoute(
                  tipoTransferencia: TipoTransferencia.misCuentas,
                  cuentaTransferenciaParametro: state.cuenta));
            },
            child: Card(
                child: Container(
                    padding: const EdgeInsets.all(defaultPadding),
                    child: const Text('Mis Cuentas'))),
          ),
          SimpleDialogOption(
            onPressed: () async {
              appRouter.pop();
              appRouter.navigate(TransferenciaRoute(
                  tipoTransferencia: TipoTransferencia.directa,
                  cuentaTransferenciaParametro: state.cuenta));
            },
            child: Card(
                child: Container(
                    padding: const EdgeInsets.all(defaultPadding),
                    child: const Text('Interna'))),
          ),
          SimpleDialogOption(
            onPressed: () async {
              appRouter.pop();
              appRouter.navigate(TransferenciaRoute(
                  tipoTransferencia: TipoTransferencia.interbancaria,
                  cuentaTransferenciaParametro: state.cuenta));
            },
            child: Card(
                child: Container(
                    padding: const EdgeInsets.all(defaultPadding),
                    child: const Text('Interbancaria'))),
          ),
        ],
      ),
    );
  }

  Future irPagoServicio() async {
    appRouter.navigate(
      PagoServicioRoute(cuentaTransferenciaParametro: state.cuenta));
  }
}
