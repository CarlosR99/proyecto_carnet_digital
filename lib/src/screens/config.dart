import 'package:flutter/material.dart';
import 'package:proyecto_carnet_digital/src/screens/changepassword.dart';

class ConfigScreen extends StatefulWidget {
  const ConfigScreen({super.key});

  @override
  _ConfigScreenState createState() => _ConfigScreenState();
}

class _ConfigScreenState extends State<ConfigScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            width: size.width ,
            height: size.height,
            padding: const EdgeInsets.all(20),
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(
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
                              colors: [Color(0xFFEEEBEB), Color(0xFF999999)],
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
                              colors: [Color(0xFF9197D4), Color(0xFF6E729B)],
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
                        left: size.width * 0.1,
                        top: size.height * 0.05,
                        child:const Icon(
                          Icons.settings,
                          size: 60,
                          color: Colors.white,
                        ),
                      ),
                      Positioned(
                        left: size.width * 0.4,
                        top: size.height * 0.08,
                        child:const Text(
                          'AJUSTES',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontFamily: 'Roboto Serif',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: size.width * 0.15,
                        top: size.height * 0.3,
                        child: GestureDetector(
                          onTap: () {
                              Navigator.push(
                                context,
                              MaterialPageRoute(builder: (context) => ChangePasswordScreen()),
                          );
                          },
                          child: Container(
                            width: size.width * 0.6,
                            height: size.height * 0.1,
                            decoration: ShapeDecoration(
                              color:const Color(0x00D9D9D9),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child:const Row(
                              children: [
                                Icon(
                                  Icons.lock,
                                  size: 70,
                                  color: Colors.black,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'CAMBIO DE \nCONTRASEÑA',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Roboto Serif',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ],
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