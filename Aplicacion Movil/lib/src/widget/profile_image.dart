import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 110,
        height: 125,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Image.asset(
          'assets/images/person.png', // Ruta de la imagen
          width: 60, // Ajusta el tama%C3%B1o de la imagen
          height: 60, fit: BoxFit.cover, // Ajusta c%C3%B3mo se adapta la imagen
        ),
      ),
    );
  }
}
