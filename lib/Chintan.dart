import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class CHINTAN extends StatefulWidget{
  @override
  State<CHINTAN> createState() => _CHINTANState();
}

class _CHINTANState extends State<CHINTAN> {
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: "https://www.nike.com/in/w/mens-shoes-nik1zy7ok",
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}