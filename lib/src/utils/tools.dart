import 'package:bancamovilr/index.dart';

List<Widget> itemsParaConfirmacionRecibo(
    List<EtiquetaValorRecibo> listaDetalle) {
  List<Widget> lista = [];

  for (var item in listaDetalle) {
    lista.add(
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            '${item.etiqueta}:',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            width: defaultPadding,
          ),
          Flexible(
            child: Text(item.valor.replaceAll(':', ''),
                overflow: TextOverflow.ellipsis, textAlign: TextAlign.right),
          ),
        ],
      ),
    );

    lista.add(
      const SizedBox(
        height: defaultPadding,
      ),
    );
  }

  return lista;
}

List<Widget> itemsParaConfirmacionReciboDeUna(
    BuildContext context, List<EtiquetaValorRecibo> listaDetalle) {
  List<Widget> lista = [];

  for (var item in listaDetalle) {
    lista.add(
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            width: 50,
          ),
          Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(
                  item.icon!,
                  size: 25,
                ),
              )),
          const SizedBox(
            width: 25,
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${item.etiqueta}:',
                  style: TextStyle(color: context.getTitlePrimaryColor()),
                ),
                const SizedBox(
                  width: defaultPadding,
                ),
                Flexible(
                  child: Text(
                    item.valor,
                    maxLines: 3,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: defaultPadding,
          )
        ],
      ),
    );

    lista.add(
      const SizedBox(
        height: defaultPadding,
      ),
    );
  }

  return lista;
}
