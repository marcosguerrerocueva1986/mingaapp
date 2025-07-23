import 'package:bancamovilr/index.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      inputFormatters: [
        UpperCaseTextInputFormatter(),
      ],
      decoration: InputDecoration(
          hintText: "Buscar",
          focusedBorder: InputBorder.none,
          border: InputBorder.none,
          filled: true,
          // fillColor: Colors.grey.shade200,
          contentPadding: const EdgeInsets.fromLTRB(12, 16, 12, 8),
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
          ),
          iconColor: Theme.of(context).primaryColor),
    );
  }
}
