import 'dart:ui';

import 'package:bancamovilr/index.dart';

class Loading extends StatefulWidget {
  final double height;

  const Loading({Key? key, this.height = 200.0}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late Animation<double> animationSize;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);

    animation = Tween(begin: -60.0, end: 300.0).animate(controller)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller.forward();
        }
      });
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height + 150,
      child: AnimatedBuilder(
        animation: controller,
        builder: (context, child) {
          return Center(
            child: ProgressIndicatorButton(
              animationValue: controller.value,
              startAngle: animation.value.toInt(),
              endAngle: (animation.value.toInt() + 60),
            ),
          );
        },
      ),
    );
  }
}

class ProgressIndicatorButton extends StatelessWidget {
  const ProgressIndicatorButton(
      {Key? key,
      required this.startAngle,
      required this.endAngle,
      required this.animationValue})
      : super(key: key);

  final int startAngle;
  final int endAngle;
  final double animationValue;

  @override
  Widget build(BuildContext context) {
    const buttonSize = 250.0;
    const borderWidth = 3.0;

    return Opacity(
      opacity: lerpDouble(0.5, 1.0, animationValue) ?? 1.0,
      child: Stack(
        children: [
          Container(
            width: buttonSize,
            height: buttonSize,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.transparent,
                width: borderWidth - 2,
              ),
            ),
          ),
          SizedBox(
            width: buttonSize,
            height: buttonSize,
            child: Opacity(
              opacity: lerpDouble(0.5, 1.0, animationValue) ?? 1.0,
              child: Center(
                child: Container(
                    width:
                        buttonSize - (lerpDouble(5, 25, animationValue) ?? 5),
                    height:
                        buttonSize - (lerpDouble(5, 25, animationValue) ?? 5),
                    decoration: const BoxDecoration(
                      // color: active,
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                        Theme.of(context).brightness == Brightness.dark
                            ? R.svg.logoBlack
                            : R.svg.logo,
                        height: double.infinity,
                        width: double.infinity)),
              ),
            ),
          ),
          // Positioned(
          //     bottom: 0,
          //     width: buttonSize,
          //     child: Container(
          //       // color: Colors.blue,
          //       child: const Center(
          //         child: Text(
          //           'Cargando',
          //           textAlign: TextAlign.center,
          //         ),
          //       ),
          //     ))
        ],
      ),
    );
  }
}
