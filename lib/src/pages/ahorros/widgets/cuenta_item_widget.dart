import 'package:bancamovilr/index.dart';

class CuentaItemWidget extends StatelessWidget {
  const CuentaItemWidget({
    super.key,
    required this.cuenta,
    this.flat = false,
  });

  final CuentaModel? cuenta;
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
        child: cuenta == null
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
                            'Nro. ${cuenta!.codigo}',
                            style: context.textTheme.bodyLarge!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: defaultPadding / 2,
                          ),
                          Text(cuenta!.tipo),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(cuenta!.saldo.toMoney(),
                              style: context.textTheme.bodyLarge!
                                  .copyWith(fontWeight: FontWeight.bold)),
                          const SizedBox(
                            height: defaultPadding / 2,
                          ),
                          const Text('Disponible'),
                        ],
                      )
                    ],
                  )
                ],
              ),
      ),
    );
  }
}
