import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminChip extends StatelessWidget {
  const AdminChip({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Chip(
        label: Text(
          'Administrador',
          style: GoogleFonts.robotoSerif(
            color: const Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.normal,
          ),
        ),
        backgroundColor: const Color.fromRGBO(174, 177, 240, 100),
      ),
    );
  }
}
