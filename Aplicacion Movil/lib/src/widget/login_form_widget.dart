import 'package:flutter/material.dart';
import 'package:proyecto_carnet_digital/src/util/finger_print.dart';
import 'package:proyecto_carnet_digital/src/util/login_service.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  LoginFormState createState() => LoginFormState();
}

class LoginFormState extends State<LoginForm> {
  final LoginService loginService = LoginService();
  final FingerprintService fingerprintService = FingerprintService();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 50),
        const Text(
          'Iniciar Sesión',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto',
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 30),
        // Contenedor ovalado con fondo gris claro y borde
        Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(30.0),
            border: Border.all(color: Colors.black),
          ),
          child: Column(
            children: [
              TextField(
                controller: loginService.usernameController,
                decoration: const InputDecoration(
                  labelText: 'Usuario',
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  prefixIcon: Icon(Icons.person),
                  border: InputBorder.none,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(30.0),
            border: Border.all(color: Colors.black),
          ),
          child: Column(
            children: [
              TextField(
                controller: loginService.passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Contraseña',
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  prefixIcon: Icon(Icons.lock),
                  border: InputBorder.none,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        // Funcionalidad para volver un texto clickeable
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/recuperar');
          },
          child: const Text(
            '¿Has olvidado la contraseña?',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 14,
              color: Color.fromARGB(255, 189, 185, 185),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center, // Centra verticalmente
          children: [
            // Botón Ingresar
            ElevatedButton(
              onPressed: () {
                loginService.login(context);
                // Lógica de inicio de sesión
              },
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                backgroundColor: const Color.fromARGB(234, 9, 9, 231),
              ),
              child: const Text(
                'Ingresar',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 18,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
            // Botón de huella
            const SizedBox(width: 20),
            ElevatedButton.icon(
              onPressed: () {
                fingerprintService.authenticate(context);
              },
              icon: const Icon(Icons.fingerprint),
              label: const Text('Huella',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 18,
                    color: Color.fromARGB(234, 9, 9, 231),
                  )),
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                backgroundColor: const Color.fromARGB(0, 9, 9, 231),
              ),
            ),
          ],
        )
      ],
    );
  }
}
