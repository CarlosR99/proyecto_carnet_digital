import 'package:flutter/material.dart';
import '../widget/license_card.dart';

class DigitalLicenseScreen extends StatefulWidget {
  const DigitalLicenseScreen({super.key});

  @override
  DigitalLicenseScreenState createState() => DigitalLicenseScreenState();
}

class DigitalLicenseScreenState extends State<DigitalLicenseScreen> {
  bool isFront = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () {
            Navigator.pushNamed(context, '/navbar');
          },
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
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: LicenseCard(
                isFront: isFront,
                onFlip: () {
                  setState(() {
                    isFront = !isFront;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
