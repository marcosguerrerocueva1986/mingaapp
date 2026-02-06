import 'package:bancamovilr/index.dart';

part 'beneficiario_edicion_controller.g.dart';

@riverpod
class BeneficiarioEdicionController extends _$BeneficiarioEdicionController {
  final formI = fb.group({
    'numeroCuenta': ['', Validators.required],
    'identificacion': [''],
    'nombre': [''],
    'apellido': [''],
    'email': [''],
    'codigoTipoCuenta': [''],
    'codigoTipoId': [''],
    'idInstitucion': [0],
    'guardarContacto': <bool>[false],
  });
  final formE = fb.group({
    'numeroCuentaExterno': ['', Validators.required],
    'identificacion': [''],
    'nombre': [''],
    'apellido': [''],
    'email': [''],
    'codigoTipoCuenta': [''],
    'codigoTipoId': [''],
    'institucion': [''],
    'idInstitucion': [0],
    'guardarContacto': <bool>[false],
  });

  @override
  BeneficiarioEdicionState build() {
    return BeneficiarioEdicionState();
  }
  
  Future inicializa(int id, bool esInterno) async {
    state = state.copyWith(esInterno: esInterno);

    if (id > 0) {
      var beneficiario = ref
          .read(beneficiarioControllerProvider)
          .beneficiarios
          .where((element) => element.id == id)
          .firstOrNull;

      if (beneficiario != null) {
        state = state.copyWith(beneficiario: beneficiario, esValidacion: true);
      }
    } else if (!esInterno) {
      var client = HttpClientHelper.getClient();

      var respuesta = await guard(() async =>
          await client.consultaRequisitosBeneficiarios(BaseRequerimiento()));

      if (respuesta.hasValue) {
        state = state.copyWith(requisitosRespuesta: respuesta.value);
      }
    }
  }

  Future actualizaListaBeneficiarios() async {
    ref
        .read(beneficiarioControllerProvider.notifier)
        .actualizaListaBeneficiarios();
  }

  Future verificarYGenerarOtp() async {
  if (!formI.invalid) {
    var client = HttpClientHelper.getClient();
    var beneficiario = BeneficiarioModel.fromJson(formI.value);
    beneficiario = beneficiario.copyWith(esInterno: state.esInterno);

    var respuesta = await guard(() async => await client
        .generaOtpBeneficiario(MantenimientoBeneficiarioRequerimiento(
            beneficiario: beneficiario)));

    if (respuesta.hasValue) {
      state = state.copyWith(
          beneficiario: respuesta.value?.beneficiario, esValidacion: true);
    }
  }
  else
  {
    NotificationService.showError(text: 'Validar cuenta por favor');
  }
}

void limpiarBeneficiario() {
  state = state.copyWith(
    esValidacion: false, 
    beneficiario: null,
  );
}

Future validaCuentaBeneficiario() async {
  if (!formI.invalid) {
    var client = HttpClientHelper.getClient();
    String cuentabeneficiario = formI.control('numeroCuenta').value as String;
    var respuesta = await guard(() async => await client
        .validaBeneficiarioCuentaInterno(ConsultaBeneficiarioRequerimiento(
            numeroCuenta: cuentabeneficiario)));

    if (respuesta.hasValue) {
      state = state.copyWith(beneficiario: respuesta.value?.beneficiario, esValidacion: true);
    }
  }
  else
  {
    NotificationService.showError(text: 'Ingresar el número de cuenta por favor');
  }
}
  Future eliminarBeneficiario() async {
    NotificationService.showConfirm(
        text:
            'Está seguro de eliminar el beneficiario ${state.beneficiario?.nombre}?',
        onConfirmBtnTap: () async {
          var client = HttpClientHelper.getClient();
          var respuesta = await guard(() async =>
              await client.eliminaBeneficiario(state.beneficiario!));

          if (respuesta.hasValue) {
            await actualizaListaBeneficiarios();
            // await appRouter.navigate(const BeneficiarioRoute());
            await appRouter.pop();
            NotificationService.showSuccess(text: 'Beneficiario eliminado');
          }
        });
  }

  Future guardaBeneficiario(String otp) async {
    var client = HttpClientHelper.getClient();
    BeneficiarioModel? updatedBeneficiario;
    bool guardaBeneficiario;
    if (state.esInterno){
      guardaBeneficiario = formI.control('guardarContacto').value as bool; 
      if (state.esValidacion) {
        if (!formI.invalid) {
          final formValue = formI.value;
          final numeroCuenta = formValue['numeroCuenta'] as String?;
          if (numeroCuenta == null || numeroCuenta.isEmpty) {
            NotificationService.showError(text: 'El número de cuenta es requerido.');
            return;
          }
          updatedBeneficiario = state.beneficiario?.copyWith(
            esInterno: true,
            numeroCuenta: numeroCuenta,
          );

          if (updatedBeneficiario == null) {
            NotificationService.showError(text: 'No se pudo actualizar el beneficiario.');
            return;
          }
        } else {
          NotificationService.showError(text: 'Validar cuenta por favor');
        }  
      } else {
        NotificationService.showError(text: 'Validar cuenta por favor');
      }       
    }
    else {
      guardaBeneficiario = formE.control('guardarContacto').value as bool;
      if (!formE.invalid) {
        var beneficiario = BeneficiarioModel.fromJson(formE.value);
        updatedBeneficiario = beneficiario.copyWith(esInterno: state.esInterno);
        final formValue = formE.value;
        final numeroCuenta = formValue['numeroCuentaExterno'] as String?;
        if (numeroCuenta == null || numeroCuenta.isEmpty) {
          NotificationService.showError(text: 'El número de cuenta es requerido.');
          return;
        }
        updatedBeneficiario = updatedBeneficiario.copyWith(
          esInterno: false,
          numeroCuenta: numeroCuenta,
        );

        if (updatedBeneficiario == null) {
          NotificationService.showError(text: 'No se pudo actualizar el beneficiario.');
          return;
        }
      } else {
        NotificationService.showError(text: 'Ingrese la información respectiva por favor');
      }  
    }
    if (guardaBeneficiario){
      var respuesta = await guard(() async => await client
          .mantenimientoBeneficiario(MantenimientoBeneficiarioRequerimiento(
              beneficiario: updatedBeneficiario, otpIngresado: otp)));

      if (respuesta.hasValue) {
        await actualizaListaBeneficiarios();
        await appRouter.popAndPush(TransferenciaRoute(tipoTransferencia: updatedBeneficiario!.esInterno == true ? TipoTransferencia.directa : TipoTransferencia.interbancaria, beneficiario: updatedBeneficiario));
      }
    }
    else
    {
      await appRouter.popAndPush(TransferenciaRoute(tipoTransferencia: updatedBeneficiario!.esInterno == true ? TipoTransferencia.directa : TipoTransferencia.interbancaria, beneficiario: updatedBeneficiario));
    }
  }
  
  irInicio() async {
    appRouter.navigate(const PosicionConsolidadaRoute());
  }
}
