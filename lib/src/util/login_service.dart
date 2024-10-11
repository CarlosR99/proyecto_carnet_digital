import 'package:flutter/material.dart';

class LoginService {
  // Controladores para los campos de texto
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // Datos de prueba
  final String testUsername = 'usuarioPrueba';
  final String testPassword = 'contraseñaPrueba';

  // Función de inicio de sesión simulada
  void login(BuildContext context) {
    final String enteredUsername = usernameController.text;
    final String enteredPassword = passwordController.text;

    if (enteredUsername == testUsername && enteredPassword == testPassword) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Inicio de sesión exitoso')),
      );
      // Aquí puedes agregar la navegación a la siguiente pantalla
      Navigator.pushNamed(context, '/carnet');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Usuario o contraseña incorrectos')),
      );
    }
  }
}
