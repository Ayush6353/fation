import 'package:flutter1/fation.dart';
import 'package:flutter1/ui0.0.6.dart';
import 'package:flutter1/ui0.6.dart';
import 'package:flutter1/ui6.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:flutter1/fation.dart';

import 'package:flutter/material.dart';

class UI0_0_0_6 extends StatefulWidget{
  @override
  State<UI0_0_0_6> createState() => _UI0_0_0_6State();
}

class _UI0_0_0_6State extends State<UI0_0_0_6> {
  @override

  void initState() {
    Future.delayed(Duration(seconds: 5), (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => FATION()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: LoadingAnimationWidget.flickr(
            leftDotColor: Color(0xDF0590F1),
            rightDotColor: Color(0xB809BAEF),
            size: 100,
        ),
      ),
    );
  }
}