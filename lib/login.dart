import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/fation.dart';
import 'package:flutter1/ui0.6.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';
import 'package:sign_button/constants.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_button/create_button.dart';

class Login extends StatefulWidget {


  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var email = TextEditingController();

  var pass = TextEditingController();

  GoogleSignIn googleSignIn = GoogleSignIn();

  bool isSignIn = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0x848a0505),
              Color(0x7c8a0505),
              Color(0xf28a0505),
              Color(0xf954060c),
            ],
              begin: Alignment.topLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 36.0, horizontal: 24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Login',
                        style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 46.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text('Enter to a beautiful world',
                        style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 22.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextField(
                          controller: email,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: Color(0xFFe7edeb),
                            hintText: 'E-mail',
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.grey[600],
                            )
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextField(
                          controller: pass,
                          obscureText: true,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide.none,
                              ),
                              filled: false,
                              fillColor: Color(0xFFe7edeb),
                              hintText: 'Password',
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.grey[600],
                              )
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        SwipeButton(
                          width: 200,
                          activeThumbColor: Color(0xfc83060f),
                          activeTrackColor: Color(0xEC78787E),

                          child: Padding(
                            padding: const EdgeInsets.only(left: 40),
                            child: Text(
                              "Add to Cart..",
                              style: TextStyle(
                                color: Colors.white,

                              ),
                            ),
                          ),
                          onSwipe: () {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FATION()));
                          },
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextButton(
                          onPressed: (){},
                          child: Text(
                              'Forgot password?'
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only( left: 10),
                          child: SignInButton(
                              buttonType: ButtonType.google,
                              imagePosition: ImagePosition.left,
                              onPressed: (){
                                _signIn();
                              }),
                        ),
                        Padding(
                          padding: const EdgeInsets.only( left: 10),
                          child: SignInButton(
                              buttonType: ButtonType.facebook,
                              imagePosition: ImagePosition.left,
                              onPressed: () {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => FATION()));
                              }),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  sighUp()async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email.text, password: pass.text);
    // await  Navigator.push(
    //     context, MaterialPageRoute(builder: (context) => FATION()));
  }

  _signIn() async{
    try{
      await googleSignIn.signIn();
      setState((){
        isSignIn = true;
      });
    }catch (e) {
      print(e);
    }
  }
}
