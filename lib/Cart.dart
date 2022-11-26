import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'fation.dart';


class CART extends StatefulWidget {
  @override
  State<CART> createState() => _CARTState();
}

class _CARTState extends State<CART> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 350),
            child: Container(
              height: 500,
              width: 400,
              color: Color(0x848a0505),
            ),
          ),
          Container(
            height: 350,
            width: 800,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(2),
                  bottomRight: Radius.circular(2)),
              gradient: LinearGradient(
                colors: [
                  Color(0x848a0505),
                  Color(0x7c8a0505),
                  Color(0x7c8a0505),
                  Color(0xf254060c),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 40,
                  color: Color(0xBB060709),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: ListView(
                children: [
                  ListTile(
                    title: Text('Kurti',
                        style: GoogleFonts.rubikGlitch(
                          color: Color(0xefc7bcdc),
                        ),
                        textScaleFactor: 1),
                    subtitle: Text('westan',
                        style: GoogleFonts.orbitron(
                          color: Color(0xefc7bcdc),
                        ),
                        textScaleFactor: 0.80),
                  ),
                  ListTile(
                    title: Text('Size',
                        style: GoogleFonts.rubikGlitch(
                          color: Color(0xefc7bcdc),
                        ),
                        textScaleFactor: 1),
                    subtitle: Text('M,XL,XXl',
                        style: GoogleFonts.orbitron(
                          color: Color(0xefc7bcdc),
                        ),
                        textScaleFactor: 0.80),
                  ),
                  ListTile(
                    title: Text('PRICE',
                        style: GoogleFonts.rubikGlitch(
                          color: Color(0xefc7bcdc),
                        ),
                        textScaleFactor: 1),
                    subtitle: Text('999/-',
                        style: GoogleFonts.orbitron(
                          color: Color(0xefc7bcdc),
                        ),
                        textScaleFactor: 0.80),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 400, left: 30),
            child: Text('Arya Kurti',
                style: GoogleFonts.orbitron(
                    color: Color(0xfcf7f6f8), fontWeight: FontWeight.bold),
                textScaleFactor: 2),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 450, left: 30),
            child: RichText(
                text: TextSpan(
                    text:
                        'kurti is a failsafe sartorial option that \nlooks good on women no matter what the\n age groups....'),
                textScaleFactor: 1.3),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 130),
            child: Image.asset(
              'asset/images/arya2.jfif',
              height: 300,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 550, right: 210),
            child: ButtonBar(
              children: [
                FloatingActionButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  backgroundColor: Color(0xf26c032f),
                  splashColor: Color(0xf2d3404b),
                  child: Icon(
                    Icons.color_lens,
                    size: 35,
                    color: Color(0xf26c032f),
                  ),
                ),
                Text('Marun',
                    style: GoogleFonts.rubikGlitch(
                      color: Color(0xefc7bcdc),
                    ),
                    textScaleFactor: 1),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 620, right: 210),
            child: ButtonBar(
              children: [
                FloatingActionButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  backgroundColor: Color(0xf22a0514),
                  splashColor: Color(0xf2d3404b),
                  child: Icon(
                    Icons.color_lens,
                    size: 35,
                    color: Color(0xf22a0514),
                  ),
                ),
                Text('Dark marun',
                    style: GoogleFonts.rubikGlitch(
                      color: Color(0xefc7bcdc),
                    ),
                    textScaleFactor: 1),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20),
            child: ButtonBar(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 0),
                  child: Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.keyboard_backspace,
                        size: 30,),
                        color: Color(0xffe2e6ec), onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => FATION()));
                      },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 250, bottom: 730),
                  child: FloatingActionButton.small(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    backgroundColor: Color(0xf254060c),
                    splashColor: Color(0xf2d3404b),
                    child: Icon(Icons.shopping_cart_outlined),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 310, right: 300),
            child: ButtonBar(
              children: [
                FloatingActionButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  backgroundColor: Color(0xf254060c),
                  splashColor: Color(0xf2d3404b),
                  child: Icon(
                    Icons.bookmark_border,
                    size: 25,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 700, left: 12),
            child: Container(
              height: 80,
              width: 370,
              // color: Color(0xFF1B1E46),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                ),
                color: Color(0xf254060c),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 40,
                    color: Color(0xBB060709),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Icon(
                      Icons.attach_money,
                      color: Color(0xf2d3404b),
                    ),
                  ),
                  Text('999',
                      style: GoogleFonts.rubikGlitch(
                        color: Color(0xeff4f3f8),
                      ),
                      textScaleFactor: 2),
                  // Padding(
                  //   padding: const EdgeInsets.only(left: 130),
                  //   child: TextButton.icon(
                  //       onPressed: (){},
                  //       label: Text('Preorder'),
                  //       icon: Icon(Icons.arrow_forward_outlined),
                  //   ),
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: Container(
                      height: 50,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                        ),
                        gradient: LinearGradient(
                          colors: [
                            Color(0x848a0505),
                            Color(0x7c8a0505),
                            Color(0x7c8a0505),
                            Color(0xf254060c),
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 40,
                            color: Color(0xBB060709),
                          ),
                        ],
                      ),
                      child: TextButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_outlined,
                            color: Color(0xeff4f3f8),
                          ),
                          label: Text(
                            'Preorder',
                            style: GoogleFonts.rubikGlitch(
                              color: Color(0xeff4f3f8),
                            ),
                          )),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
