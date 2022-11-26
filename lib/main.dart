import 'dart:math';
import 'package:calendar_appbar/calendar_appbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/Chintan.dart';
import 'package:flutter1/call.dart';
import 'package:flutter1/fation.dart';
import 'package:flutter1/fire.dart';
import 'package:flutter1/login.dart';
import 'package:flutter1/moji.dart';
import 'package:flutter1/my%20page.dart';
import 'package:flutter1/my%20phone.dart';
import 'package:flutter1/nike%20login.dart';
import 'package:flutter1/nike_OnBorading1.dart';
import 'package:flutter1/nike_cart.dart';
import 'package:flutter1/nikescreen.dart';
import 'package:flutter1/otp.dart';
import 'package:flutter1/shared_preferences.dart';
import 'package:flutter1/splash6.dart';
import 'package:flutter1/ui0.0.0.6.dart';
import 'package:flutter1/ui0.0.6.dart';
import 'package:flutter1/ui1.dart';
import 'package:flutter1/ui5.0.dart';
import 'package:flutter1/ui5.dart';
import 'package:flutter1/ui6.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/zondicons.dart'; // for Non Colorful Icons
import 'package:flutter/material.dart';

import 'db.helper.dart';

import 'Cart.dart';
import 'cart1.dart';
import 'class.dart';
import 'a1.dart';
import 'nike home.dart';
import 'nike_Boarding.dart';
import 'ui1.dart';
import 'ui2.dart';
import 'login.dart';
import 'ui3.dart';
import 'ui4.dart';
import 'ui5.dart';
import 'ui5.0.dart';
import 'ui6.dart';
import 'ui0.6.dart';
import 'ui0.0.6.dart';
import 'Drawer1.dart';
import 'moji.dart';
import 'Chintan.dart';
import 'ui0.0.0.6.dart';
import 'fation.dart';
import 'splash6.dart';
import 'nav.bar.dart';

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: Scaffold(
//       body: CHINTAN(),
//     ),
//   ));
// }


//////////////////////////////////////////////////////////////////////////////
Future<void> main()async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.white,
      body:NIKE_HOME(),
    ),

  ));
}

// void main() async{
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       initialRoute: 'phone',
//       routes: {'phone': (context) => My_phone(),'otp': (context) => My_otp(),'home': (context) => My_page(),
//       },
//     ),
//   );
// }
/////////////////////////////////////////////////////////////////////////////
// void main() {
//   runApp(
//     MaterialApp(
//       home: MyApp(),
//     ),
//   );
// }
//
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Sqllite"),
//       ),
//       body: Stack(
//         children: [
//           Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               ElevatedButton(
//                 onPressed: () async {
//                   int i = await DatabaseHelper.instants.insertData(
//                     {DatabaseHelper.name: 'Harsh'},
//                   );
//                   print("Data Inserted... $i");
//                 },
//                 child: Text("Insert"),
//               ),
//               ElevatedButton(
//                 onPressed: () async {
//                   var data = await DatabaseHelper.instants.getAllData();
//                   print("All data... $data");
//                 },
//                 child: Text("Get Data"),
//               ),
//               ElevatedButton(
//                 onPressed: () async {
//                   int i = await DatabaseHelper.instants.updateData(
//                     {
//                       DatabaseHelper.id: 2,
//                       DatabaseHelper.name: 'Arpit',
//                     },
//                   );
//                   print("Data Update... $i");
//                 },
//                 child: Text("Update"),
//               ),
//               ElevatedButton(
//                 onPressed: () async {
//                   int i = await DatabaseHelper.instants.deletData(2);
//                   print("Data Delet... $i");
//                 },
//                 child: Text("Delet"),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }


