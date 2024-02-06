import 'package:bancamovilr/index.dart';

class Consts {
  Consts._();

  static const double padding = 16.0;
  static const double avatarRadius = 66.0;
}

class MessageDialog extends StatefulWidget {
  final String title, description, buttonText;
  final Image? image;
  final Function? callback;
  final bool isQuestion;

  const MessageDialog(
      {super.key,
      required this.description,
      this.title = '',
      this.buttonText = 'Aceptar',
      this.image,
      this.callback,
      this.isQuestion = false});

  @override
  _MessageDialogState createState() => _MessageDialogState();
}

class _MessageDialogState extends State<MessageDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Consts.padding),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  Widget dialogContent(BuildContext context) {
    var width = 400.0;
    return Stack(
      children: <Widget>[
        Container(
          width: width,
          padding: const EdgeInsets.only(
            top: Consts.padding,
            bottom: Consts.padding - 15,
            left: Consts.padding,
            right: Consts.padding,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(Consts.padding),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                offset: Offset(0.0, 10.0),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment:
                MainAxisAlignment.center, // To make the card compact
            children: <Widget>[
              const SizedBox(height: 45.0),
              Text(
                widget.description,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 14.0,
                ),
              ),
              const SizedBox(height: 15.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  if (widget.isQuestion)
                    MaterialButton(
                      onPressed: () {
                        Navigator.of(context).pop(); // To close the dialog
                        /*  Navigator.pop(context);
                      Navigator.pushReplacementNamed(context, 'login'); */
                      },
                      child: Text(
                        'Cancelar',
                        style: TextStyle(color: Colors.grey.shade800),
                      ),
                    ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      if (widget.callback != null) widget.callback!();
                    },
                    child: Text(
                      widget.buttonText,
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
            width: width,
            height: 40,
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            child: Center(
              child: Text(
                ((widget.title.isEmpty) ? Configs.nameApp : widget.title),
                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    decorationColor: Colors.black),
              ),
            )),
      ],
    );
  }
}
