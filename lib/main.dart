import 'dart:async';
import 'dart:io';

import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:no_screenshot/no_screenshot.dart';
import 'package:pointycastle/asymmetric/api.dart';

import 'index.dart';
import 'rsa_key_manager.dart';
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
// RSAPrivateKey? _privateKey;
// RSAPublicKey? _publicKey;
  void _resetTimer() {
    _timer.cancel();
    Configuracion.ultimaVezActividad = DateTime.now();
    _timer = Timer(Duration(seconds: Configuracion.segundosInactividad), () {
      if (HttpClientHelper.token != '') {
        HttpClientHelper.token = '';
        appRouter.pushAndPopUntil(const LoginPrincipalRoute(), predicate: (_) => false);
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
        appRouter.pushAndPopUntil(const LoginPrincipalRoute(), predicate: (_) => false);
      }
    });
    //_printGeneratedKeys();
  }

// void _printGeneratedKeys() async {
//     final keyPair = await generateRSAKeyPair(); 
//     _privateKey = keyPair.privateKey;
//     _publicKey = keyPair.publicKey;

//     final publicKeyPem = encodePublicKeyToPem(keyPair.publicKey);
//     final privateKeyPem = encodePrivateKeyToPem(keyPair.privateKey);
//     print("\n================ CLAVE PÚBLICA (PEM) ================");
//     print(publicKeyPem);
//     print("====================================================");

//     print("\n================ CLAVE PRIVADA (PEM) ================");
//     print(privateKeyPem);
//     print("=====================================================");
//     const messageToSign = "Este es el contenido original del documento a firmar.";
  
//       final hashToSign = hashMessage(messageToSign); 
//       if (hashToSign == null || hashToSign.isEmpty) {
//         print("ERROR: El hash no se generó correctamente.");
//         return;
//       }
//       final signatureBytes = signHash(_privateKey!, hashToSign);
//       final finalSignature = signatureToBase64(signatureBytes);
//       print('\n--- FIRMA DIGITAL (Base64) ---');
//       print('Mensaje: "$messageToSign"');
//       print('Firma:');
//       print(finalSignature);
//       print('------------------------------');
//   }


  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeMode = ref.watch(themeInfoProvider);
    //ref.listen(loginControllerProvider, (previous, next) {});
    return MaterialApp.router(
      themeMode: themeMode,
      theme: ThemeData(
          //colorScheme:ColorScheme.fromSeed(seedColor: Color(int.parse("0x0055b7"))),
          colorScheme:ColorScheme.fromSeed(seedColor: Color(int.parse("0x1291c4ff"))),
          cardTheme: CardThemeData(
              elevation: 0,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                    color: Colors.grey.withOpacity(0.3),
                    width: 1.0), // Cambia el color y ancho del borde aquí
                borderRadius: BorderRadius.circular(
                    8.0), // Personaliza el radio de borde según lo necesites
              ),
               //color: Colors.white,
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
              ThemeData(brightness: Brightness.light).textTheme),
              elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 8.0,
          shadowColor: Colors.green,
          backgroundColor: Colors.green,
          disabledBackgroundColor: Colors.green.withOpacity(0.4),
          disabledForegroundColor: Colors.grey,
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
          textStyle: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        )
              )
              
              ),

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
      routerConfig:  appRouter.config(),
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
