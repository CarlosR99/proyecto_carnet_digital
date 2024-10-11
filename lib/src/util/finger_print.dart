import 'package:flutter/foundation.dart';
import 'package:local_auth/local_auth.dart';
import 'package:flutter/material.dart';

class FingerprintService {
  final LocalAuthentication auth = LocalAuthentication();

  // Función para autenticar usando la huella digital
  Future<void> authenticate(BuildContext context) async {
    try {
      bool authenticated = await auth.authenticate(
        localizedReason: 'Autentíquese con su huella para acceder',
        options: const AuthenticationOptions(
          stickyAuth: true,
        ),
      );
      // Verificar si el widget está montado antes de mostrar el resultado
      if (context.mounted) {
        if (authenticated) {
          // Acceso concedido
          //ScaffoldMessenger.of(context).showSnackBar(
          //const SnackBar(content: Text('Autenticado correctamente')),
          //);
          Navigator.pushNamed(context, '/carnet');
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Autenticación fallida')),
          );
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Error al autenticar')),
        );
      }
    }
  }
}
