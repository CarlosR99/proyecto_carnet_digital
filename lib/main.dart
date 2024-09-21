import 'package:flutter/material.dart';
import 'package:proyecto_carnet_digital/screens/recuperar_contra_screen.dart';
import 'package:proyecto_carnet_digital/theme/theme.dart';

void main() {
  runApp(const RecuperarContrasenaApp());
}

class RecuperarContrasenaApp extends StatelessWidget {
  const RecuperarContrasenaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme, // Aplica el tema correctamente
      home: const RecuperarContrasenaScreen(),
    );
  }
}
