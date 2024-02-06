
import 'package:bancamovilr/index.dart';

class SelectionCardWidget extends StatelessWidget {
  const SelectionCardWidget({
    super.key,
    required this.text,
    required this.isEmpty,
    required this.child,
    required this.onTap,
    required this.subTitle,
  });

  final String text;
  final String subTitle;
  final bool isEmpty;
  final Widget child;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.translucent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              isEmpty ? Text(text) : child,
              if (isEmpty && subTitle.isNotEmpty)
                Text(
                  subTitle,
                  style: context.textTheme.bodySmall,
                ),
            ],
          )),
          IconButton(
              onPressed: onTap,
              icon: const Icon(Icons.arrow_forward_ios_outlined))
        ],
      ),
    );
  }
}