// void main(){
//   runApp(MaterialApp(debugShowCheckedModeBanner: false,
//     home: Scaffold(
//       bottomNavigationBar:
//       Container(
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft:Radius.circular(30) ),
//           boxShadow: [
//             BoxShadow(
//               offset: Offset(0,10),
//               blurRadius: 70,
//               color: Color(0x922B2D5E),
//             ),
//           ],
//         ),
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 4),
//           child: GNav(
//             backgroundColor: Colors.white,
//             color: Color(0xF0050203),
//             activeColor: Color(0xF0110F10),
//             tabBackgroundColor: Color(0x7CE7031D),
//             gap: 8,
//             padding: EdgeInsets.all(16),
//             tabs: const [
//               GButton(
//                 icon: Icons.home,
//                 text: 'Home',
//               ),
//               GButton(
//                 icon: Icons.account_balance_wallet,
//                 text: 'Transaction',
//               ),
//               // GButton(
//               //   icon: Icons.search,
//               //   text: 'Search',
//               // ),
//               GButton(
//                 icon: Icons.settings,
//                 text: 'Settings',
//               ),
//             ],
//           ),
//         ),
//       ),
//       appBar: AppBar(
//         centerTitle: true,
//         backgroundColor: Color(0xF0E7031D),
//         title: Text('Loding page'),
//        // leading: Iconify(Zondicons.battery_half,),
//       ),
//       body: UI_4(),
//     ),
//   ));
// }
//
// void main(){
//   runApp(MaterialApp(debugShowCheckedModeBanner: false,
//     home: Scaffold(
//       appBar:CalendarAppBar(
//         onDateChanged: (value) => print(value),
//         firstDate: DateTime.now().subtract(Duration(days: 140)),
//         lastDate: DateTime.now(),
//       ),
//       bottomNavigationBar:
//       Container(
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.only(topRight: Radius.circular(0),topLeft:Radius.circular(0) ),
//           boxShadow: [
//             BoxShadow(
//               offset: Offset(0,10),
//               blurRadius: 70,
//               color: Color(0x922B2D5E),
//             ),
//           ],
//         ),
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 4),
//           child: GNav(
//             backgroundColor: Colors.white,
//             color: Colors.black,
//             activeColor: Color(0xFF1486E3),
//             tabBackgroundColor: Color(0x240A0000),
//             gap: 8,
//             padding: EdgeInsets.all(16),
//             tabs: const [
//               GButton(
//                 icon: Icons.home,
//                 text: 'Home',
//               ), GButton(
//                 icon: Icons.search,
//                 text: 'Search',
//               ),
//               GButton(
//                 icon: Icons.history,
//                 text: 'History',
//               ),
//               GButton(
//                 icon: Icons.settings,
//                 text: 'Settings',
//               ),
//             ],
//           ),
//         ),
//       ),
//       body: UI_1(),
//     ),
//   ));
// }

// void main(){
//   runApp(MaterialApp(debugShowCheckedModeBanner: false,
//     home: Scaffold(
//       body: Login(),
//     ),
//   ));
// }

// void main(){
//   runApp(MaterialApp(debugShowCheckedModeBanner: false,
//     home: Scaffold(
//        bottomNavigationBar:
//          Container(
//            decoration: BoxDecoration(
//              color: Colors.white,
//              borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft:Radius.circular(30) ),
//              boxShadow: [
//                BoxShadow(
//                offset: Offset(0,10),
//                blurRadius: 70,
//                color: Color(0x922B2D5E),
//                ),
//              ],
//            ),
//            child: Padding(
//              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 4),
//              child: GNav(
//                backgroundColor: Colors.white,
//                color: Colors.black,
//                activeColor: Color(0xcc100633),
//                // tabBackgroundColor: Color(0x922B2D5E),
//                gap: 8,
//                padding: EdgeInsets.all(16),
//                tabs: const [
//                  GButton(
//                    icon: Icons.home,
//                    text: 'Home',
//                  ),
//                  GButton(
//                    icon: Icons.account_balance_wallet,
//                    text: 'Transaction',
//                  ),
//                  // GButton(
//                  //   icon: Icons.search,
//                  //   text: 'Search',
//                  // ),
//                  GButton(
//                    icon: Icons.settings,
//                    text: 'Settings',
//                  ),
//                ],
//              ),
//            ),
//          ),
//       body: UI_2(),
//     ),
//   ));
// }


