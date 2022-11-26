import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SHARED_PREFERENCES extends StatefulWidget{
  @override
  State<SHARED_PREFERENCES> createState() => _SHARED_PREFERENCESState();
}

class _SHARED_PREFERENCESState extends State<SHARED_PREFERENCES> {
  var _counter;
  var _prefs = SharedPreferences.getInstance();

  @override
  void initState() {
    _counter = _prefs.then((value) => value.getInt('COUNT') ?? 0);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar'),
      ),
      body: Center(
        child: FutureBuilder(
          future: _counter,
            builder:(context ,snp){
            if (snp.hasData){
              return Text(
                '${snp.data}',
                    style: TextStyle(
                  fontSize: 40,
                color: Colors.black87,
              ),
              );
            }else {
              return CircularProgressIndicator();
            }
            },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _incrementCounter,
      ),
    );
  }
  _incrementCounter() async{
    var prefs = await _prefs;
    var counter = (prefs.getInt('COUNT') ?? 0) +1;

    setState((){
      _counter = prefs.setInt('COUNT', counter).then((value) => counter);
    });
  }
}