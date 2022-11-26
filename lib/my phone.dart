import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class My_phone extends StatefulWidget {
  const My_phone({Key? key}) : super(key: key);

  static String verify='';

  @override
  State<My_phone> createState() => _My_phoneState();
}

class _My_phoneState extends State<My_phone> {

  TextEditingController code = TextEditingController();

  var phone = '';

  @override
  void initState() {
    code.text = '  +91';
    super.initState();
  }
  @override

  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 25,right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: 150,
                child: FlutterLogo(),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'phone verfication',
                style: TextStyle(fontSize: 22),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'we need to restior your phone befor getting strated..',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 55,
                decoration: BoxDecoration(
                  border: Border.all(width: 1,color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 40,
                      child: TextField(
                        controller: code,
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(" | ",style: TextStyle(fontSize: 33,color: Colors.grey),),
                    Expanded(child: TextField(
                      keyboardType: TextInputType.phone,
                      onChanged: (value){
                        phone = value;
                      },
                      decoration: InputDecoration(border: InputBorder.none,hintText: "Phone"),
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async{
                    await FirebaseAuth.instance.verifyPhoneNumber(
                      phoneNumber: '${code.text+phone}',
                      verificationCompleted: (PhoneAuthCredential credential) {},
                      verificationFailed: (FirebaseAuthException e) {},
                      codeSent: (String verificationId, int? resendToken) {
                        My_phone.verify=verificationId;
                        Navigator.pushNamed(context,'otp');
                      },
                      codeAutoRetrievalTimeout: (String verificationId) {},
                    );
                  },
                  child: Text('Send the code'),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.green.shade600,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}