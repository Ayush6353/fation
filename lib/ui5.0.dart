import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class UI_5_0 extends StatefulWidget{
  @override
  State<UI_5_0> createState() => _UI_5_0State();
}

class _UI_5_0State extends State<UI_5_0> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 350,
          width: 800,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(2),
              bottomRight: Radius.circular(2)
            ),
            gradient: LinearGradient(colors: [
              Color(0xefc7bcdc),
              Color(0xf56faade),
              Color(0xf54f91e7),
              Color(0xd2246ffa),
              Color(0xf50346d5),
            ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            boxShadow: [
              BoxShadow(
                offset: Offset(0,10),
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
                  title:Text('PLATFORM',style: GoogleFonts.rubikGlitch(color: Color(0xefc7bcdc),),textScaleFactor: 1) ,
                  subtitle: Text('PSS',style: GoogleFonts.orbitron(color: Color(0xefc7bcdc),),textScaleFactor: 0.80),
                ),
                ListTile(
                  title:Text('RELEASE',style: GoogleFonts.rubikGlitch(color: Color(0xefc7bcdc),),textScaleFactor: 1) ,
                  subtitle: Text('FOLL 2020',style: GoogleFonts.orbitron(color: Color(0xefc7bcdc),),textScaleFactor: 0.80),
                ),
                ListTile(
                  title:Text('PRICE',style: GoogleFonts.rubikGlitch(color: Color(0xefc7bcdc),),textScaleFactor: 1) ,
                  subtitle: Text('50',style: GoogleFonts.orbitron(color: Color(0xefc7bcdc),),textScaleFactor: 0.80),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 400,left: 30),
          child: Text('Dual Sense',style: GoogleFonts.orbitron(color: Color(0xfcf7f6f8),fontWeight: FontWeight.bold),textScaleFactor: 2),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 450,left: 30),
          child: RichText(text: TextSpan(text: 'DualSense also adds abuilt-in microphone\narray,Which will enable players to easity\nchat with friends without a headset...'),textScaleFactor: 1.3),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 10,left: 100),
          child: Image.network('https://pngimg.com/uploads/computer_mouse/computer_mouse_PNG7677.png',height: 600,),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 550,right: 210),
          child: ButtonBar(
            children: [
              FloatingActionButton(
                onPressed: (){},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                backgroundColor: Color(0xFF1B1E46),
                splashColor: Color(0xff006fff),
                child: Icon(Icons.battery_charging_full,size: 35,color: Color(0xfa0bad2e),),
              ),
              Text ('PLATFORM',style: GoogleFonts.rubikGlitch(color: Color(0xefc7bcdc),),textScaleFactor: 1) ,
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 620,right: 210),
          child: ButtonBar(
            children: [
              FloatingActionButton(
                onPressed: (){},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                backgroundColor: Color(0xFF1B1E46),
                splashColor: Color(0xff006fff),
                child: Icon(Icons.mouse,size: 35,color: Color(0xfa08daee),),
              ),
              Text ('PLATFORM',style: GoogleFonts.rubikGlitch(color: Color(0xefc7bcdc),),textScaleFactor: 1) ,
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10,left: 20),
          child: ButtonBar(
            children: [
               Padding(
                 padding: const EdgeInsets.only(right: 20),
                 child: Column(
                   children: [
                     Icon(Icons.arrow_back_outlined,size: 30,color: Color(
                         0xffe2e6ec),
                     ),
                   ],
                 ),
               ),
              Padding(
                padding: const EdgeInsets.only(left: 250,bottom: 730),
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
          padding: const EdgeInsets.only(top: 310,right: 300),
          child: ButtonBar(
            children: [
              FloatingActionButton(
                onPressed: (){},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)
                ),
                backgroundColor: Color(0xFF1B1E46),
                splashColor: Color(0xff006fff),
                child: Icon(Icons.bookmark_border,size: 25,color: Colors.grey,),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 700,left: 12),
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
              color: Color(0xFF1B1E46),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0,10),
                  blurRadius: 40,
                  color: Color(0xBB060709),
                ),
              ],
            ),
            child:Row(
             children: [
               Padding(
                 padding: const EdgeInsets.only(left: 25),
                 child: Icon(Icons.attach_money,color: Color(0xff1ee7e7),),
               ),
               Text('50',style: GoogleFonts.rubikGlitch(color: Color(0xeff4f3f8),),textScaleFactor: 2),
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
                     gradient: LinearGradient(colors: [
                       Color(0xefc7bcdc),
                       Color(0xf56faade),
                       Color(0xf54f91e7),
                       Color(0xd2246ffa),
                       Color(0xf50346d5),
                     ],
                       begin: Alignment.centerLeft,
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
                   child: TextButton.icon(
                       onPressed: (){},
                       icon: Icon(Icons.arrow_forward_outlined,color: Color(0xeff4f3f8),),
                       label: Text('Preorder',style: GoogleFonts.rubikGlitch(color: Color(0xeff4f3f8),),)
                   ),
                 ),
               )
             ], 
            ),
          ),
        )
      ],
    );
  }
}