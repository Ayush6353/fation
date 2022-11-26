import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter1/login.dart';
import 'package:flutter1/ui6.dart';


class SPLASH_6 extends StatefulWidget{
  @override
  State<SPLASH_6> createState() => _SPLASH_6State();
}

class _SPLASH_6State extends State<SPLASH_6> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedSplashScreen(
          splash: 'asset/images/img7.png',
          nextScreen: Login(),
          splashTransition: SplashTransition.fadeTransition,
          splashIconSize: 270,
          animationDuration: Duration(seconds: 3),
          // backgroundColor: Color(0xf56faade),
        ),
      ],
    );
  }
}