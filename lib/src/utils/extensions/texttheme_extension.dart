import 'package:flutter/material.dart';

extension TextThemeExtension on TextTheme {
  Color titleColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? Colors.white
        : const Color(0xFF0055B7);
  }
}
