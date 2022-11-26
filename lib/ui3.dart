import 'package:flutter/material.dart';

class UI_3 extends StatefulWidget{
  @override
  State<UI_3> createState() => _UI_3State();
}

class _UI_3State extends State<UI_3> {

  var ls = [
    Step(title: Text('1'), content:Text('Next Step 2') ),
    Step(title: Text('2'), content:Text('Next Step 3') ),
    Step(title: Text('3'), content:Text('Next Step 4') ),
    Step(title: Text('4'), content:Text('Next Step 5') ),
    Step(title: Text('5'), content:Text('All Step Completed...') ),
  ];

  var _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Stepper(
      steps: ls,
        currentStep : _currentStep,
      onStepContinue: (){

      });
  }
}