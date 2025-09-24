import 'dart:async';

import 'package:bancamovilr/index.dart';
import 'package:bancamovilr/src/pages/general/posicion_consolidad/balance_visibility_controller.dart';
import 'package:bancamovilr/src/pages/general/posicion_consolidad/mis_productos_page.dart';
import 'package:bancamovilr/src/pages/general/posicion_consolidad/solicitudes_page.dart';
import 'package:bancamovilr/src/pages/seguridades/perfil/miperfil_page.dart';
import 'package:flutter/rendering.dart';

@RoutePage()
class PosicionConsolidadaPage extends ConsumerStatefulWidget {
  const PosicionConsolidadaPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PosicionConsolidadaPageState();
}

extension MoneyExtension on double? {
  String toMoney() {
    if (this == null) return '\$0.00';
    return '\$${this!.toStringAsFixed(2)}';
  }
}

extension DateExtension on DateTime? {
  String toStringFormat() {
    if (this == null) return '';
    return '${this!.day}/${this!.month}/${this!.year}';
  }
}

class _PosicionConsolidadaPageState extends ConsumerState<PosicionConsolidadaPage> 
with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final _pageControllerCuentas = PageController(viewportFraction: 0.9); 
  final _pageControllerInversiones = PageController(viewportFraction: 0.9);
  final _pageControllerPrestamos = PageController(viewportFraction: 0.9);
  final List<String> _carouselImagePaths = [
    'assets/images/imagenpromocion/promocion.png',
    'assets/images/imagenpromocion/promocion.png',
    'assets/images/imagenpromocion/promocion.png',
  ];
  int _selectedIndex = 0; 
  late PageController _pageController;
  late PageController _promoCarouselController;
  int _currentPromoIndex = 0;
  Timer? _promoCarouselTimer;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _pageController = PageController(initialPage: _selectedIndex);
    ref.read(posicionConsolidadaControllerProvider.notifier).actualizaConsolidado();
    _promoCarouselController = PageController(initialPage: 0);
    _startPromoCarouselAutoPlay();
  }   
  void _startPromoCarouselAutoPlay() {
    _promoCarouselTimer = Timer.periodic(const Duration(seconds: 8), (Timer timer) {
      if (_promoCarouselController.hasClients) { 
        int nextPage = (_currentPromoIndex + 1) % _carouselImagePaths.length;
        _promoCarouselController.animateToPage(
          nextPage,
          duration: const Duration(milliseconds: 300), 
          curve: Curves.easeOut,
        );
        setState(() {
          _currentPromoIndex = nextPage;
        });
      }
    });
  }
  @override
  void dispose() {
    _tabController.dispose();
    _pageControllerCuentas.dispose();
    _pageControllerInversiones.dispose();
    _pageControllerPrestamos.dispose();
    _pageController.dispose();
    _promoCarouselTimer?.cancel(); 
    _promoCarouselController.dispose();
    super.dispose();
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  @override
  Widget build(BuildContext context) { 
    late final List<Widget> screens = [
    _buildHomePageContent(context),
    AutoRouter.declarative(
      routes: (context) => [
        const MisProductosOverviewRoute(), 
      ],
    ),
    AutoRouter.declarative(routes: (context) => [ const SolicitudesRoute()]),
    AutoRouter.declarative(routes: (context) => [ const MiPerfilRoute()])
  ];

  return WillPopScope(
  onWillPop: () async {
    if (_selectedIndex != 0) {
      _onItemTapped(0);
      return false; 
    }
    final bool? shouldLogout = await showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Cerrar sesión'),
          content: const Text('¿Estás seguro de que quieres cerrar sesión?'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text('Cancelar'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: const Text('Sí'),
            ),
          ],
        );
      },
    );

    if (shouldLogout == true) {
      context.router.replaceAll([
        const LoginPrincipalRoute() 
      ]);
    }
    return false;
  },
  child: ScaffoldBootstrap(
    body: SafeArea(
      child: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: screens,
      ),
    ),
    bottomNavigationBar: BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined), 
          label: 'Inicio',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.post_add_rounded), 
          label: 'Mis Productos',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.description_outlined), 
          label: 'Solicitudes',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline), 
          label: 'Perfil',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      onTap: (index) {
           _pageController.animateToPage(
          index,
          duration: const Duration(milliseconds: 300),
          curve: Curves.ease,
        );
      },
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      ),
    ),
    );
  }

  Widget _buildHomePageContent(BuildContext context) {
    var controller = ref.read(posicionConsolidadaControllerProvider.notifier);
    var provider = ref.watch(posicionConsolidadaControllerProvider);
    var loginProvider = ref.watch(loginControllerProvider);
    var nombreCliente = loginProvider.loginRespuesta?.nombre ?? 'Usuario';

    if (provider.isLoading) {
      return const Center(
        child: CircularProgressIndicator(), 
      );
    } else if (provider.errorMessage != null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, color: Colors.blue, size: 40),
            const SizedBox(height: 10),
            Text(
              provider.errorMessage!,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.blue, fontSize: 16),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => controller.actualizaConsolidado(), 
              child: const Text('Reintentar'),
            ),
          ],
        ),
      );
    } else if (provider.posicionConsolidada == null) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'No hay datos de posición consolidada disponibles.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.blue),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => controller.actualizaConsolidado(), 
            child: const Text('Cargar datos'),
          ),
        ],
      ),
    );
  }
  return RefreshIndicator(
    onRefresh: () async {
      await controller.actualizaConsolidado();
    }, 
    child: SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
        child: Container(
          decoration: const BoxDecoration(),
            child: Column(
              children: <Widget> [
                //contaniner de logo y bienvenida
                Container(
                  height: 80,
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 5.0,
                        left: 20.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget> [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget> [
                                Image.asset('assets/images/logopantallamenu.png', width: 130, height: 90),
                              ],
                            ),
                          ]
                        ),
                      ),
                      Positioned(
                        top: 20.0,
                        right: 20.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget> [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget> [
                                Image.asset('assets/images/bienvenidos.png', width: 60, height: 50),
                              ],
                            ),                          
                          ]
                        ),
                      ),
                      Positioned(
                        top: 55.0,
                        right: defaultPadding,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget> [
                              Text(nombreCliente.toUpperCase(), 
                                style: const TextStyle(
                                color: Color.fromRGBO(0, 96, 153, 10),
                                fontSize: 13,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ]
                        ),
                      )
                    ],
                  ),
                ),               
                //container de logos de promociones
                Container(
                  height: 120,
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: SizedBox(
                    child: PageView.builder(
                      controller: _promoCarouselController,
                      itemCount: _carouselImagePaths.length,
                      onPageChanged: (int page) {
                        setState(() {
                          _currentPromoIndex = page;
                        });
                      },
                      itemBuilder: (context, index) {
                        final String imagePath = _carouselImagePaths[index];
                        return Padding(
                          padding: EdgeInsets.zero,
                          child: Card(
                            margin: EdgeInsets.zero,
                            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: CardImagen(
                                imagePath: imagePath,
                                onClick: () {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text('Clic en ${imagePath.split('/').last}')),
                                  );
                                },
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                //container de mis productos
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Mis productos:',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: ContextExtension(context).getTitlePrimaryColor(), 
                          ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  alignment: Alignment.center,
                  height: 250,
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                  margin: EdgeInsets.zero,
                  child: Column(
                    children: [
                      TabBar(
                        controller: _tabController,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicatorPadding: const EdgeInsets.fromLTRB(1,0,0,0),
                        dividerColor: Colors.transparent,
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: const Color.fromRGBO(48, 155, 217, 1),
                        ),
                        labelColor: Colors.white, 
                        labelStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                        unselectedLabelColor: const Color.fromRGBO(48, 155, 217, 1), 
                        tabs: const [
                          Tab(text: 'Ahorros'),
                          Tab(text: 'Créditos'),
                          Tab(text: 'Inversiones'),
                        ],
                      ),
                      SizedBox(
                          height: 200,
                          child: TabBarView(
                            controller: _tabController,
                            children: [
                              // Pestaña de Ahorros
                              _buildCarousel(
                                context,
                                provider.posicionConsolidada?.cuentas ?? [],
                                _pageControllerCuentas,
                                (item) => CardInformacion(
                                  title: item.tipo ?? 'Cuenta',
                                  detalle: 'Cuenta N°: ',
                                  accountHolder: nombreCliente,
                                  accountNumber: item.codigo ?? 'N/A',
                                  balance: item.saldo ?? 0.0,
                                  backgroundImage: const AssetImage('assets/images/imagencardinformacion.jpg'),
                                  isBalanceVisible: ref.watch(balanceVisibilityProvider).isBalanceVisible(item.codigo ?? ''),
                                  onToggleVisibility: () {
                                    ref.read(balanceVisibilityProvider.notifier).toggleAllBalances();
                                  },
                                  onTap: () {
                                    _pageController.animateToPage(1,duration: const Duration(milliseconds: 300),
                                          curve: Curves.ease,
                                      ).then((_) {
                                          context.router.navigate(
                                              MisProductosRouterRoute(children: [
                                                  CuentaDetalleRoute(cuenta: item),
                                              ]),
                                          );
                                      });
                                  },
                                ),
                                'No hay cuentas de ahorro disponibles.',
                              ),
                    
                              // Pestaña de Créditos
                              Padding(
                                padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                                child: _buildCarousel(
                                  context,
                                  provider.posicionConsolidada?.prestamos ?? [],
                                  _pageControllerPrestamos,
                                  (item) => CardInformacion(
                                    title: item.tipo ?? 'Préstamo',
                                    detalle: 'N° OPERACIÓN: ',
                                    accountHolder: nombreCliente,
                                    accountNumber: item.codigo ?? 'N/A',
                                    balance: item.saldo ?? 0.0,
                                    backgroundImage: const AssetImage('assets/images/imagencardinformacion.jpg'),
                                    isBalanceVisible: ref.watch(balanceVisibilityProvider).isBalanceVisible(item.codigo ?? ''),
                                    onToggleVisibility: () {
                                      ref.read(balanceVisibilityProvider.notifier).toggleAllBalances();
                                    },
                                    onTap: () {
                                        _pageController.animateToPage(1, duration: const Duration(milliseconds: 300),
                                            curve: Curves.ease,
                                        ).then((_) {
                                            context.router.navigate(
                                                MisProductosRouterRoute(children: [
                                                    PrestamoDetalleRoute(prestamo: item),
                                                ]),
                                            );
                                        });
                                    },
                                  ),
                                  'No hay créditos disponibles.',
                                ),
                              ),
                    
                              // Pestaña de Inversiones
                              _buildCarousel(
                                context,
                                provider.posicionConsolidada?.inversiones ?? [],
                                _pageControllerInversiones,
                                (item) => CardInformacion(
                                  title: item.tipo.toString().toUpperCase() ?? 'Inversión', 
                                  detalle: 'N° OPERACIÓN: ',
                                  accountHolder: nombreCliente,
                                  accountNumber: item.codigo ?? 'N/A',
                                  balance: item.monto ?? 0.0,                   
                                  backgroundImage: const AssetImage('assets/images/imagencardinformacion.jpg'),
                                  isBalanceVisible: ref.watch(balanceVisibilityProvider).isBalanceVisible(item.codigo ?? ''),
                                  onToggleVisibility: () {
                                    ref.read(balanceVisibilityProvider.notifier).toggleAllBalances();
                                  },
                                  onTap: () {
                                      _pageController.animateToPage(1,duration: const Duration(milliseconds: 300),
                                          curve: Curves.ease,
                                      ).then((_) {
                                          context.router.navigate(
                                              MisProductosRouterRoute(children: [
                                                  DepositoDetalleRoute(deposito: item),
                                              ]),
                                          );
                                      });
                                  },
                                ),  
                                'No hay inversiones disponibles.',
                              ),
                            ],
                          ),
                        ),  
                    ],
                  ),
                ),
                //container de servicios
                Padding(
                  padding: const EdgeInsets.fromLTRB(20,0,20,0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Descubre todo lo que tenemos para ti:',
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
                  child: const ServiciosWidget(),
                ),
              ],
            ),
          ),
        ),
    );
  }}

  Widget _buildCarousel<T>(
    BuildContext context,
    List<T> items,
    PageController pageController,
    Widget Function(T item) cardBuilder,
    String emptyMessage,
  ) {
    if (items.isEmpty) {
      return Center(
        child: Text(
          emptyMessage,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.blue),
        ),
      );
    }
    // ignore: unnecessary_null_comparison
    if (pageController == null) {
      return const Center(child: CircularProgressIndicator());
    }
    return SizedBox(
      child: PageView.builder(
        controller: pageController,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(0,0,0,0),
            child: cardBuilder(items[index]),
          );
        },
      ),
    );
  }

  class CardImagen extends StatelessWidget {
    final String imagePath; 
    final VoidCallback onClick; 

    const CardImagen({
      Key? key,
      required this.imagePath,
      required this.onClick,
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return GestureDetector( 
        onTap: onClick,
        child: Card( 
          elevation: 0,
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          child: Ink.image( 
            image: AssetImage(imagePath),
            fit: BoxFit.fill, 
            child: InkWell( 
              onTap: onClick,           
              child: Container(),
            ),
          ),
        ),
      );
    }
  }

class CardInformacion extends StatelessWidget {
    final String title;
    final String detalle;
    final String accountHolder;
    final String accountNumber;
    final double balance;
    final ImageProvider? backgroundImage;
    final Color? backgroundColor;
    final bool isBalanceVisible; 
    final VoidCallback onToggleVisibility;
    final VoidCallback? onTap;

    const CardInformacion({
      super.key,
      required this.title,
      required this.detalle,
      required this.accountHolder,
      required this.accountNumber,
      required this.balance,
      this.backgroundImage,
      this.backgroundColor,
      required this.isBalanceVisible, 
      required this.onToggleVisibility, 
      this.onTap,
    });

  void _compartirInformacionDeCuenta() {
    final String textoACompartir =
      '$title\n'
      '$accountHolder\n'
      'Número: $accountNumber\n'
      '\n';

    Share.share(textoACompartir);
  }
  @override
  Widget build(BuildContext context) {
      return GestureDetector(
        onTap: onTap,
        child: Card(
          elevation: 0,
          margin: const EdgeInsets.fromLTRB(0, 5, 0, 5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          color: Colors.transparent,
          child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/imagencardinformacion.jpg'),
                  fit: BoxFit.fill,
                  alignment: Alignment.center
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding, vertical: defaultPadding),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  <Widget> [
                          SizedBox(
                            width: 250,
                            child: Text(
                              title,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              softWrap: true,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                    blurRadius: 2.0,
                                    color: Colors.white,
                                    offset: Offset.zero
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget> [
                            const SizedBox(width: 8),
                            ElevatedButton (
                              onPressed: onToggleVisibility,
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent, 
                                  foregroundColor: Colors.white, 
                                  elevation: 0, 
                                  padding: EdgeInsets.zero, 
                                  minimumSize: Size.zero, 
                                  tapTargetSize: MaterialTapTargetSize.shrinkWrap, 
                                ),
                                child: Ink.image(
                                  image: const AssetImage('assets/images/ojocuenta.png'),
                                  fit: BoxFit.fill,
                                  width: 24,
                                  height: 15,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text(
                      accountHolder,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            blurRadius: 2.0,
                            color: Colors.white,
                            offset: Offset.zero
                          ),
                        ],
                      ),
                  ),
                  Row(
                    children: [
                          Text(
                          detalle,
                          style: const TextStyle(
                          color: Colors.white,
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              blurRadius: 2.0,
                              color: Colors.white,
                              offset: Offset.zero
                            ),
                          ],
                        ),
                      ),
                      Text(
                          accountNumber,
                          style: const TextStyle(
                          color: Colors.white,
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              blurRadius: 2.0,
                              color: Colors.white,
                              offset: Offset.zero
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget> [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget> [
                          const Text(
                              'Saldo Disponible: ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13.0,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                    blurRadius: 2.0,
                                    color: Colors.white,
                                    offset: Offset.zero
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              isBalanceVisible ? '\$${balance.toStringAsFixed(2)}' : '********',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 26.0,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                  blurRadius: 2.0,
                                  color: Colors.white,
                                  offset: Offset.zero
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(width: 8),
                          Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget> [
                            ElevatedButton (
                              onPressed: _compartirInformacionDeCuenta,
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent, 
                                  foregroundColor: Colors.white, 
                                  elevation: 0, 
                                  padding: EdgeInsets.zero, 
                                  minimumSize: Size.zero, 
                                  tapTargetSize: MaterialTapTargetSize.shrinkWrap, 
                                ),
                                child: Ink.image(
                                  image: const AssetImage('assets/images/compartircuenta.png'),
                                  fit: BoxFit.fill,
                                  width: 140,
                                  height: 20,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
  }

class ServiciosWidget extends ConsumerWidget {
const ServiciosWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref){
    final appRouter = AutoRouter.of(context);
    var controller = ref.read(cuentaDetalleControllerProvider.notifier);
    var provider = ref.watch(transferenciaControllerProvider);
    return Container(
      margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
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
                case "transferirdineroRoute":
                  appRouter.push(const SeleccionBeneficiarioRoute()); 
                  break;
                case "estadocuentaRoute":
                  appRouter.push(const MantenimientoRoute()); 
                  break;
                case "deunaRoute":
                  appRouter.push(const MantenimientoRoute()); 
                  break;
                case "pagarserviciosRoute":
                  controller.irPagoServicio(); 
                  break;
                case "nuestrasagenciasRoute":
                  appRouter.push(const AgenciaRoute()); 
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
class Servicio {
final String imagePath;
final String title;
final String actionRouteName; 

Servicio({required this.imagePath, required this.title, required this.actionRouteName});
}
  final List listaServicios = [
    Servicio(imagePath: "assets/images/transferirdinero.png", title:"Tranferir dinero", actionRouteName:"transferirdineroRoute"),
    Servicio(imagePath: "assets/images/estadocuenta.png", title:"Estado cuenta", actionRouteName:"estadocuentaRoute"),
    Servicio(imagePath: "assets/images/deuna.png", title:"De una", actionRouteName:"deunaRoute"),
    Servicio(imagePath: "assets/images/pagarservicios.png", title:"Pagar servicios", actionRouteName:"pagarserviciosRoute"),
    Servicio(imagePath: "assets/images/nuestrasagencias.png", title:"Nuestras agencias", actionRouteName:"nuestrasagenciasRoute"),
  ];

  class TitleSectionWidget extends StatelessWidget {
    const TitleSectionWidget({
      super.key,
      required this.title,f
    });

    final String title;

    @override
    Widget build(BuildContext context) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Text(
          title,
          style:
              context.textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
        ),
      );
    }
  }

  class DrawerItemWidget extends StatelessWidget {
    const DrawerItemWidget({
      super.key,
      required this.icon,
      required this.title,
      required this.onTap,
    });

    final IconData icon;
    final String title;
    final VoidCallback onTap;

    @override
    Widget build(BuildContext context) {
      return GestureDetector(
        onTap: onTap,
        behavior: HitTestBehavior.translucent,
        child: Opacity(
          opacity: 1.00,
          child: SizedBox(
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: defaultPadding,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        icon,
                        size: 20.0,
                        // color: color,
                      ),
                      const SizedBox(
                        width: defaultPadding,
                      ),
                      Text(
                        title,
                        style: Theme.of(context).textTheme.titleMedium,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: defaultPadding,
                ),
              ],
            ),
          ),
        ),
      );
    }
  }

  Widget seccionCuentas(PosicionConsolidadaState provider) {
    return provider.posicionConsolidada?.cuentas != null
        ? SizedBox(
            child: ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) => separadorListaItems,
              itemBuilder: (context, position) {
                final cuenta = provider.posicionConsolidada!.cuentas[position];
                return GestureDetector(
                  onTap: () =>
                      appRouter.navigate(CuentaDetalleRoute(cuenta: cuenta)),
                  child: posicionConsolidadaItem(
                      "Número de cuenta",
                      cuenta.codigo,
                      "Tipo cuenta",
                      cuenta.tipo,
                      "Estado",
                      cuenta.estado,
                      "Saldo Disponible",
                      cuenta.saldo.toMoney(),
                      oddColour: Colors.white),
                );
              },
              itemCount: provider.posicionConsolidada?.cuentas.length ?? 0,
            ),
          )
        : const SizedBox(height: 400.0, child: Center(child: SizedBox()));
  }

  Widget seccionInversiones(PosicionConsolidadaState provider) {
    return provider.posicionConsolidada?.inversiones != null
        ? SizedBox(
            child: ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index) => separadorListaItems,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, position) {
                final inversion =
                    provider.posicionConsolidada!.inversiones[position];
                return GestureDetector(
                  onTap: () => appRouter
                      .navigate(DepositoDetalleRoute(deposito: inversion)),
                  child: posicionConsolidadaItem(
                      "Número",
                      inversion.codigo,
                      "Tipo DPF",
                      inversion.estado,
                      "Monto",
                      inversion.monto.toMoney(),
                      "Fecha vencimiento",
                      inversion.fechaVencimiento?.toStringFormat() ?? '',
                      oddColour: Colors.white),
                );
              },
              itemCount: provider.posicionConsolidada?.inversiones.length ?? 0,
            ),
          )
        : const SizedBox(height: 400.0, child: Center(child: SizedBox()));
  }

  Widget seccionPrestamos(PosicionConsolidadaState provider) {
    return provider.posicionConsolidada?.prestamos != null
        ? SizedBox(
            child: ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index) => separadorListaItems,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, position) {
                final prestamo =
                    provider.posicionConsolidada!.prestamos[position];
                return GestureDetector(
                  onTap: () => appRouter
                      .navigate(PrestamoDetalleRoute(prestamo: prestamo)),
                  child: posicionConsolidadaItem(
                      "Número de crédito",
                      prestamo.codigo,
                      "Tipo crédito",
                      prestamo.tipo,
                      "Deuda inicial",
                      prestamo.deudaInicial.toMoney(),
                      "Saldo",
                      prestamo.saldo.toMoney(),
                      oddColour: Colors.white),
                );
              },
              itemCount: provider.posicionConsolidada?.prestamos.length ?? 0,
            ),
          )
        : const SizedBox(height: 400.0, child: Center(child: SizedBox()));
  }

  Widget posicionConsolidadaItem(
          String numeroCuenta,
          String number,
          String tipo,
          String type,
          String saldoContable,
          String balanceAvailable,
          String saldo,
          String balance,
          {Color oddColour = Colors.white}) =>
      Card(
        // elevation: elevacionItem,
        child: Container(
          // decoration: defaultItemBoxDecoration,
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(numeroCuenta),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(number)
                ],
              ),
              const SizedBox(
                height: defaultPadding,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(tipo),
                  const SizedBox(
                    width: 8,
                  ),
                  Flexible(
                    child: Text(type,
                        textAlign: TextAlign.right,
                        overflow: TextOverflow.ellipsis),
                  ),
                ],
              ),
              const SizedBox(
                height: defaultPadding,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(saldoContable),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(balanceAvailable, textAlign: TextAlign.right)
                ],
              ),
              const SizedBox(
                height: defaultPadding,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(saldo),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(balance)
                ],
              ),
            ],
          ),
        ),
      );
  
 //child: Center(
          /*Row
          child: ReactiveForm(
            formGroup: controller.form,
            child: RefreshIndicator(
              onRefresh: controller.actualizaConsolidado,
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: SizedBox(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Bienvenido (a)',
                              textAlign: TextAlign.left,
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            Text(
                              nombreCliente,
                              textAlign: TextAlign.left,
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        ),
                      )),
                      fechaUltimoAcceso.isEmpty
                          ? const SizedBox()
                          : Expanded(
                              child: SizedBox(
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'Últ. Acceso',
                                    textAlign: TextAlign.left,
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                  Text(
                                    fechaUltimoAcceso,
                                    textAlign: TextAlign.right,
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                ],
                              ),
                            ))
                    ],
                  ),
                  const SizedBox(
                    height: defaultPadding,
                  ),
                  const Divider(),
                  if ((provider.posicionConsolidada?.cuentas.length ?? 0) >
                      0) ...[
                    const SizedBox(
                      height: defaultPadding * 2,
                    ),
                    GestureDetector(
                      // onTap: mainViewMode.expandirCuentas,
                      behavior: HitTestBehavior.translucent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "CUENTAS",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                    color: context.getTitlePrimaryColor()),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: defaultPadding,
                    ),
                    seccionCuentas(provider),
                  ],
                  if ((provider.posicionConsolidada?.inversiones.length ?? 0) >
                      0) ...[
                    const SizedBox(
                      height: defaultPadding * 2,
                    ),
                    GestureDetector(
                      // onTap: mainViewMode.expandirCuentas,
                      behavior: HitTestBehavior.translucent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "INVERSIONES",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                    color: context.getTitlePrimaryColor()),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: defaultPadding,
                    ),
                    seccionInversiones(provider),
                  ],
                  if ((provider.posicionConsolidada?.prestamos.length ?? 0) >
                      0) ...[
                    const SizedBox(
                      height: defaultPadding * 2,
                    ),
                    GestureDetector(
                      // onTap: mainViewMode.expandirCuentas,
                      behavior: HitTestBehavior.translucent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "PRÉSTAMOS",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                    color: context.getTitlePrimaryColor()),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: defaultPadding,
                    ),
                    seccionPrestamos(provider),
                  ],
                ],
              ),
            ),
          ),
        */
        //),