import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            width: size.width,
            height: size.height,
            padding: const EdgeInsets.all(20),
            clipBehavior: Clip.antiAlias,
            decoration:const BoxDecoration(
              color: Color(0xFFCDCDCD),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: size.width * 0.9,
                  height: size.height * 0.9,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: size.width * 0.9,
                          height: size.height * 0.9,
                          decoration: ShapeDecoration(
                            gradient:const LinearGradient(
                              begin: Alignment(0.00, -1.00),
                              end: Alignment(0, 1),
                              colors: [Colors.white, Color(0xFF999999)],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: size.width * 0.9,
                          height: size.height * 0.2,
                          decoration:const ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.00, -1.00),
                              end: Alignment(0, 1),
                              colors: [Color(0xFF9197D4), Color(0xFF787CA5)],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: size.width * 0.35,
                        top: size.height * 0.05,
                        child:const Icon(
                          Icons.info_outline,
                          size: 60,
                          color: Colors.white,
                        ),
                      ),
                      Positioned(
                        top: size.height * 0.12,
                        left: 0,
                        right: 0,
                        child:const Center(
                          child: Text(
                            'ACERCA DE',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Roboto Serif',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: size.width * 0.1,
                        top: size.height * 0.3,
                        child:const Text(
                          'SOFTWARE DESARROLLADO\nPOR EL EQUIPO DE CODMAIN\nVERSION:XXXX\nCONTACTO:XXXXX',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Roboto Serif',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}