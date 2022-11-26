import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';




class My_firebase extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _database();
  }
}

class _database extends State<My_firebase> {

  var email = TextEditingController();
  var pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              TextField(

                controller: email,
              ),
              SizedBox(
                height: 50,
              ),
              TextField(
                controller: pass,
                obscureText: true,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      signup();
                    },
                    child: Text('Sing Up'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      signin();
                    },
                    child: Text('Sing In'),
                  ),
                ],
              )
            ],
          ),
        ));
  }

  signup() async{
    await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email.text, password: pass.text);
    await Navigator.push(context, MaterialPageRoute(builder: (context) => Gam()));
  }

  signin() async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: email.text, password: pass.text);
    await Navigator.push(context, MaterialPageRoute(builder: (context) => Gam()));
  }
}


class Gam extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: Colors.white38,),
    );
  }
}