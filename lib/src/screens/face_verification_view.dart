import 'package:flutter/material.dart';
import 'package:proyecto_carnet_digital/src/widget/circles_widget.dart';
import '../util/camera_component.dart';

class FaceVerificationView extends StatelessWidget {
  const FaceVerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Circles(), // Llamada al widget de los círculos decorativos
          Expanded(
            flex: 3,
            child: CameraComponent(), // Componente de la cámara
          ),
        ],
      ),
    );
  }
}
