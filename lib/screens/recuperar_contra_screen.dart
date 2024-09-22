import 'package:flutter/material.dart';
import 'package:proyecto_carnet_digital/widgets/circulos_decorations.dart';
// Importamos los círculos

class RecuperarContrasenaScreen extends StatelessWidget {
  const RecuperarContrasenaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Widget de círculos que hemos modularizado
          const CirculosDecoration(),
          // Contenido principal
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '¿Tienes problemas para entrar?',
                    
                    style: Theme.of(context).textTheme.titleLarge,
                    

                    // Uso de tema
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Introduce tu correo institucional y te enviaremos un enlace para que vuelvas a entrar en tu cuenta.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto Serif',
                        fontSize: 15),
                  ),
                  const SizedBox(height: 40),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Correo',
                      prefixIcon: const Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Lógica para recuperar la cuenta
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(
                          255, 237, 17, 17), // Color del botón
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 30),
                    ),
                    child: const Text(
                      'Recuperar',
                      style: TextStyle(
                        fontFamily: 'Roboto Serif', // Usando Times New Roman
                        fontSize: 20, // Tamaño de 20
                        color: Colors.white, // Color blanco para el texto
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
