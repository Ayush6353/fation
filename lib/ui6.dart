import 'package:flutter/material.dart';
import 'package:flutter1/fation.dart';
import 'package:flutter1/ui0.0.0.6.dart';
import 'package:flutter1/ui0.0.6.dart';
import 'package:flutter1/ui0.6.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_button/sign_button.dart';

class UI_6 extends StatefulWidget {
  @override
  State<UI_6> createState() => _UI_6State();
}

class _UI_6State extends State<UI_6> {
  @override
  // void initState() {
  //   Future.delayed(Duration(seconds: 7), (){
  //     Navigator.push(context, MaterialPageRoute(builder: (context) => UI0_0_0_6()));
  //   });
  // }
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40,top: 30),
              child: Image.asset(
                'asset/images/img8.png',
                height: 300,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(60.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 280),
                    child: TextField(
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
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextField(
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
                    height: 10.0,
                  ),
                  Container(
                    width: double.infinity,
                    color: Color(0xff911f1f),
                    child: ElevatedButton(
                      onPressed: (){},
                      child: Padding(
                        padding:
                        const EdgeInsets.symmetric(vertical: 16.0),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Color(0xFFe7edeb),
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextButton(
                    onPressed: (){},
                    child: Text(
                        'Forgot password?'
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 600, left: 80),
              child: SignInButton(
                  buttonType: ButtonType.facebook,
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => FATION()));
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 650, left: 80),
              child: SignInButton(
                  buttonType: ButtonType.google,
                  imagePosition: ImagePosition.left,
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) =>FATION()));
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
