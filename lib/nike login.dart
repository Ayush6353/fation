import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/fation.dart';
import 'package:flutter1/nike%20home.dart';
import 'package:flutter1/nikescreen.dart';
import 'package:flutter1/ui0.6.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';
import 'package:sign_button/constants.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_button/create_button.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';

import 'nike_Boarding.dart';

class NIKE_LOGIN extends StatefulWidget {


  @override
  State<NIKE_LOGIN> createState() => _NIKE_LOGINState();
}

class _NIKE_LOGINState extends State<NIKE_LOGIN> {
  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;

    final RoundedLoadingButtonController _btnController = RoundedLoadingButtonController();

    void _doSomething(RoundedLoadingButtonController controller) async {
      Timer(Duration(seconds: 3), () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => NIKE_HOME()));
        controller.success();
      });
    }
    //  _doSomething(con) {
    //   Timer(Duration(seconds: 3), () {
    //     con.success();
    //     // Navigator.push(
    //     //     context, MaterialPageRoute(builder: (context) => NIKE_SCREEN()));
    //   });
    // }

    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Material(
        child: Stack(
          children: [
            Padding(
              padding:EdgeInsets.only(top: _height*0.5),
              child: Container(
                height: _height*0.5,
                width: _width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.elliptical(90,70),
                    topRight: Radius.elliptical(100,70),
                    bottomRight: Radius.circular(0),
                    bottomLeft: Radius.circular(0),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xBB292A2D),
                      Color(0x83060709),
                      Color(0xBB13151A),
                      Color(0xBB060709),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 10,
                      color: Color(0xD5060709),
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: _height*0.05),
                  child: Padding(
                    padding:  EdgeInsets.all(_height*0.05),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Color(0xFFe7edeb),
                              hintText: 'Username',
                              prefixIcon: Icon(
                                Icons.account_circle_sharp,
                                color: Colors.grey[600],
                              )
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Color(0xfff3faf8),
                              hintText: 'Password',
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.grey[600],
                              )
                          ),
                        ),
                        TextButton(
                          onPressed: (){},
                          child: Text(
                              'Forgot password?',
                            style: TextStyle(
                              color: Colors.grey[600],
                          ),
                          ),
                        ),
                        RoundedLoadingButton(
                          child: Text('LogIn', style: TextStyle(color: Colors.white)),
                          controller: _btnController,
                          onPressed: () => _doSomething(_btnController),
                          color: Color(0x99EAE6E6),
                          failedIcon: Icons.close,
                          errorColor: Color(0xFFA60606),
                          successColor: Color(0xFF119F07),
                          successIcon: Icons.done,
                          width: _width*0.5,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: _width * 0.28),
              child: Image(
                alignment: Alignment.topCenter,
                image: AssetImage(
                  "asset/images/ns1.png",
                ),
                width: _width * 0.5,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: _height*0.31,left: _width*0.52),
              child: Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 37,
                  color: Color(0xF7050505),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: _height*0.37,left: _width*0.59),
              child: Text(
                "to The Nike",
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xF7050505),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: _height*0.41,left: _width*0.60),
              child: Text(
                "User Area",
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xF7050505),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: _height*0.91,left: _width*0.3),
              child: SignInButton.mini(
                  buttonType: ButtonType.googleDark,
                  btnColor: Color(0xF7050505),
                  onPressed: (){},
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: _height*0.92,left: _width*0.49),
              child: Text(
                "or",
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xF7F8F5F5),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: _height*0.91,left: _width*0.5),
              child: SignInButton.mini(
                buttonType: ButtonType.facebookDark,
                onPressed: (){},
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: _height * 0.27,left: _width * 0.06),
              child: Image(
                // alignment: Alignment.topCenter,
                image: AssetImage(
                  "asset/images/n3.webp",
                ),
                width: _width * 0.7,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
