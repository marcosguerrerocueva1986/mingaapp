import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

const double defaultPadding = 15;

Color getColorForState(BuildContext context,
    MaterialStateProperty<Color?>? property, Set<MaterialState> states) {
  if (property != null) {
    final Color? resolvedColor = property.resolve(states);
    if (resolvedColor != null) {
      return resolvedColor;
    }
  }

  return Colors.grey;
}

final defaultPinTheme = PinTheme(
  width: 56,
  height: 60,
  decoration: BoxDecoration(
    color: const Color.fromRGBO(222, 231, 240, .57),
    borderRadius: BorderRadius.circular(8),
    border: Border.all(color: Colors.transparent),
  ),
);

double elevacionItem = 0;
bool bordeColorItem = false;
bool separarItems = false;

ScrollPhysics defaultScrollPhysics = const BouncingScrollPhysics();

BoxDecoration? defaultItemBoxDecoration = bordeColorItem
    ? const BoxDecoration(
        color: Colors.white,
        border: Border(
          left: BorderSide(
            width: 0,
            // color: active,
          ),
        ))
    : null;

Widget separadorListaItems = separarItems
    ? const Divider(
        height: 2,
      )
    : const SizedBox();

var inputDecorationForm = InputDecoration(
  isDense: true,
  errorBorder:
      OutlineInputBorder(borderSide: BorderSide(color: Colors.red.shade300)),
  focusedErrorBorder:
      OutlineInputBorder(borderSide: BorderSide(color: Colors.red.shade300)),
  enabledBorder:
      OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade300)),
  focusedBorder:
      OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade300)),
  border:
      OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade300)),
);

class ThemeHelper {
  InputDecoration textInputDecoration(
      {String lableText = "",
      String hintText = "",
      Widget? prefixIcon,
      Widget? suffixIcon}) {
    return InputDecoration(
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      labelText: lableText,
      hintText: hintText,
      fillColor: Colors.transparent,
      filled: true,
      contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      focusedBorder: const OutlineInputBorder(
          // borderRadius: BorderRadius.circular(100.0),
          borderSide: BorderSide(color: Colors.grey)),
      enabledBorder: OutlineInputBorder(
          // borderRadius: BorderRadius.circular(100.0),
          borderSide: BorderSide(color: Colors.grey.shade400)),
      errorBorder: OutlineInputBorder(
          // borderRadius: BorderRadius.circular(100.0),
          borderSide: BorderSide(color: Colors.grey.shade400)),
      focusedErrorBorder: OutlineInputBorder(
          // borderRadius: BorderRadius.circular(100.0),
          borderSide: BorderSide(color: Colors.grey.shade400)),
    );
  }

  BoxDecoration inputBoxDecorationShaddow() {
    return BoxDecoration(boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.1),
        blurRadius: 20,
        offset: const Offset(0, 5),
      )
    ]);
  }

  BoxDecoration buttonBoxDecoration(BuildContext context,
      {bool secondary = false, bool shade = false}) {
    Color c1 =
        secondary ? Colors.grey.shade300 : Theme.of(context).primaryColor;
    Color c2 = secondary
        ? Colors.grey.shade100
        : Theme.of(context).colorScheme.secondary;

    return BoxDecoration(
      boxShadow: shade
          ? const [
              BoxShadow(
                  color: Colors.black26, offset: Offset(0, 4), blurRadius: 5.0)
            ]
          : null,
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        stops: const [0.0, 1.0],
        colors: [
          c1,
          c1,
        ],
      ),
      // color: Colors.deepPurple.shade300,
      borderRadius: BorderRadius.circular(5),
    );
  }

  ButtonStyle buttonStyle() {
    return ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
      minimumSize: MaterialStateProperty.all(const Size(50, 50)),
      backgroundColor: MaterialStateProperty.all(Colors.transparent),
      shadowColor: MaterialStateProperty.all(Colors.transparent),
    );
  }

  AlertDialog alartDialog(String title, String content, BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        TextButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.black38)),
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text(
            "OK",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
