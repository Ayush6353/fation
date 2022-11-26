import 'package:flutter/material.dart';

class My_page extends StatefulWidget {
  const My_page({Key? key}) : super(key: key);

  @override
  State<My_page> createState() => _pg();
}

class _pg extends State<My_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('demo page'),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          child: FlutterLogo(),
        ),
      ),
    );
  }
}