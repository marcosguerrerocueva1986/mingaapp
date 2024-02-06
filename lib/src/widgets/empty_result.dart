import 'package:bancamovilr/index.dart';
import 'package:flutter/material.dart';

class EmptyResult extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool large;

  const EmptyResult(
      {Key? key,
      this.icon = Icons.find_in_page,
      this.text = 'No se encontraron registros',
      this.large = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: large ? null : 200,
      alignment: AlignmentDirectional.center,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                          context.theme.primaryColor.withOpacity(0.7),
                          context.theme.primaryColor.withOpacity(0.05),
                        ])),
                child: Icon(
                  icon,
                  color: context.theme.brightness == Brightness.light
                      ? Theme.of(context).scaffoldBackgroundColor
                      : context.getTitlePrimaryColor(),
                  size: 35,
                ),
              ),
              Positioned(
                right: -30,
                bottom: -50,
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Theme.of(context)
                        .scaffoldBackgroundColor
                        .withOpacity(0.15),
                    borderRadius: BorderRadius.circular(150),
                  ),
                ),
              ),
              Positioned(
                left: -20,
                top: -50,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Theme.of(context)
                        .scaffoldBackgroundColor
                        .withOpacity(0.15),
                    borderRadius: BorderRadius.circular(150),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 15),
          Opacity(
            opacity: 0.4,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontWeight: FontWeight.w300),
            ),
          ),
        ],
      ),
    );
  }
}
