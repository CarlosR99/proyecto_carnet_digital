import 'package:flutter/material.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
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
                              colors: [Color(0xFFF1EDED), Color(0xFF999999)],
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
                              colors: [Color(0xFF9197D4), Color(0xFF707392)],
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
                          Icons.lock,
                          size: 60,
                          color: Colors.white,
                        ),
                      ),
                      Positioned(
                        left: size.width * 0.25,
                        top: size.height * 0.12,
                        child:const Text(
                          'CAMBIO DE \nCONTRASEÑA',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontFamily: 'Roboto Serif',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: size.width * 0.1,
                        top: size.height * 0.3,
                        child:const Text(
                          'NUEVA CONTRASEÑA',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Roboto Serif',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: size.width * 0.1,
                        top: size.height * 0.35,
                        child: 
                        SizedBox(
                          width: size.width * 0.7,
                          child: TextField(
                            style:const TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              filled: true,
                              fillColor:const Color(0xFFF2F1F1),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: size.width * 0.1,
                        top: size.height * 0.45,
                        child:const Text(
                          'CONFIRMAR CONTRASEÑA',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Roboto Serif',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: size.width * 0.1,
                        top: size.height * 0.5,
                        child: SizedBox(
                          width: size.width * 0.7,
                          child: TextField(
                            style: const TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              filled: true,
                              fillColor: const Color(0xFFF2F1F1),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: size.width * 0.25,
                        top: size.height * 0.7,
                        child: GestureDetector(
                          onTap: () {
                            // Acción para guardar la nueva contraseña
                          },
                          child: Container(
                            width: size.width * 0.4,
                            height: 50,
                            decoration: ShapeDecoration(
                              gradient:const LinearGradient(
                                begin: Alignment(1.00, 0.00),
                                end: Alignment(-1, 0),
                                colors: [Color(0xFF9198D4), Color(0xFFBCBECC)],
                              ),
                              shape: RoundedRectangleBorder(
                                side:const BorderSide(width: 1),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            child:const Center(
                              child: Text(
                                'GUARDAR',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontFamily: 'Roboto Serif',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                            ),
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