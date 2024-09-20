import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Asegúrate de tener esta dependencia en tu archivo pubspec.yaml

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            width: constraints.maxWidth,
            height: constraints.maxHeight,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 21, 98, 221),
                  Color.fromARGB(255, 175, 171, 247)
                ], // Degradado de fondo
              ),
            ),
            child: Stack(
              children: [
                // Elipses de fondo
                const Positioned(
                  top: -30,
                  left: -60,
                  child: CircleAvatar(
                    radius: 100,
                    backgroundColor: Colors.white, // Más blanco
                  ),
                ),
                const Positioned(
                  top: -30,
                  left: 60,
                  child: CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.white, // Elipse adicional
                  ),
                ),
                const Positioned(
                  bottom: -30,
                  right: -50,
                  child: CircleAvatar(
                    radius: 100,
                    backgroundColor: Colors.white, // Más blanco
                  ),
                ),
                const Positioned(
                  bottom: -50,
                  right: 70,
                  child: CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.white, // Elipse adicional
                  ),
                ),

                // Contenido principal
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Texto "Bienvenido a Tu Carnet"
                      Text(
                        'Bienvenido a Tu Carnet',
                        style: GoogleFonts.robotoSerif(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 80),

                      // Texto "Continua para iniciar sesión"
                      Text(
                        'Continua para iniciar sesión',
                        style: GoogleFonts.robotoSerif(
                          fontSize: 22,
                          color: Colors.white.withOpacity(0.8),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 40),

                      // Botón más rectangular con flecha
                      ElevatedButton(
                        onPressed: () {
                          // Agrega la funcionalidad de navegación aquí
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(30.0), // Borde redondeado
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 60, vertical: 20),
                          backgroundColor: Colors.blue,
                        ),
                        child: const Icon(
                          Icons.arrow_forward,
                          color: Color.fromARGB(255, 5, 5, 5),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: WelcomeScreen(),
  ));
}
