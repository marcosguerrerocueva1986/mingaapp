import 'dart:developer';
import 'package:bancamovilr/index.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:permission_handler/permission_handler.dart';

@RoutePage()
class QrScannerPage extends ConsumerStatefulWidget {
  const QrScannerPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _QrScannerPageState();
}

class _QrScannerPageState extends ConsumerState<QrScannerPage> {
  bool gettingData = false;
  MobileScannerController scannerController = MobileScannerController();

  @override
  void initState() {
    super.initState();
    _checkCameraPermission();
  }

  void _checkCameraPermission() async {
    final status = await Permission.camera.request();
    if (!status.isGranted) {
      appRouter.back();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: context.theme.primaryColor,
        centerTitle: true,
        title: const Text(
          'Pagar a un QR Deuna',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Stack(
        children: [
          _buildQrView(context),
          Column(
            children: [
              Expanded(
                child: LayoutBuilder(builder: (context, constraints) {
                  return Stack(
                    children: [
                      _buildScannerOverlay(),
                      Positioned(
                        top: constraints.maxHeight * 0.75,
                        left: 0,
                        right: 0,
                        child: Center(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black.withOpacity(0.4),
                            ),
                            child: Text(
                              'Escanea un código QR',
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                }),
              ),
              InkWell(
                onTap: () =>
                    appRouter.navigate(const PreguntasFrecuentesDeunaRoute()),
                child: Container(
                  color: Colors.black.withOpacity(0.4),
                  height: MediaQuery.of(context).size.height * 0.10,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Conoce cómo pagar con',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(color: Colors.white),
                        ),
                        const SizedBox(width: 8),
                        Image.asset(R.images.logoDeunaBlanco, height: 12),
                        const SizedBox(width: 8),
                        const Icon(Icons.arrow_forward_ios_rounded, color: Colors.white),
                      ]),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildQrView(BuildContext context) {
    return MobileScanner(
      controller: scannerController,
      onDetect: (capture) {
        final List<Barcode> barcodes = capture.barcodes;
        if (barcodes.isNotEmpty && !gettingData) {
          final String? code = barcodes.first.rawValue;
          if (code != null) {
            _onDetectQr(code);
          }
        }
      },
    );
  }

  void _onDetectQr(String code) {
    if (!gettingData) {
      gettingData = true;
      log('QR detectado: $code');
      appRouter.replace(PagoDeunaRoute(codigoQr: code));
    }
  }

  Widget _buildScannerOverlay() {
    return Center(
        child: CustomPaint(
      painter: _ScannerOverlayPainter(
          cutOutSize: MediaQuery.of(context).size.width * 0.7),
    ));
  }

  @override
  void dispose() {
    scannerController.dispose();
    super.dispose();
  }
}

class _ScannerOverlayPainter extends CustomPainter {
  final double cutOutSize;

  _ScannerOverlayPainter({
    required this.cutOutSize,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final width = size.width;
    final height = size.height;
    final centerX = width / 2;
    final centerY = height / 2;
    final cutOutHalf = cutOutSize / 2;

    final backgroundPaint = Paint()..color = Colors.black.withOpacity(0.5);

    final cutOutPath = Path()
      ..addRRect(
        RRect.fromRectAndRadius(
          Rect.fromLTWH(
            centerX - cutOutHalf,
            centerY - cutOutHalf,
            cutOutSize,
            cutOutSize,
          ),
          const Radius.circular(12),
        ),
      );

    canvas.saveLayer(Rect.largest, Paint());
    canvas.drawRect(Rect.largest, backgroundPaint);
    canvas.drawPath(
      cutOutPath,
      Paint()
        ..blendMode = BlendMode.dstOut
        ..style = PaintingStyle.fill,
    );
    canvas.restore();

    final paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 4
      ..style = PaintingStyle.stroke;

    const cornerLineLength = 40.0;
    const spaceCoverAll = 2.00;

    // Esquina superior izquierda
    canvas.drawLine(
      Offset(centerX - cutOutHalf - spaceCoverAll, centerY - cutOutHalf),
      Offset(centerX - cutOutHalf + cornerLineLength, centerY - cutOutHalf),
      paint,
    );
    canvas.drawLine(
      Offset(centerX - cutOutHalf, centerY - cutOutHalf),
      Offset(centerX - cutOutHalf, centerY - cutOutHalf + cornerLineLength),
      paint,
    );

    // Esquina superior derecha
    canvas.drawLine(
      Offset(centerX + cutOutHalf + spaceCoverAll, centerY - cutOutHalf),
      Offset(centerX + cutOutHalf - cornerLineLength, centerY - cutOutHalf),
      paint,
    );
    canvas.drawLine(
      Offset(centerX + cutOutHalf, centerY - cutOutHalf),
      Offset(centerX + cutOutHalf, centerY - cutOutHalf + cornerLineLength),
      paint,
    );

    // Esquina inferior izquierda
    canvas.drawLine(
      Offset(centerX - cutOutHalf, centerY + cutOutHalf),
      Offset(centerX - cutOutHalf, centerY + cutOutHalf - cornerLineLength),
      paint,
    );
    canvas.drawLine(
      Offset(centerX - cutOutHalf - spaceCoverAll, centerY + cutOutHalf),
      Offset(centerX - cutOutHalf + cornerLineLength, centerY + cutOutHalf),
      paint,
    );

    // Esquina inferior derecha
    canvas.drawLine(
      Offset(centerX + cutOutHalf, centerY + cutOutHalf),
      Offset(centerX + cutOutHalf, centerY + cutOutHalf - cornerLineLength),
      paint,
    );
    canvas.drawLine(
      Offset(centerX + cutOutHalf + spaceCoverAll, centerY + cutOutHalf),
      Offset(centerX + cutOutHalf - cornerLineLength, centerY + cutOutHalf),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}