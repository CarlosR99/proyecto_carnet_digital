import 'package:flutter/material.dart';
import 'package:proyecto_carnet_digital/src/util/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //theme: AppTheme.lightTheme, // Aplica el tema global
      initialRoute: '/Home',
      routes: {
        '/Home': (_) => const WelcomeScreen(),
        '/login': (_) => const LoginPage(),
        '/recuperar': (_) => const RecuperarContrasenaScreen(),
      },
    );
  }
}
