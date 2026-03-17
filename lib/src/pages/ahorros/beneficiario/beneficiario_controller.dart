import 'package:bancamovilr/index.dart';
import 'package:bancamovilr/src/routes/app_router.dart';
part 'beneficiario_controller.g.dart';

@riverpod
class BeneficiarioController extends _$BeneficiarioController {
  final form = fb.group({
    'monto': [Validators.required],
    'descripcion': ['', Validators.required],
    'emailEnvio': ['', Validators.required],
  });

  @override
  BeneficiarioState build() {
    ref.onDispose(() => form.dispose());
    return BeneficiarioState();
  }

  Future inicializa() async {
    actualizaListaBeneficiarios();
  }

  Future actualizaListaBeneficiarios() async {
    var client = HttpClientHelper.getClient();

    var respuesta = await guard(() async => await client.consultaBeneficiarios(
        BaseRequerimiento(idUsuario: HttpClientHelper.idUsuario)));

    if (respuesta.hasValue) {
      state = state.copyWith(
          beneficiarios: respuesta.value?.beneficiarioLista ?? []);
    }
  }

  Future irEdicionBeneficiario(int id) async {}

  List<BeneficiarioModel> listaBeneficarioPorTipoTransferencia(
      TipoTransferencia tipoTransferencia) {
    if (tipoTransferencia == TipoTransferencia.interbancaria) {
      return state.beneficiarios
          .where((element) => !element.esInterno)
          .toList();
    } else if (tipoTransferencia == TipoTransferencia.directa) {
      return state.beneficiarios.where((element) => element.esInterno).toList();
    } else {
      var posicionConsolidadaController =
          ref.read(posicionConsolidadaControllerProvider);
      var misCuentas =
          posicionConsolidadaController.posicionConsolidada?.cuentas ?? [];

      return misCuentas
          .map((e) =>
              BeneficiarioModel(id: 0, nombre: e.tipo, numeroCuenta: e.codigo))
          .toList();
    }
  }

  Future agregarNuevoEditarBeneficiario(int id, bool esInterna) async {
    await appRouter.push(BeneficiarioEdicionRoute(id: id, esInterno: esInterna));
    actualizaListaBeneficiarios();
  }

  irInicio() async {
    appRouter.navigate(const PosicionConsolidadaRoute());
  }
}
