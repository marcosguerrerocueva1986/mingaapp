import 'package:bancamovilr/index.dart';

class SimpleItemWidget extends StatelessWidget {
  const SimpleItemWidget({
    super.key,
    required this.item,
    this.flat = false,
  });

  final ComunItemModel? item;
  final bool flat;

  @override
  Widget build(BuildContext context) {
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
            top: defaultPadding / 1.2,
            left: defaultPadding / 1.2,
            right: defaultPadding / 1.2,
            bottom: defaultPadding),
        child: item == null
            ? Container()
            : Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Codigo. ${item!.codigo}',
                            style: context.textTheme.bodyLarge!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: defaultPadding / 2,
                          ),
                          Text(item!.nombre),
                        ],
                      )
                      // ,
                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: [
                      //     Text(cuenta!.saldo.toMoney(),
                      //         style: context.textTheme.bodyLarge!
                      //             .copyWith(fontWeight: FontWeight.bold)),
                      //     const SizedBox(
                      //       height: defaultPadding / 2,
                      //     ),
                      //     const Text('Disponible'),
                      //   ],
                      // )
                    ],
                  )
                ],
              ),
      ),
    );
  }
}
