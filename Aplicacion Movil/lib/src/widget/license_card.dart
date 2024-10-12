import 'package:flutter/material.dart';
import 'front_side.dart';
import 'back_side.dart';

class LicenseCard extends StatelessWidget {
  final bool isFront;
  final VoidCallback onFlip;

  const LicenseCard({
    super.key,
    required this.isFront,
    required this.onFlip,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height *
          0.8, // Esto ajusta el alto al tamaño de la pantalla
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: const LinearGradient(
          colors: [
            Color.fromRGBO(255, 255, 255, 1),
            Color.fromRGBO(167, 165, 165, 100),
          ], // Cambia los colores según tu preferencia
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Stack(
        children: [
          if (isFront)
            // Primer contenedor (parte superior)
            Container(
              height: MediaQuery.of(context).size.height *
                  0.40, // El 40% de la pantalla
              decoration: const BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
            ),

          // Contenido encima de los contenedores
          Padding(
            padding: const EdgeInsets.all(16.0), // Ajusta según el diseño
            child:
                isFront ? FrontSide(onFlip: onFlip) : BackSide(onFlip: onFlip),
          ),
        ],
      ),
    );
  }
}
