import 'package:bancamovilr/index.dart';

class InfoText extends StatelessWidget {
  const InfoText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Configuracion.mostrarInfo
        ? Container(
            width: double.infinity,
            padding: const EdgeInsets.all(defaultPadding),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor.withOpacity(0.9),
              borderRadius: const BorderRadius.all(
                Radius.circular(5.0),
              ),
            ),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          )
        : const SizedBox();
  }
}
