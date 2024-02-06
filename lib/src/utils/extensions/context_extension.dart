import 'package:bancamovilr/index.dart';

extension ContextExtension on BuildContext {
  ThemeData getTheme() {
    return Theme.of(this);
  }

  Color getTitlePrimaryColor() {
    return theme.brightness == Brightness.light
        ? theme.primaryColor
        : Colors.grey;
  }

  TextStyle getStyleLabelTitle() {
    return textTheme.bodyMedium!
        .copyWith(color: getTitlePrimaryColor(), fontWeight: FontWeight.bold);
  }
}
