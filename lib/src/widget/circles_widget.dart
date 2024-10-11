import 'package:flutter/material.dart';

class Circles extends StatelessWidget {
  const Circles({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Primer círculo en la esquina superior izquierda
        Positioned(
          top: -90,
          left: -10,
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blue[800],
              shape: BoxShape.circle,
            ),
          ),
        ),
        // Segundo círculo en la esquina superior izquierda (color más claro)
        Positioned(
          top: -20,
          left: -90,
          child: Container(
            width: 210,
            height: 200,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 17, 132, 240), // Color azul más claro
              shape: BoxShape.circle,
            ),
          ),
        ),
        // Círculo en la esquina inferior derecha
        Positioned(
          bottom: -160,
          right: -160,
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.blue[800],
              shape: BoxShape.circle,
            ),
          ),
        ),
        // Círculo adicional en la esquina inferior derecha (color más claro)
        Positioned(
          bottom: -120,
          right: -120,
          child: Container(
            width: 400,
            height: 200,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 17, 132, 240),
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
    );
  }
}
