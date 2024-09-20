
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Primer círculo decorativo en la esquina superior izquierda
          Positioned(
            top: -90,
            left: -10,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.blue[800],
                shape: BoxShape.circle,
              ),
            ),
          ),

          // Segundo círculo decorativo en la esquina superior izquierda (color más claro)
          Positioned(
            top: -20, // Ajusta la posición vertical
            left: -90, // Ajusta la posición horizontal
            child: Container(
              width: 210,
              height: 200,
              decoration: const BoxDecoration(
                color:
                    Color.fromARGB(255, 17, 132, 240), // Color azul más claro
                shape: BoxShape.circle,
              ),
            ),
          ),
          // Círculo decorativo en la esquina inferior derecha
          Positioned(
            bottom: -160,
            right: -160,
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.blue[800],
                shape: BoxShape.circle,
              ),
            ),
          ),
          // Círculo decorativo adicional en la esquina inferior derecha (color azul más claro)
          Positioned(
            bottom: -120, // Ajusta la posición vertical
            right: -120, // Ajusta la posición horizontal
            child: Container(
              width: 400,
              height: 200,
              decoration: const BoxDecoration(
                color:
                    Color.fromARGB(255, 17, 132, 240), // Color azul más claro
                shape: BoxShape.circle,
              ),
            ),
          ),
          SafeArea(
            child: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
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
                        child: const Column(
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                labelText: 'Usuario',
                                labelStyle:
                                    TextStyle(fontWeight: FontWeight.bold),
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
                        child: const Column(
                          children: [
                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: 'Contraseña',
                                labelStyle:
                                    TextStyle(fontWeight: FontWeight.bold),
                                prefixIcon: Icon(Icons.lock),
                                border: InputBorder.none,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Center(
                        child: Text(
                          '¿Has olvidado la contraseña?',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 14,
                            color: Color.fromARGB(255, 189, 185, 185),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Botón Ingresar
                      ElevatedButton(
                        onPressed: () {
                          // Lógica de inicio de sesión
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          backgroundColor: const Color.fromARGB(
                              234, 9, 9, 231), // Color de fondo del botón
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
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}