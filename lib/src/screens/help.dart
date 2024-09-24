import 'package:flutter/material.dart';

class AyudaSoportePage extends StatelessWidget {
  const AyudaSoportePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ayuda y Soporte'),
      ),
      body: const Center(
        child: Text('Página de Ayuda y Soporte'),
      ),
    );
  }
}
