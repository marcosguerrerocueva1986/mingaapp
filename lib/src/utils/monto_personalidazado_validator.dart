
import 'package:bancamovilr/index.dart';

class MontoPersonalizadoValidator extends Validator<dynamic> {
  
  final double saldoActual;
  double montoDisponible;

  MontoPersonalizadoValidator(this.saldoActual, {this.montoDisponible = -1}) : super();

  @override
  Map<String, dynamic>? validate(AbstractControl<dynamic> control) {
    var montoString = control.value.toString().replaceAll('\$', '').trim();

    var monto = double.tryParse(montoString.toString()) ?? 0;

    if (monto < 0) return {'montoNegativo': true};
    if (monto == 0) return {'montoCero': true};
    if (monto > saldoActual && saldoActual > 0) return {'saldoInsuficiente': true};
    if (montoDisponible >= 0 && monto > montoDisponible) return {'montoMayorDisponible': true};

    return null;
  }
}