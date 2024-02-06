import 'package:flutter/services.dart';

class DollarTextInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.isEmpty) {
      return newValue.copyWith(text: ''); // Agrega el símbolo de $ al principio
    } else if (!newValue.text.contains('\$')) {
      // Si no comienza con '$ ', agrega '$ ' al principio
      return newValue.copyWith(
        text: '\$ ${newValue.text}',
        selection: TextSelection.collapsed(offset: newValue.selection.end + 2),
      );
    }
    return newValue;
  }
}
