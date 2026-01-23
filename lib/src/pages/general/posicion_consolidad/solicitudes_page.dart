import 'package:bancamovilr/index.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SolicitudesPage extends ConsumerStatefulWidget {
  const SolicitudesPage({Key? key}) : super(key: key);
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SolicitudesPageState();
}

class _SolicitudesPageState extends ConsumerState<SolicitudesPage> {
  String _selectedCategory = 'Todos';

  @override
  Widget build(BuildContext context) {
    var provider = ref.watch(posicionConsolidadaControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.fromLTRB(0,40,0,0),
          child: Text('', style: TextStyle(color: Color.fromRGBO(0, 96, 153, 10)),),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 20, 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '¿Qué servicios deseas para hoy?',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: ContextExtension(context).getTitlePrimaryColor(), 
                    ),
                  ),
                ),
              ),
              Container(
                  width: double.infinity,
                  height: 400,
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: const SolicitudesWidget(),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
class SolicitudesWidget extends ConsumerWidget {
const SolicitudesWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref){
    final appRouter = AutoRouter.of(context);
    var controller = ref.read(cuentaDetalleControllerProvider.notifier);
    var provider = ref.watch(transferenciaControllerProvider);
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 30, 0),
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 20.0,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: listaServicios.map((servicios) => 
            ElevatedButton(
              onPressed: () {
              switch (servicios.actionRouteName) {
                case "estadocuentaRoute":
                  appRouter.push(const EstadoCuentaRoute()); 
                  break;
                default:
                print("Ruta no definida para: ${servicios.actionRouteName}");
                appRouter.push(const MantenimientoRoute()); 
                break;
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,            
              elevation: 0,
              padding: EdgeInsets.zero,
              shadowColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Ink.image(
              image: AssetImage(servicios.imagePath),
              fit: BoxFit.fill,
              width: 70,
              height: 70,
            ),
          ),
        ).toList(),
      ),
    );
  }
}
class Solicitudes {
final String imagePath;
final String title;
final String actionRouteName; 

Solicitudes({required this.imagePath, required this.title, required this.actionRouteName});
}
  final List listaServicios = [
    Servicio(imagePath: "assets/images/estadocuenta.png", title:"Estado cuenta", actionRouteName:"estadocuentaRoute"),
  ];

  