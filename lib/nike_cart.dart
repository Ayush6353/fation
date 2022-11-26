import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/nike%20home.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:iconsax/iconsax.dart';

class NIKE_CART extends StatefulWidget{
  @override
  State<NIKE_CART> createState() => _NIKE_CARTState();
}

class _NIKE_CARTState extends State<NIKE_CART> {
  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;

    return Material(
      child: Stack(
        children: [
          Container(
            height: _height*0.5,
            width: _width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.elliptical(400,300),
              ),
              gradient: LinearGradient(
                colors: [
                  Color(0xBB292A2D),
                  Color(0x83060709),
                  Color(0xBB13151A),
                  Color(0xBB060709),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 10,
                  color: Color(0xD5060709),
                ),
              ],
            ),
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: _height*0.17,left: _width*0.06),
                  child: Text(
                    "Nike Air Max 270",
                    style: TextStyle(
                      fontSize: 25,
                      color: Color(0xF7FAF8F8),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: _height*0.22,left: _width*0.06),
                  child: Text(
                    "Men's Shoes",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xF79D9A9A),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(top: _height*0.12,left: _width*0.3),
                  child: Image(
                    alignment: Alignment.topCenter,
                    image: AssetImage(
                      "asset/images/s3.png",
                    ),
                    width: _width * 0.75,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: _height*0.02,right: _width*0),
                  child: ButtonBar(
                    children: [
                      IconButton(onPressed: (){
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => NIKE_HOME()));
                      }, icon: Icon(Iconsax.back_square5,color: Color(0xF7FAF8F8),size: 30),),
                      SizedBox(width: _width*0.62,),
                      IconButton(onPressed: (){}, icon: Icon(Iconsax.shopping_bag5,color: Color(0xF7FAF8F8),size: 30),),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: _height*0.39,left: _width*0.06),
            child: Text(
              "Price",
              style: TextStyle(
                fontSize: 17,
                color: Color(0xF7565454),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: _height*0.42,left: _width*0.06),
            child: Text(
              "\$160",
              style: TextStyle(
                fontSize: 28,
                color: Color(0xF70C0C0C),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: _height*0.52,left: _width*0.06),
            child: Text(
              "Description",
              style: TextStyle(
                fontSize: 20,
                color: Color(0xF7727272),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: _height*0.58,left: _width*0.06),
            child: Text(
              "The Nike Air Max 270 tailors iconic hoops style to the needs of the modern skater.",
              style: TextStyle(
                fontSize: 17,
                color: Color(0xF72A2929),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: _height*0.92,left: _width*0.25),
            child: AnimatedButton(
              // animationDuration: Duration(seconds: 3),
              height: _height*0.06,
              width: _width*0.68,
              text: 'Add to Cart',
              textStyle: TextStyle(color:  Color(0xFCF7F8FA),fontWeight: FontWeight.bold,fontSize: 16),
              isReverse: true,
              selectedTextColor: Colors.black87,
              selectedBackgroundColor: Color(0xF7D0D0BA),
              transitionType: TransitionType.LEFT_CENTER_ROUNDER,
              backgroundColor: Colors.black87,
              borderRadius: 20,
              borderWidth: 2,
              onPress: (){
                // Navigator.push(
                //     context, MaterialPageRoute(builder: (context) => Boarding_Screen()));
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top:_height*0.91,left:_width*0.1),
            child: IconButton(
              onPressed: (){
                // Navigator.push(
                //     context, MaterialPageRoute(builder: (context) => NIKE_CART()));
              },
              icon: Icon(Iconsax.heart_circle5),
              color:Color(0xF90A0B0C) ,
              iconSize: 49,
            ),
          ),
        ],
      ),
    );
  }
}
