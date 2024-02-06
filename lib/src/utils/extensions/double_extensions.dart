import 'package:intl/intl.dart';

extension DoubleExtensions on double {
  String toMoney() {
    return NumberFormat.simpleCurrency().format(this);
  }
}
