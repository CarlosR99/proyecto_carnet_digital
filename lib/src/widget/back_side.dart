import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../util/qr_generator.dart';

class BackSide extends StatelessWidget {
  final VoidCallback onFlip;

  const BackSide({super.key, required this.onFlip});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              icon: const Icon(Icons.refresh,
                  color: Color.fromARGB(255, 13, 13, 13)),
              onPressed: onFlip,
            ),
          ],
        ),
        const SizedBox(height: 180),
        const Center(
          child: QrGenerator(
            data: "https://example.com", // Dato del código QR
          ),
        ),
        const SizedBox(height: 80),
        Text(
          "Fecha de Vencimiento",
          style: GoogleFonts.robotoSerif(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 40),
        Text(
          "13 Sept de 2025",
          style: GoogleFonts.robotoSerif(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 80),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            "Este carnet es personal e intransferible. Se exigira en todas las oportunidades y servicios que deba acreditar la condición de trabajador.",
            textAlign: TextAlign.center,
            style: GoogleFonts.robotoSerif(
              color: Colors.black,
              fontSize: 19,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        const SizedBox(height: 16),
        const Center(),
      ],
    );
  }
}
