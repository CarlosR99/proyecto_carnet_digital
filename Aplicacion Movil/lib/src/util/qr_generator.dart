import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrGenerator extends StatelessWidget {
  final String data;
  final double size;

  const QrGenerator({
    super.key,
    required this.data,
    this.size = 150.0, // Tamaño por defecto si no se especifica
  });

  @override
  Widget build(BuildContext context) {
    return QrImageView(
      data: data,
      version: QrVersions.auto,
      size: size,
      backgroundColor: Colors.white, // El color de fondo del QR
    );
  }
}
