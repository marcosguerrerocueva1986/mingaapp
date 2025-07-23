import 'package:bancamovilr/index.dart';

class ServicioItemWidget extends StatelessWidget {
  const ServicioItemWidget(
      {super.key,
      required this.servicio,
      required this.onTapFavorito,
      this.flat = false,
      this.showFavorito = true});

  final ServicioModel? servicio;
  final GestureTapCallback onTapFavorito;
  final bool flat;
  final bool showFavorito;

  @override
  Widget build(BuildContext context) {
    var esFavorito = (servicio?.esFavorito ?? false);

    return Card(
      elevation: flat ? 0 : null,
      color: flat ? Colors.transparent : null,
      shape: flat
          ? RoundedRectangleBorder(
              side: const BorderSide(color: Colors.transparent, width: 0),
              borderRadius: BorderRadius.circular(8.0),
            )
          : null,
      child: Container(
        padding: const EdgeInsets.only(
            top: defaultPadding / 1.8,
            left: defaultPadding / 1.2,
            right: defaultPadding / 1.2,
            bottom: defaultPadding / 1.8),
        child: servicio == null
            ? Container()
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        if (showFavorito)
                          GestureDetector(
                            behavior: HitTestBehavior.translucent,
                            onTap: () {
                              onTapFavorito();
                            },
                            child: Icon(
                              esFavorito
                                  ? Icons.star
                                  : Icons.star_outline_outlined,
                              size: 15,
                              color: esFavorito
                                  ? (Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? Colors.grey.shade300
                                      : Theme.of(context).primaryColor)
                                  : Colors.grey.shade300,
                            ),
                          ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(servicio?.nombre ?? '',
                              style: Theme.of(context).textTheme.bodyMedium),
                        )
                      ]),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
      ),
    );
  }
}
