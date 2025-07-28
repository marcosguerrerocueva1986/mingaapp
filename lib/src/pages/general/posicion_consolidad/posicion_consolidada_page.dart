import 'package:bancamovilr/index.dart';

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

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _pageController = PageController(initialPage: _selectedIndex);
    ref.read(posicionConsolidadaControllerProvider.notifier).actualizaConsolidado();
  }   

  @override
  void dispose() {
    _tabController.dispose();
    _pageControllerCuentas.dispose();
    _pageControllerInversiones.dispose();
    _pageControllerPrestamos.dispose();
    _pageController.dispose();
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
    const Center(child: Text('Pantalla de Solicitudes', style: TextStyle(fontSize: 24))),
    const Center(child: Text('Pantalla de Perfil', style: TextStyle(fontSize: 24))),
  ];

    return ScaffoldBootstrap(
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
        onTap: _onItemTapped,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
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
                                color: Colors.blue,
                                fontSize: 14,
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
                      controller: PageController(viewportFraction: 1),
                      itemCount: _carouselImagePaths.length,
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
                                  //Puedes navegar a otra pantalla, mostrar un diálogo, etc.
                                  //context.router.push(MiNuevaRuta(imagen: imagePath));
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
                          color: Colors.blue,
                        ),
                        labelColor: Colors.white, 
                        labelStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                        unselectedLabelColor: Colors.blue, 
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
                                  accountHolder: nombreCliente,
                                  accountNumber: item.codigo ?? 'N/A',
                                  balance: item.saldo ?? 0.0,
                                  backgroundImage: const AssetImage('assets/images/imagencardinformacion.jpg'),
                                ),
                                'No hay cuentas de ahorro disponibles.',
                              ),
                    
                              // Pestaña de Créditos
                              _buildCarousel(
                                context,
                                provider.posicionConsolidada?.prestamos ?? [],
                                _pageControllerPrestamos,
                                (item) => CardInformacion(
                                  title: item.tipo ?? 'Préstamo',
                                  accountHolder: nombreCliente,
                                  accountNumber: item.codigo ?? 'N/A',
                                  balance: item.saldo ?? 0.0,
                                  backgroundImage: const AssetImage('assets/images/imagencardinformacion.jpg'),
                                ),
                                'No hay créditos disponibles.',
                              ),
                    
                              // Pestaña de Inversiones
                              _buildCarousel(
                                context,
                                provider.posicionConsolidada?.inversiones ?? [],
                                _pageControllerInversiones,
                                (item) => CardInformacion(
                                  title: item.estado ?? 'Inversión', 
                                  accountHolder: nombreCliente,
                                  accountNumber: item.codigo ?? 'N/A',
                                  balance: item.monto ?? 0.0,                   
                                  backgroundImage: const AssetImage('assets/images/imagencardinformacion.jpg'),
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
  }
}

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
            padding: const EdgeInsets.symmetric(horizontal: 0),
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
    final String accountHolder;
    final String accountNumber;
    final double balance;
    final ImageProvider? backgroundImage;
    final Color? backgroundColor;

    const CardInformacion({
      super.key,
      required this.title,
      required this.accountHolder,
      required this.accountNumber,
      required this.balance,
      this.backgroundImage,
      this.backgroundColor,
    });

    @override
    Widget build(BuildContext context) {
      return GestureDetector(
        child: Card(
          elevation: 0,
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
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
                          Text(
                            title,
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                  blurRadius: 2.0,
                                  color: Colors.white70,
                                  offset: Offset(1.0, 1.0)
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget> [
                        ElevatedButton (
                          onPressed: () {
                              print('boton ojito');
                            },
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
                  Text(
                      accountHolder,
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            blurRadius: 2.0,
                            color: Colors.white70,
                            offset: Offset(1.0, 1.0)
                          ),
                        ],
                      ),
                  ),
                  Row(
                    children: [
                      const Text(
                          'Cuenta N°- ',
                          style: TextStyle(
                          color: Colors.white70,
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              blurRadius: 2.0,
                              color: Colors.white70,
                              offset: Offset(1.0, 1.0)
                            ),
                          ],
                        ),
                      ),
                      Text(
                          accountNumber,
                          style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              blurRadius: 2.0,
                              color: Colors.white70,
                              offset: Offset(1.0, 1.0)
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 50.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget> [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget> [
                          const Text(
                              'Saldo Disponible: ',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 13.0,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                    blurRadius: 2.0,
                                    color: Colors.white70,
                                    offset: Offset(1.0, 1.0)
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              balance.toMoney(),
                              style: const TextStyle(
                                color: Colors.white70,
                                fontSize: 26.0,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                  blurRadius: 2.0,
                                  color: Colors.white70,
                                  offset: Offset(1.0, 1.0)
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget> [
                        ElevatedButton (
                          onPressed: () {
                              print('boton ojito');
                            },
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
              ),
            
            ),
        ),
      );
    }
  }

  class ServiciosWidget extends StatelessWidget {
    const ServiciosWidget({super.key});

    @override
    Widget build(BuildContext context){
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
          children: listaServicios.map((servicio) => ElevatedButton(
              onPressed: () {
                appRouter.push(const PosicionConsolidadaRoute());
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
                image: AssetImage(servicio),
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

  final List listaServicios = [
    "assets/images/transferirdinero.png",
    "assets/images/estadocuenta.png",
    "assets/images/deuna.png",
    "assets/images/pagarservicios.png",
    "assets/images/nuestrasagencias.png",
  ];

  class TitleSectionWidget extends StatelessWidget {
    const TitleSectionWidget({
      super.key,
      required this.title,
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