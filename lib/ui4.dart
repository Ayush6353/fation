import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class UI_4 extends StatefulWidget{
  @override
  State<UI_4> createState() => _UI_4State();
}

class _UI_4State extends State<UI_4> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: [
        Card(
          child: LoadingAnimationWidget.beat(
            color: Color(0xFF1EE7E7),
            size: 100,
          ),
        ),
        Card(
          child: LoadingAnimationWidget.flickr(
            leftDotColor: Color(0xDF00E9FF),
            rightDotColor: Color(0xC5EE02FF),
            size: 100,
          ),
        ),
        Card(
          child: LoadingAnimationWidget.prograssiveDots(
            color: Color(0x7BDC003B),
            size: 100,
          ),
        ),
        Card(
          child: LoadingAnimationWidget.bouncingBall(
            color: Color(0x7BECC902),
            size: 100,
          ),
        ),
        Card(
          child: LoadingAnimationWidget.discreteCircle(
            color: Color(0x7B0092DC),
            size: 100,
          ),
        ),
        Card(
          child: LoadingAnimationWidget.dotsTriangle(
            color: Color(0x7B640D8F),
            size: 100,
          ),
        ),
        Card(
          child: LoadingAnimationWidget.fallingDot(
            color: Color(0xCC180B3D),
            size: 100,
          ),
        ),
        Card(
          child: LoadingAnimationWidget.fourRotatingDots(
            color: Color(0xFFC91B1B),
            size: 100,
          ),
        ),
        Card(
          child: LoadingAnimationWidget.twoRotatingArc(
            color: Color(0x7B2CE11B),
            size: 100,
          ),
        ),
        Card(
          child: LoadingAnimationWidget.twistingDots(
            rightDotColor: Color(0xD3A97F23),
            leftDotColor: Color(0xDAE81515),
            size: 100,
          ),
        ),
        Card(
          child: LoadingAnimationWidget.hexagonDots(
            color: Color(0xF0E413FC),
            size: 100,
          ),
        ),
        Card(
          child: LoadingAnimationWidget.waveDots(
            color: Color(0xF0076C55),
            size: 100,
          ),
        ),
        Card(
          child: LoadingAnimationWidget.inkDrop(
            color: Color(0xFF1EE7E7),
            size: 100,
          ),
        ),
        Card(
          child: LoadingAnimationWidget.newtonCradle(
            color: Color(0xF013FC32),
            size: 100,
          ),
        ),
        Card(
          child: LoadingAnimationWidget.halfTriangleDot(
            color: Color(0xF0FC2E13),
            size: 100,
          ),
        ),
        Card(
          child: LoadingAnimationWidget.bouncingBall(
            color: Color(0xF0013821),
            size: 100,
          ),
        ),
        Card(
          child: LoadingAnimationWidget.stretchedDots(
            color: Color(0xF01326FC),
            size: 100,
          ),
        ),
        Card(
          child: LoadingAnimationWidget.threeArchedCircle(
            color: Color(0xAD520101),
            size: 100,
          ),
        ),
      ],
    );
  }
}