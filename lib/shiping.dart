import 'package:flutter/material.dart';
import 'package:flutter1/cart1.dart';
import 'package:lottie/lottie.dart';


class My_Food_Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return My_food();
  }
}

class My_food extends State<My_Food_Home> {
  void initState() {
    Future.delayed(Duration(seconds: 7),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => CART_1()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 218),
              child: Lottie.network('https://assets1.lottiefiles.com/packages/lf20_uhIxIg.json'),
            )
          ],
        ));
  }
}