// void main(){
//   runApp(MaterialApp(debugShowCheckedModeBanner: false,
//     home: Scaffold(
//       backgroundColor: Color(0xF4151836),
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         leading: Padding(
//           padding: const EdgeInsets.only(left: 5),
//           child: FloatingActionButton.small(
//             onPressed: (){},
//             shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(60)
//             ),
//             backgroundColor: Color(0xFF1B1E46),
//             splashColor: Color(0xff006fff),
//             child: Icon(Icons.dehaze,),
//           ),
//         ),
//         actions: [
//           FloatingActionButton(
//             onPressed: (){},
//
//             shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(60)
//             ),
//             backgroundColor: Color(0xFF1B1E46),
//             splashColor: Color(0xff006fff),
//             child: Icon(Icons.shopping_cart_outlined,),
//           ),
//         ],
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//       ),
//       bottomNavigationBar:
//          Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
//           child: GNav(
//             hoverColor: Color(0xef0bacff),
//             tabBackgroundGradient: LinearGradient(
//               colors:[
//                 Color(0xef09b0ec),
//                 Color(0xf5428fd9),
//                 Color(0xf50e6be3),
//                 Color(0xd2534ede),
//                 Color(0xf5504bd9),
//               ],
//             ),
//             // tabBorderRadius: ln2,
//             backgroundColor: Color(0xF21E2531),
//             color: Colors.white,
//             activeColor: Color(0xFFEAEFF3),
//             tabBackgroundColor: Color(0x240A0000),
//             gap: 8,
//             padding: EdgeInsets.all(16),
//             tabs: const [
//               GButton(
//                 icon: Icons.home,
//                 text: 'Home',
//               ), GButton(
//                 icon: Icons.account_circle,
//                 text: 'Account',
//               ),
//
//               GButton(
//                 icon: Icons.settings,
//                 text: 'Settings',
//               ),
//               GButton(
//                 icon: Icons.bookmark,
//                 text: 'Bookmark',
//               ),
//             ],
//           ),
//         ),
//     //),
//       drawer: Drawer(
//         child: Container(
//           child: Column(
//             children: [
//
//             ],
//           ),
//         ),
//       ),
//       body: UI_5(),
//     ),
//   ));
// }

// void main(){
//   runApp(MaterialApp(debugShowCheckedModeBanner: false,
//     home: Scaffold(
//       backgroundColor: Color(0xF4151836),
//       body:UI_5_0(),
//     ),
//   ));
// }

// void main(){
//   runApp(MaterialApp(debugShowCheckedModeBanner: false,
//     home: Scaffold(
//       drawer: Drawer(
//         child: Container(
//           child:Column(
//             children: [
//               DRAWER_1(),
//             ],
//           ),
//         ),
//       ),
//       backgroundColor: Color(0xefe8f6ff),
//       bottomNavigationBar:
//       Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 4),
//         child: GNav(
//           color: Colors.black,
//           activeColor: Color(0xFF008FFF),
//           tabBackgroundColor: Color(0x45003CFF),
//           gap: 8,
//           padding: EdgeInsets.all(16),
//           tabs: const [
//             GButton(
//               icon: Icons.home,
//               text: 'Home',
//             ), GButton(
//               icon: Icons.search,
//               text: 'Search',
//             ),
//             GButton(
//               icon: Icons.history,
//               text: 'History',
//             ),
//             GButton(
//               icon: Icons.settings,
//               text: 'Settings',
//             ),
//           ],
//         ),
//       ),
//       body:UI_0_0_6(),
//     ),
//   ));
// }

// void main(){
//   runApp(MaterialApp(debugShowCheckedModeBanner: false,
//     home: Scaffold(
//       // backgroundColor: Color(0xb2bcffff),
//       body:UI0_0_0_6(),
//     ),
//   ));
// }
