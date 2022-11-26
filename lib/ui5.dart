import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:google_fonts/google_fonts.dart';



class UI_5 extends StatefulWidget{
  @override
  State<UI_5> createState() => _UI_5State();
}

class _UI_5State extends State<UI_5> {
  @override
  Widget build(BuildContext context) {
    FloatingActionButtonThemeData(
      largeSizeConstraints: BoxConstraints.tightFor(width: 10,height: 10)
    );
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100,left: 0),
                child: Container(
                  height: 70,
                  width: 250,
                  child:ListTile(
                    title:Text('Featured',style: GoogleFonts.rubikGlitch(color: Color(0xefc7bcdc),),textScaleFactor: 2.1) ,
                    subtitle: Text('Products',style: GoogleFonts.orbitron(color: Color(0xefc7bcdc),),textScaleFactor: 2),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:0,left: 200),
                height: 670,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                    ),
                  gradient: LinearGradient(colors: [
                    Color(0xefc7bcdc),
                    Color(0xf56faade),
                    Color(0xf54f91e7),
                    Color(0xd2246ffa),
                    Color(0xf50346d5),
                  ],
                    begin: Alignment.topLeft,
                    end: Alignment.centerRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0,10),
                       blurRadius: 40,
                       color: Color(0xBB060709),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 10),
                child: ButtonBar(
                  children: [
                    FloatingActionButton.small(
                      onPressed: (){},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)
                      ),
                      backgroundColor: Color(0xFF1B1E46),
                      splashColor: Color(0xff006fff),
                      child: Icon(Icons.dehaze),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 250),
                      child: FloatingActionButton.small(
                        onPressed: (){},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)
                        ),
                        backgroundColor: Color(0xFF1B1E46),
                        splashColor: Color(0xff006fff),
                        child: Icon(Icons.shopping_cart_outlined),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 200,left: 10),
                child: ButtonBar(
                  children: [
                    FloatingActionButton(
                      onPressed: (){},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      backgroundColor: Color(0xFF1B1E46),
                      splashColor: Color(0xff006fff),
                      child: Icon(Icons.tune,size: 35),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    FloatingActionButton(
                      onPressed: (){},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      backgroundColor: Color(0xFF1B1E46),
                      splashColor: Color(0xff006fff),
                      child: Icon(Icons.sports_esports_outlined,size: 35),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    FloatingActionButton(
                      onPressed: (){},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      backgroundColor: Color(0xFF1B1E46),
                      splashColor: Color(0xff006fff),
                      child: Icon(Icons.videogame_asset_outlined,size: 35),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    FloatingActionButton(
                      onPressed: (){},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      backgroundColor: Color(0xFF1B1E46),
                      splashColor: Color(0xff006fff),
                      child: Icon(Icons.mouse_outlined,size: 35),
                    ),
                  ],
                ),
              ),
              Container(
                height: 270,
                width: 210,
                margin: EdgeInsets.only(top: 370,left: 50),
                decoration: BoxDecoration(
                  color: Color(0xF71E2531),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40),
                    topRight: Radius.circular(20),
                    topLeft: Radius.elliptical(200, 80),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0,10),
                      blurRadius: 40,
                      color: Color(0xBB060709),
                    ),
                  ],
                ),
                // child: Image.network('https://www.lunapic.com/editor/premade/transparent.gif'),
               child: Column(
                 children: [
                   Image.network('https://pngimg.com/uploads/computer_mouse/computer_mouse_PNG7677.png',height: 200),
                   Text('Dual Sense',style: GoogleFonts.oswald(color: Color(0xefc7bcdc),),textScaleFactor: 2),
                   Text('Official Pss controller',style: GoogleFonts.orbitron(color: Color(0xefc7bcdc),),textScaleFactor: 1),
                 ],
               ),
              ),
            ],
          ),
        ],
    );
  }
}