import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proyecto_carnet_digital/src/widget/admin_chip.dart';
import 'package:proyecto_carnet_digital/src/widget/profile_image.dart';

class FrontSide extends StatelessWidget {
  final VoidCallback onFlip;

  const FrontSide({super.key, required this.onFlip});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'José Carlos\nSilva Rodríguez',
              style: GoogleFonts.robotoSerif(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              softWrap: true, // Este es el valor predeterminado,
              //pero asegúrate de que esté activado.
              textAlign: TextAlign
                  .start, // Puedes ajustar la alineación si es necesario
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.refresh, color: Colors.white),
              onPressed: onFlip,
            ),
          ],
        ),
        const SizedBox(height: 50),
        Text(
          "CC 1006438861",
          style: GoogleFonts.robotoSlab(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),
        ),
        const SizedBox(height: 25),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "17/03/2003",
              style: GoogleFonts.robotoSlab(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
            const Spacer(),
            Text(
              "A+",
              style: GoogleFonts.robotoSerif(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 20,
              ),
            ),
          ],
        ),
        const SizedBox(height: 25),
        Text(
          "Masculino",
          style: GoogleFonts.robotoSerif(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),
        ),
        const SizedBox(height: 120),
        const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ProfileImage(),
            Spacer(),
            AdminChip(),
          ],
        ),
        const SizedBox(height: 160),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'TuCarnet',
              style: GoogleFonts.kronaOne(
                fontSize: 40,
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        )
      ],
    );
  }
}
