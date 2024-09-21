import 'package:flutter/material.dart';
import 'package:proyecto_carnet_digital/screens/login_page_screen.dart';
import 'package:proyecto_carnet_digital/themes/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme, // Aplica el tema global
      home: const LoginPage(),
    );
  }
}
