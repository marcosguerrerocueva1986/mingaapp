import 'dart:developer';

import 'package:bancamovilr/index.dart';

class LifeCycleManagerWidget extends StatefulWidget {
  final Widget child;
  final GlobalKey<NavigatorState> navigatorKey;

  const LifeCycleManagerWidget(
      {Key? key, required this.child, required this.navigatorKey})
      : super(key: key);

  _LifeCycleManagerState createState() => _LifeCycleManagerState();
}

class _LifeCycleManagerState extends State<LifeCycleManagerWidget>
    with WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      //log('Segundos de inactividad ${DateTime.now().difference(Configuracion.ultimaVezActividad).inSeconds}');
      if (DateTime.now()
              .difference(Configuracion.ultimaVezActividad)
              .inSeconds >=
          Configuracion.segundosInactividad) {
        log('Paso el tiempo de inactividad resumen');
        if (HttpClientHelper.token != '') {
          HttpClientHelper.token = '';
          appRouter.replaceAll([const LoginRoute()]);
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
