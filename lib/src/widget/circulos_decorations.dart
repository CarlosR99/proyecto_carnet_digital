import 'package:flutter/material.dart';

class CirculosDecoration extends StatelessWidget {
  const CirculosDecoration({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: -50,
          left: -50,
          child: CircleAvatar(
            radius: 100,
            backgroundColor: Colors.red.withOpacity(0.8),
          ),
        ),
        Positioned(
          top: 100,
          left: -50,
          child: CircleAvatar(
            radius: 60,
            backgroundColor: Colors.red.withOpacity(0.6),
          ),
        ),
        Positioned(
          bottom: -50,
          right: -50,
          child: CircleAvatar(
            radius: 100,
            backgroundColor: Colors.red.withOpacity(0.8),
          ),
        ),
        Positioned(
          bottom: 100,
          right: -50,
          child: CircleAvatar(
            radius: 60,
            backgroundColor: Colors.red.withOpacity(0.6),
          ),
        ),
      ],
    );
  }
}
