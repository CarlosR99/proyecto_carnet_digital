import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart'; // Importa la librería para QR

class DigitalLicenseScreen extends StatefulWidget {
  const DigitalLicenseScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DigitalLicenseScreenState createState() => _DigitalLicenseScreenState();
}

class _DigitalLicenseScreenState extends State<DigitalLicenseScreen> {
  bool isFront =
      true; // Variable para controlar si se muestra el frente o reverso

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.lightBlueAccent, Colors.white],
          ),
        ),
        child: Column(
          children: [
            // Tarjeta del carnet (frontal o reverso dependiendo de isFront)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: const EdgeInsets.all(16),
                child: isFront
                    ? buildFrontSide()
                    : buildBackSide(), // Vista condicional
              ),
            ),
            // Imagen de perfil (solo visible en el frente)
            if (isFront)
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Icon(
                    Icons.person,
                    size: 60,
                    color: Colors.grey,
                  ),
                ),
              ),
            // Chip de "Administrador"
            if (isFront)
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Chip(
                  label: Text(
                    'Administrador',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  backgroundColor: Colors.blueGrey,
                ),
              ),
            const Text(
              'TuCarnet',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'Arial',
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Vista frontal del carnet
  Widget buildFrontSide() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Juan Manuel Hernandez Loaiza",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          "CC 1006438861",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        const Text(
          "17/03/2003",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        const Text(
          "Masculino",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "A+",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            IconButton(
              icon: const Icon(Icons.refresh, color: Colors.white),
              onPressed: () {
                // Al presionar el botón, cambiar entre frente y reverso
                setState(() {
                  isFront = !isFront;
                });
              },
            ),
          ],
        ),
      ],
    );
  }

  // Vista trasera del carnet
  Widget buildBackSide() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Código QR
        Center(
          child: QrImageView(
            data:
                "https://example.com", // Dato para el QR, puede ser una URL o texto
            version: QrVersions.auto,
            size: 150.0,
            backgroundColor: Colors.white,
          ),
        ),
        const SizedBox(height: 16),
        // Fecha de vencimiento
        const Text(
          "Fecha de Vencimiento",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        const Text(
          "13 Sept de 2025",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 16),
        // Texto adicional
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            "Este carnet es personal e intransferible. Se exigira en todas las oportunidades y servicios que deba acreditar la condición de trabajador.",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ),
        const SizedBox(height: 16),
        // Botón para volver al frente
        Center(
          child: IconButton(
            icon: const Icon(Icons.refresh, color: Colors.white),
            onPressed: () {
              // Volver al frente
              setState(() {
                isFront = !isFront;
              });
            },
          ),
        ),
      ],
    );
  }
}
