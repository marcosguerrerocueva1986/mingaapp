import 'package:intl/intl.dart';
import 'package:date_format/date_format.dart';

extension DateExtensions on DateTime {
  String toStringFormat() {
    return DateFormat('dd-MM-yyyy').format(this);
  }

  String toStringFormatFull() {
    return DateFormat('dd-MM-yyyy HH:mm:ss').format(this);
  }

  String toStringLongFormat() {
    return formatDate(this, [DD, ', ', d, ' ', M, '. ', yyyy],
        locale: const SpanishDateLocale());
  }
}
