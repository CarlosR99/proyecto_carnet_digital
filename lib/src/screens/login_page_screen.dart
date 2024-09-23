import "package:flutter/material.dart";
import 'package:proyecto_carnet_digital/src/widget/circles_widget.dart'; // Importa el widget del formulari
import 'package:proyecto_carnet_digital/src/widget/login_form_widget.dart'; // Importa el widget del formulari

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Circles(), // Llamada al widget de los círculos decorativos
          SafeArea(
            child: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: LoginForm(), // Llamada al widget del formulario
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
