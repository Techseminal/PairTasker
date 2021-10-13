import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.all(20),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: HexColor("#007FFF"),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 5,
                          color: Color.fromRGBO(0, 127, 255, 0.2),
                          spreadRadius: 3,
                        )
                      ],
                      borderRadius: BorderRadius.circular(120),
                    ),
                    alignment: const AlignmentDirectional(0, 0),
                    child: const FaIcon(
                      FontAwesomeIcons.hamburger,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                  Container(
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 5,
                            color: Color.fromRGBO(0, 127, 255, 0.2),
                            spreadRadius: 3,
                          )
                        ],
                        // border: Border.all(
                        //     color: const Color.fromRGBO(0, 127, 255, 0.7)),
                        borderRadius: BorderRadius.circular(120),
                      ),
                      alignment: const AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Icon(
                                Icons.location_on,
                                size: 18,
                                color: HexColor("#007FFF"),
                              ),
                            ),
                            const Text(
                              "Gunutr, AP",
                              style: TextStyle(
                                color: Color.fromRGBO(0, 127, 255, 1),
                              ),
                            ),
                          ],
                        ),
                      )),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: HexColor("#007FFF"),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 5,
                          color: Color.fromRGBO(0, 127, 255, 0.2),
                          spreadRadius: 3,
                        )
                      ],
                      borderRadius: BorderRadius.circular(120),
                    ),
                    alignment: const AlignmentDirectional(0, 0),
                    child: const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 1, 1, 1),
                      child: FaIcon(
                        FontAwesomeIcons.solidBell,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
