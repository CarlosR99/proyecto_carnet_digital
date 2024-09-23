import 'package:flutter/material.dart';
import 'screens/digital_license_screen.dart'; // Importa tu archivo donde guardaste el código

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Digital License App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
          const DigitalLicenseScreen(), // Utiliza el widget en la pantalla principal
    );
  }
}
