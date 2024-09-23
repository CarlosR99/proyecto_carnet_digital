import 'package:flutter/material.dart';
import '../components/camera_component.dart';

class FaceVerificationView extends StatelessWidget {
  const FaceVerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: CameraComponent(), // Componente de la cámara
          ),
          SizedBox(height: 20),
          Text(
            'Por favor, ajusta tu cara',
            style: TextStyle(fontSize: 18, color: Colors.blue),
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
