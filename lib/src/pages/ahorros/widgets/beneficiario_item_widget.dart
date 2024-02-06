import 'package:bancamovilr/index.dart';

class BeneficiarioItemWidget extends StatelessWidget {
  const BeneficiarioItemWidget({
    super.key,
    required this.beneficiario,
    this.muestraAvatar = true, this.flat = false,
  });

  final BeneficiarioModel? beneficiario;
  final bool muestraAvatar;
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
        child: beneficiario == null
            ? Container()
            : Column(
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (muestraAvatar) ...[
                        CircleAvatar(
                          child:
                              Text(beneficiario?.nombre[0].toUpperCase() ?? ''),
                        ),
                        const SizedBox(
                          width: defaultPadding,
                        ),
                      ],
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              beneficiario!.nombre,
                              style: context.textTheme.bodyMedium!
                                  .copyWith(fontWeight: FontWeight.bold),
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(
                              height: defaultPadding / 2,
                            ),
                            Text(
                                '${beneficiario!.institucion} \\ Nro. ${beneficiario!.numeroCuenta}'),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
      ),
    );
  }
}
