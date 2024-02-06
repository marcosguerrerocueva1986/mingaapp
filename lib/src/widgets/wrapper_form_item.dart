
import 'package:bancamovilr/index.dart';

class WrapperFormItem extends StatelessWidget {
  const WrapperFormItem({
    super.key, required this.label, required this.child,
  });

  final String label;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          label,
          style: context.textTheme.bodyMedium!.copyWith(
              color: context.getTitlePrimaryColor(),
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: defaultPadding / 2,
        ),
        child,
        const SizedBox(
          height: defaultPadding / 2,
        ),
      ],
    );
  }
}