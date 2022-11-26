//
//
// import 'package:flutter/material.dart';
//
// class DRAWER_1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return SingleChildScrollView(
//       child: Container(
//         constraints: BoxConstraints(
//           maxHeight: MediaQuery.of(context).size.height,
//           maxWidth: MediaQuery.of(context).size.width,
//         ),
//         decoration: BoxDecoration(
//           gradient: LinearGradient(colors: [
//             Color(0xcc090025),
//             Color(0xcc352169),
//             Color(0xcc1d0e48),
//             Color(0xcc3a2879),
//           ],
//             begin: Alignment.topLeft,
//             end: Alignment.centerRight,
//           ),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Expanded(
//               flex: 2,
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(
//                     vertical: 36.0, horizontal: 24.0),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text('Login',
//                       style: TextStyle(
//                         color: Color(0xffffffff),
//                         fontSize: 46.0,
//                         fontWeight: FontWeight.w800,
//                       ),
//                     ),
//                     SizedBox(
//                       height: 10.0,
//                     ),
//                     Text('Enter to a beautiful world',
//                       style: TextStyle(
//                         color: Color(0xffffffff),
//                         fontSize: 22.0,
//                         fontWeight: FontWeight.w300,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Expanded(
//               flex: 5,
//               child: Container(
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                     color: Color(0xffffffff),
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(40),
//                       topRight: Radius.circular(40),
//                     )
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(24.0),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       TextField(
//                         keyboardType: TextInputType.emailAddress,
//                         decoration: InputDecoration(
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(8.0),
//                               borderSide: BorderSide.none,
//                             ),
//                             filled: true,
//                             fillColor: Color(0xFFe7edeb),
//                             hintText: 'E-mail',
//                             prefixIcon: Icon(
//                               Icons.email,
//                               color: Colors.grey[600],
//                             )
//                         ),
//                       ),
//                       SizedBox(
//                         height: 20.0,
//                       ),
//                       TextField(
//                         obscureText: true,
//                         keyboardType: TextInputType.emailAddress,
//                         decoration: InputDecoration(
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(8.0),
//                               borderSide: BorderSide.none,
//                             ),
//                             filled: false,
//                             fillColor: Color(0xFFe7edeb),
//                             hintText: 'Password',
//                             prefixIcon: Icon(
//                               Icons.lock,
//                               color: Colors.grey[600],
//                             )
//                         ),
//                       ),
//                       SizedBox(
//                         height: 30.0,
//                       ),
//                       Container(
//                         width: double.infinity,
//                         child: RaisedButton(
//                           onPressed: (){},
//                           color: Color(0xcc1d0e48),
//                           child: Padding(
//                             padding:
//                             const EdgeInsets.symmetric(vertical: 16.0),
//                             child: Text(
//                               'Login',
//                               style: TextStyle(
//                                 color: Color(0xFFe7edeb),
//                                 fontSize: 16.0,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 20.0,
//                       ),
//                       TextButton(
//                         onPressed: (){},
//                         child: Text(
//                             'Forgot password?'
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
// }