import 'dart:developer';
import 'package:bancamovilr/index.dart';
import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart';
import 'package:google_mlkit_barcode_scanning/google_mlkit_barcode_scanning.dart';
import 'package:permission_handler/permission_handler.dart';

@RoutePage()
class QrScannerPage extends ConsumerStatefulWidget {
  const QrScannerPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _QrScannerPageState();
}

class _QrScannerPageState extends ConsumerState<QrScannerPage> {
  bool gettingData = false;
  CameraController? _cameraController;
  late BarcodeScanner _barcodeScanner;
  bool _isBusy = false;

  @override
  void initState() {
  super.initState();
  _barcodeScanner = BarcodeScanner(
    formats: [BarcodeFormat.qrCode],
  );
  _init();
}

Future<void> _init() async {
  final status = await Permission.camera.request();
  if (!status.isGranted) {
    appRouter.back();
    return;
  }

  await _initCamera();
}

  Future<void> _initCamera() async {
  final cameras = await availableCameras();
  final backCamera = cameras.first;

  _cameraController = CameraController(
    backCamera,
    ResolutionPreset.medium,
    enableAudio: false,
  );

  await _cameraController!.initialize();
  await _cameraController!.startImageStream((image) async {
    if (_isBusy) return;
    _isBusy = true;

    final inputImage = _processCameraImage(image);
    final barcodes = await _barcodeScanner.processImage(inputImage);

    if (barcodes.isNotEmpty) {
      final code = barcodes.first.rawValue;
      if (code != null) {
        _onDetectQr(code);
      }
    }

    _isBusy = false;
  });

  setState(() {});
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
                    appRouter.replace(const PreguntasFrecuentesDeunaRoute()),
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
    if (_cameraController == null ||
        !_cameraController!.value.isInitialized) {
      return const Center(child: CircularProgressIndicator());
    }

    return CameraPreview(_cameraController!);
  }

    InputImage _processCameraImage(CameraImage image) {
  final WriteBuffer allBytes = WriteBuffer();
  for (final Plane plane in image.planes) {
    allBytes.putUint8List(plane.bytes);
  }
  final bytes = allBytes.done().buffer.asUint8List();

  final Size imageSize =
      Size(image.width.toDouble(), image.height.toDouble());

  final camera = _cameraController!.description;
  final imageRotation =
      InputImageRotationValue.fromRawValue(camera.sensorOrientation) ??
          InputImageRotation.rotation0deg;

  final inputImageFormat =
      InputImageFormatValue.fromRawValue(image.format.raw) ??
          InputImageFormat.nv21;

  final metadata = InputImageMetadata(
    size: imageSize,
    rotation: imageRotation,
    format: inputImageFormat,
    bytesPerRow: image.planes.first.bytesPerRow,
  );

  return InputImage.fromBytes(
    bytes: bytes,
    metadata: metadata,
  );
}
  
  Future<void> _onDetectQr(String code) async {
  if (gettingData) return;

  gettingData = true;
  log('QR detectado: $code');

  await _cameraController?.stopImageStream();

  if (mounted) {
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
    _cameraController?.dispose();
    _barcodeScanner.close();
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