import 'package:bancamovilr/index.dart';

class ProcessButton extends StatelessWidget {
  const ProcessButton(
      {super.key,
      required this.text,
      this.isSecondary = false,
      required this.onPressed});

  final String text;
  final bool isSecondary;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: FilledButton(
        style: isSecondary
            ? ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.transparent))
            : null,
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
          child: Text(
            text,
            style: isSecondary
                ? context.textTheme.bodyMedium!.copyWith(color: Colors.grey)
                : null,
          ),
        ),
      ),
    );
  }
}
