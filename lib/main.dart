import 'dart:async';
import 'dart:io';

import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:no_screenshot/no_screenshot.dart';

import 'index.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();
  await GetStorage.init();
  // await initializeDateFormatting('es', '');

  await NoScreenshot.instance.screenshotOn();

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  late Timer _timer;

  void _resetTimer() {
    _timer.cancel();
    Configuracion.ultimaVezActividad = DateTime.now();
    _timer = Timer(Duration(seconds: Configuracion.segundosInactividad), () {
      if (HttpClientHelper.token != '') {
        HttpClientHelper.token = '';
        appRouter.pushAndPopUntil(const LoginRoute(), predicate: (_) => false);
      }
    });
  }

  @override
  void initState() {
    super.initState();
    Configuracion.ultimaVezActividad = DateTime.now();
    _timer = Timer(Duration(seconds: Configuracion.segundosInactividad), () {
      if (HttpClientHelper.token != '') {
        HttpClientHelper.token = '';
        appRouter.pushAndPopUntil(const LoginRoute(), predicate: (_) => false);
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeMode = ref.watch(themeInfoProvider);

    return MaterialApp.router(
      themeMode: themeMode,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Color(int.parse("0xFF0055B7")),
            brightness: Brightness.light,
            // onPrimary: Color(int.parse("0x0055b7")),
          ),
          cardTheme: CardTheme(
              elevation: 0,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                    color: Colors.grey.withOpacity(0.3),
                    width: 1.0), // Cambia el color y ancho del borde aquí
                borderRadius: BorderRadius.circular(
                    8.0), // Personaliza el radio de borde según lo necesites
              ),
              // color: Colors.white,
              surfaceTintColor: Colors.transparent),
          inputDecorationTheme: InputDecorationTheme(
            errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red.withOpacity(0.3))),
            focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red.withOpacity(0.3))),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.withOpacity(0.3))),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.withOpacity(0.3))),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.withOpacity(0.3))),
          ),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Color(int.parse("0xFF0055B7")),
            foregroundColor: Color(int.parse("0xFF0055B7")),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          useMaterial3: true,
          textTheme: GoogleFonts.aBeeZeeTextTheme(
              ThemeData(brightness: Brightness.light).textTheme)),
      darkTheme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Color(int.parse("0xFF0055B7")),
            brightness: Brightness.dark,
            // onPrimary: Colors.white
          ),
          inputDecorationTheme: InputDecorationTheme(
            errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red.withOpacity(0.3))),
            focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red.withOpacity(0.3))),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.withOpacity(0.3))),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.withOpacity(0.3))),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.withOpacity(0.3))),
          ),
          filledButtonTheme: FilledButtonThemeData(
              style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.grey.shade700))),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.grey.shade700,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          buttonTheme: const ButtonThemeData(
            buttonColor: Colors.yellow,
            textTheme: ButtonTextTheme.primary,
          ),
          useMaterial3: true,
          textTheme: GoogleFonts.aBeeZeeTextTheme(
              ThemeData(brightness: Brightness.dark).textTheme)),
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter.config(),
      builder: (BuildContext context, Widget? child) {
        final MediaQueryData data = MediaQuery.of(context);

        return LifeCycleManagerWidget(
          navigatorKey: appRouter.navigatorKey,
          child: GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () => _resetTimer(),
            onPanDown: (_) => _resetTimer(),
            onPanUpdate: (_) => _resetTimer(),
            child: MediaQuery(
              data: data.copyWith(
                  textScaleFactor: data.textScaleFactor.clamp(0.8, 0.85)),
              child: child!,
            ),
          ),
        );
      },
    );
  }
}
