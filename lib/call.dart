import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class CALL extends StatefulWidget{
  @override
  State<CALL> createState() => _CALLState();
}

class _CALLState extends State<CALL> {
  var _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CALL'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
            ),
            SizedBox(
              height: 30,
            ),
            IconButton(onPressed: () => launchUrl(
              Uri(
                scheme: 'tel',
                path: _controller.text
              ),
            ),
              icon: Icon(Icons.call),
            ),
            SizedBox(
              height: 10,
            ),
            IconButton(onPressed: () => Share.share(_controller.text),
              icon: Icon(Icons.share),
            ),
            SizedBox(
              height: 10,
            ),
            IconButton(onPressed: () => launchUrl(
              Uri(
                  scheme: 'sms',
                  path: _controller.text
              ),
            ),
              icon: Icon(Icons.sms),
            ),
          ],
        ),
      ),
    );
  }
}