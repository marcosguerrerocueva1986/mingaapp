import 'package:bancamovilr/subfolders.dart';

extension ContextExtensions on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => Theme.of(this).textTheme;
  ColorScheme get color => Theme.of(this).colorScheme;
}