import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:flutter1/nike_Boarding.dart';

class NIKE_SCREEN extends StatefulWidget{
  @override
  State<NIKE_SCREEN> createState() => _NIKE_SCREENState();
}

class _NIKE_SCREENState extends State<NIKE_SCREEN> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;

    // return Container(
    //   decoration: BoxDecoration(
    //     image: DecorationImage(
    //       image: AssetImage("asset/images/n1.jpg"),
    //       fit: BoxFit.cover,
    //     )
    //   ),
    // );
    return Material(
      child: Stack(
        children: [
          Image(
            image: AssetImage(
                "asset/images/ns8.jpg",
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
           Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              // decoration: BoxDecoration(
              //   // borderRadius: BorderRadius.only(
              //   //     topLeft: Radius.circular(100),
              //   //     topRight: Radius.circular(100),
              //   //   bottomRight: Radius.circular(100),
              //   //   bottomLeft: Radius.circular(100),
              //   // ),
              //   gradient: LinearGradient(
              //     colors: [
              //       // Color(0xefc7bcdc),
              //       Color(0x10060709),
              //       Color(0xF060709),
              //       Color(0xB0060709),
              //       Color(0xC8060709),
              //     ],
              //     begin: Alignment.topCenter,
              //     end: Alignment.bottomCenter,
              //   ),
              //   boxShadow: [
              //     BoxShadow(
              //       offset: Offset(0, 0),
              //       blurRadius: 0,
              //       color: Color(0x3A060709),
              //     ),
              //   ],
              // ),
              // child: IconButton(
              //   icon: Icon(Icons.arrow_forward_outlined),
              //   onPressed: (){},
              //   iconSize: _width*0.1,
              // ),
            ),
          Padding(
            padding:  EdgeInsets.only(top: _height * 0.13,left: _width * 0.5),
            child: Image(
              alignment: Alignment.topCenter,
              image: AssetImage(
                "asset/images/ns1.png",
              ),
              width: _width * 0.36,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: _height*0.77,left: _width*0.03),
            child: Text(
              "Start Your Journey",
              style: TextStyle(
                fontSize: 33,
                color: Color(0xf40c0c0c),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: _height*0.85,left: _width*0.03),
            child: Text(
              "With Nike",
              style: TextStyle(
                fontSize: 33,
                color: Color(0xf4727070),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: _height*0.91,left: _width*0.5),
            child: AnimatedButton(
              // animationDuration: Duration(seconds: 3),
              height: _height*0.05,
              width: _width*0.4,
              text: 'Start Now',
              // isReverse: true,
              selectedTextColor: Colors.black87,
              transitionType: TransitionType.LEFT_CENTER_ROUNDER,
              backgroundColor: Colors.black87,
              borderRadius: 20,
              borderWidth: 2,
              onPress: (){
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Boarding_Screen()));
              },
            ),
          ),
        ],
      ),
    );
  }
}