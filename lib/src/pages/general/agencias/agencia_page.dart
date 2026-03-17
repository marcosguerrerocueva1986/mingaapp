import 'dart:async';

import 'package:bancamovilr/index.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:permission_handler/permission_handler.dart';

@RoutePage()
class AgenciaPage extends ConsumerStatefulWidget {
  const AgenciaPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AgenciaPageState();
}
class _AgenciaPageState extends ConsumerState<AgenciaPage> {
  bool permisoUbicacion = false;
  @override
  void initState() {
    super.initState();
    //pedirPermisoUbicacion();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(agenciaControllerProvider.notifier)
          .cargaInformacionAgencia(mapController);
    });
  }

  final Completer<GoogleMapController> mapController =
      Completer<GoogleMapController>();

  Future<void> pedirPermisoUbicacion() async {
    var status = await Permission.location.request();

    if (status.isGranted) {
      print("Permiso concedido");
      setState(() {
        permisoUbicacion = true;
      });
    } else if (status.isDenied) {
      print("Permiso denegado");
    } else if (status.isPermanentlyDenied) {
      openAppSettings();
    }
  }

  @override
  Widget build(BuildContext context) {
    var controller = ref.read(agenciaControllerProvider.notifier);
    var provider = ref.watch(agenciaControllerProvider);

    return ScaffoldBootstrap(
      appBar: AppBar(
        backgroundColor: context.theme.primaryColor,
        centerTitle: true,
        title: const Text(
          'Agencias',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: const CameraPosition(
              target: LatLng(-0.0021441, -78.4557637),
              zoom: 14.4746,
            ),
            myLocationEnabled: permisoUbicacion,
            myLocationButtonEnabled: permisoUbicacion,
            markers: provider.agenciaSeleccionada == null
                ? {}
                : {
                    Marker(
                      markerId: const MarkerId('marker_1'),
                      position: LatLng(
                        provider.agenciaSeleccionada!.latitud,
                        provider.agenciaSeleccionada!.longitud,
                      ),
                    )
                  },
            compassEnabled: true,
            onMapCreated: (GoogleMapController cx) {
              if (!mapController.isCompleted) {
                mapController.complete(cx);
              }
            },
          ),
          AgenciaDetalleCarousel(
            listaDetalle: provider.agencias,
            onTap: (agencia) {
              controller.seleccionarAgencia(mapController, agencia);
            },
          ),
        ],
      ),
    );
  }
}

class AgenciaDetalleCarousel extends StatelessWidget {
  List<AgenciaCajeroItem> listaDetalle;

  AgenciaDetalleCarousel(
      {Key? key, required this.listaDetalle, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return listaDetalle.isEmpty
        ? const CardsCarouselLoaderWidget()
        : SizedBox(
            height: 225,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listaDetalle.length,
              physics: defaultScrollPhysics,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    onTap.call(listaDetalle.elementAt(index));
                  },
                  child: CardWidget(
                    agenciaCajero: listaDetalle.elementAt(index),
                  ),
                );
              },
            ),
          );
  }

  final Function(AgenciaCajeroItem) onTap;
}

class CardsCarouselLoaderWidget extends StatelessWidget {
  const CardsCarouselLoaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 288,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: defaultScrollPhysics,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Container(
            width: 292,
            margin:
                const EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                    color: Theme.of(context).focusColor.withOpacity(0.1),
                    blurRadius: 15,
                    offset: const Offset(0, 5)),
              ],
            ),
            // child: Image.asset(
            //   'assets/images/loading_card.gif',
            //   fit: BoxFit.contain,
            // ),
          );
        },
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  AgenciaCajeroItem agenciaCajero;

  CardWidget({Key? key, required this.agenciaCajero}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 292,
      margin: const EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
              color: Theme.of(context).focusColor.withOpacity(0.1),
              blurRadius: 15,
              offset: const Offset(0, 5)),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              agenciaCajero.nombre,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: context.textTheme.bodyLarge!.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            MaterialButton(
                              padding: const EdgeInsets.all(0),
                              onPressed: () {
                                MapsLauncher.launchCoordinates(
                                    agenciaCajero.latitud,
                                    agenciaCajero.longitud);
                              },
                              color: context.theme.primaryColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              child: const Icon(Icons.directions,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: defaultPadding,
                        ),
                        Text(
                          agenciaCajero.descripcion,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: context.textTheme.bodyMedium!
                              .copyWith(color: Colors.black),
                        ),
                        const SizedBox(
                          height: defaultPadding,
                        ),
                        const Divider(
                          height: 1,
                        ),
                        const SizedBox(
                          height: defaultPadding,
                        ),
                        Text(
                          'Telefóno: ${agenciaCajero.telefono}',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: context.textTheme.bodyMedium!
                              .copyWith(color: Colors.black),
                        ),
                        const SizedBox(
                          height: defaultPadding,
                        ),
                        const Divider(
                          height: 1,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
