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

  // Cambiado para usar FaceDetector directamente
  final faceDetector = FaceDetector(
    options: FaceDetectorOptions(
      performanceMode: FaceDetectorMode
          .fast, // Modo rápido para mejorar la detección en tiempo real
      enableContours: false, // Activar si necesitas contornos faciales
      enableClassification:
          true, // Activar si necesitas detección de sonrisas u ojos abiertos
    ),
  );

  bool _faceInPosition = false;

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
    final WriteBuffer allBytes = WriteBuffer();
    for (var plane in image.planes) {
      allBytes.putUint8List(plane.bytes);
    }
    final bytes = allBytes.done().buffer.asUint8List();

    // Ajuste de la rotación y formato
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
      // Determina si la cara está en la posición correcta
      if (face.boundingBox.width > 150 && face.boundingBox.width < 200) {
        if (!_faceInPosition) {
          _faceInPosition = true;
          await _takePicture();
        }
      } else {
        _faceInPosition = false;
      }
    }
  }

  Future<void> _takePicture() async {
    try {
      final imagePath = await _cameraController!.takePicture();
      print('Foto tomada: ${imagePath.path}');
      // Aquí puedes manejar la imagen tomada
    } catch (e) {
      print('Error al tomar foto: $e');
    }
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
            aspectRatio: 1,
            child: CameraPreview(_cameraController!),
          ),
        ),
        Positioned(
          child: Icon(
            Icons.person_outline,
            size: 150,
            color: Colors.blue.withOpacity(0.6),
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
