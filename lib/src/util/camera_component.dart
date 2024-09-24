import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_mlkit_face_detection/google_mlkit_face_detection.dart';

class CameraComponent extends StatefulWidget {
  const CameraComponent({super.key});

  @override
  CameraComponentState createState() => CameraComponentState();
}

class CameraComponentState extends State<CameraComponent> {
  CameraController? _cameraController;
  List<CameraDescription>? _cameras;
  bool _isDetecting = false;
  bool _closePhotoTaken = false;
  bool _farPhotoTaken = false;

  final faceDetector = FaceDetector(
    options: FaceDetectorOptions(
      performanceMode: FaceDetectorMode.fast,
      enableContours: false,
      enableClassification: true,
    ),
  );

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    _cameras = await availableCameras();
    _cameraController = CameraController(
      _cameras![1], // Normalmente la cámara frontal
      ResolutionPreset.medium,
    );
    await _cameraController!.initialize();

    // Escuchar frames de la cámara para procesar la imagen
    _cameraController!.startImageStream((CameraImage image) async {
      if (!_isDetecting) {
        _isDetecting = true;
        await _processCameraImage(image);
        _isDetecting = false;
      }
    });

    setState(() {});
  }

  Future<void> _processCameraImage(CameraImage image) async {
    // Convertir CameraImage a InputImage que pueda procesar ML Kit
    final allBytes = WriteBuffer();
    for (var plane in image.planes) {
      allBytes.putUint8List(plane.bytes);
    }
    final bytes = allBytes.done().buffer.asUint8List();

    final InputImageMetadata metadata = InputImageMetadata(
      size: Size(image.width.toDouble(), image.height.toDouble()),
      rotation: InputImageRotation
          .rotation0deg, // Ajusta según la rotación de la cámara
      format: InputImageFormat.nv21, // Formato típico para NV21
      bytesPerRow: image.planes[0].bytesPerRow,
    );

    final inputImage = InputImage.fromBytes(
      bytes: bytes,
      metadata: metadata,
    );

    final faces = await faceDetector.processImage(inputImage);

    if (faces.isNotEmpty) {
      Face face = faces[0];

      // Verificar si la cara está cerca (mayor ancho del bounding box)
      if (face.boundingBox.width > 180 && !_closePhotoTaken) {
        _closePhotoTaken = true;
        await _takePicture('Cerca');
      }
      // Verificar si la cara está lejos (menor ancho del bounding box)
      else if (face.boundingBox.width < 150 &&
          _closePhotoTaken &&
          !_farPhotoTaken) {
        _farPhotoTaken = true;
        await _takePicture('Lejos');
        _navigateToNextScreen(); // Navegar a la siguiente interfaz después de ambas fotos
      }
    }
  }

  Future<void> _takePicture(String distance) async {
    try {
      final imagePath = await _cameraController!.takePicture();
      if (kDebugMode) {
        print('Foto tomada ($distance): ${imagePath.path}');
      }
      // Aquí puedes manejar la imagen tomada
    } catch (e) {
      if (kDebugMode) {
        print('Error al tomar foto: $e');
      }
    }
  }

  void _navigateToNextScreen() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const NextScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (_cameraController == null || !_cameraController!.value.isInitialized) {
      return const Center(child: CircularProgressIndicator());
    }

    return Stack(
      alignment: Alignment.center,
      children: [
        ClipOval(
          child: AspectRatio(
            aspectRatio: 6.0 / 9.0,
            child: CameraPreview(_cameraController!),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _cameraController?.dispose();
    faceDetector.close();
    super.dispose();
  }
}

class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Siguiente Pantalla")),
      body: const Center(child: Text("Fotos tomadas con éxito.")),
    );
  }
}
