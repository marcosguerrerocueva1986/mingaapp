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
              child: Text(item.valor,
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