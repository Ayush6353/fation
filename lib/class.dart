import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


// class My_Class extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('FLUTTER1',
//         style: GoogleFonts.monoton(
//           fontSize: 30,
//         ),
//         ),
//         backgroundColor: Colors.deepOrange,
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Column(
//             children:[
//               Container(
//               //alignment: Alignment.topLeft,
//               height: 130,
//               width: 400,
//               //color: Colors.red,
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   begin: Alignment.bottomCenter,
//                   end: Alignment.topCenter,
//                   colors: [
//                     Colors.white,
//                     Colors.red,
//                   ]
//                 )
//               ) ,
//               //transform: Matrix4.rotationZ(0),
//               child: Center(
//                 child: Text(
//                   'Red',
//                   style: TextStyle(
//                     fontSize: 40,
//                     fontFamily: "Edu_VIC_WA_NT_Beginner",
//                     fontWeight: FontWeight.w700,
//                     color: Colors.black,
//                   ),
//                 ),
//               ),
//             ),
//               Container(
//                 //alignment: Alignment.topLeft,
//                 height: 150,
//                 width: 400,
//                 //color: Colors.red,
//                 decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                         begin: Alignment.bottomCenter,
//                         end: Alignment.topCenter,
//                         colors: [
//                           Colors.white,
//                           Colors.yellow,
//                           Colors.white,
//                         ]
//                     )
//                 ) ,
//                 //transform: Matrix4.rotationZ(0),
//                 child: Center(
//                   child: Text(
//                     'Yellow',
//                     style: TextStyle(
//                       fontSize: 40,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//               ),
//               Container(
//                 //alignment: Alignment.topLeft,
//                 height: 150,
//                 width: 400,
//                 //color: Colors.red,
//                 decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                         begin: Alignment.bottomCenter,
//                         end: Alignment.topCenter,
//                         colors: [
//                           Colors.white,
//                           Colors.blueAccent,
//                           Colors.white,
//                         ]
//                     )
//                 ) ,
//                 //transform: Matrix4.rotationZ(0),
//                 child: Center(
//                   child: Text(
//                     'Blue',
//                     style: TextStyle(
//                       fontSize: 40,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//               ),
//               Container(
//                 //alignment: Alignment.topLeft,
//                 height: 150,
//                 width: 400,
//                 //color: Colors.red,
//                 decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                         begin: Alignment.bottomCenter,
//                         end: Alignment.topCenter,
//                         colors: [
//                           Colors.white,
//                           Colors.green,
//                           Colors.white,
//                         ]
//                     )
//                 ) ,
//                 //transform: Matrix4.rotationZ(0),
//                 child: Center(
//                   child: Text(
//                     'Green',
//                     style: TextStyle(
//                       fontSize: 40,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//               ),
//               Container(
//                 //alignment: Alignment.topLeft,
//                 height: 130,
//                 width: 400,
//                 //color: Colors.red,
//                 decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                         begin: Alignment.bottomCenter,
//                         end: Alignment.topCenter,
//                         colors: [
//                           Colors.red,
//                           Colors.white,
//                         ]
//                     )
//                 ) ,
//                 //transform: Matrix4.rotationZ(0),
//                 child: Center(
//                   child: Text(
//                     'Red',
//                     style: TextStyle(
//                       fontSize: 40,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// class image extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Center(
//           child: Text('~| Image |~',
//           style: GoogleFonts.satisfy(
//             fontSize: 50,
//           color: Colors.black),
//           ),
//         ),
//         backgroundColor: Colors.blue,
//       ),
//       backgroundColor: Colors.white,
//       body: Center(
//               child: Container (
//                         height: 300,
//                         width: 300,
//                         decoration: const BoxDecoration(
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.grey,
//                               blurRadius: 25.0,
//                               spreadRadius: 25,
//                                 offset: Offset(10, 10)
//                             ),
//                           ],
//                         ),
//                         child: Container(
//                           color: Colors.white70,
//                         ),
//                         //child: Image.network("https://media.istockphoto.com/photos/image-of-open-antique-book-on-wooden-table-with-glitter-overlay-picture-id1354441996?b=1&k=20&m=1354441996&s=170667a&w=0&h=O4JDagXhIh1N13PNN6G4_L5KB5QPZryin7FOrZnzYvc=")
//               ),
//       ),
//     );
//   }
//
// }
// class image extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Center(
//           child: Text('~| Image |~',
//             style: GoogleFonts.satisfy(
//                 fontSize: 50,
//                 color: Colors.black),
//           ),
//         ),
//         backgroundColor: Colors.blue,
//       ),
//       backgroundColor: Colors.white,
//       body:Column(
//         children: [
//           ButtonBar(
//             children: [
//               TextButton(onPressed: (){}, child: Text('Add photo')),
//               IconButton(onPressed: (){}, icon: Icon(Icons.add_box_outlined), )
//             ],
//           )
//         ],
//       )
//     );
//   }
//
// }

// class image extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//          backgroundColor: Colors.red,
//         ),
//       body: Center(
//         child: Column(
//           children: [
//             Card(
//               child: InkWell(
//                 child: Container(
//                   height: 100,
//                 ),
//                 onTap: (){},
//                 splashColor: Colors.black,
//               ),
//               color: Colors.deepOrangeAccent,
//             ),
//             Card(
//               child: InkWell(
//                 child: Container(
//                   height: 100,
//                 ),
//                 onTap: (){},
//                 splashColor: Colors.black,
//               ),
//               color: Colors.yellow,
//             ),
//             Card(
//               child: InkWell(
//                 child: Container(
//                   height: 100,
//                 ),
//                 onTap: (){},
//                 splashColor: Colors.black,
//               ),
//               color: Colors.green,
//             ),
//             Card(
//               child: InkWell(
//                 child: Container(
//                   height: 100,
//                 ),
//                 onTap: (){},
//                 splashColor: Colors.black,
//               ),
//               color: Colors.blueAccent,
//             ),
//             Card(
//               child: InkWell(
//                 child: Container(
//                   height: 100,
//                 ),
//                 onTap: (){},
//                 splashColor: Colors.black,
//               ),
//               color: Colors.blueAccent,
//             ),
//             Card(
//               child: InkWell(
//                 child: Container(
//                   height: 100,
//                 ),
//                 onTap: (){},
//                 splashColor: Colors.black,
//               ),
//               color: Colors.blueAccent,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
// }

// class List extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title:Text('Contact',style: TextStyle(color: Colors.black),),
//         leading: Icon(Icons.perm_contact_cal_outlined,color: Colors.black,),
//         backgroundColor: Colors.blueAccent,
//       ),
//       body: ListView(
//         children: [
//           ListTile(
//             title: Text('Roman'),
//             subtitle: Text('9898999698',style: TextStyle(color: Colors.green),),
//             // textColor: Colors.lightGreenAccent,
//             leading: Icon(Icons.account_circle,color: Colors.black,),
//             trailing: Icon(Icons.call,color: Colors.black),
//             onTap: (){},
//
//           ),
//           ListTile(
//             title: Text('Roman'),
//             subtitle: Text('9898999698',style: TextStyle(color: Colors.green),),
//             // textColor: Colors.lightGreenAccent,
//             leading: Icon(Icons.account_circle,color: Colors.black,),
//             trailing: Icon(Icons.call,color: Colors.black,),
//             onTap: (){
//             },
//           ),
//           ListTile(
//             title: Text('Roman'),
//             subtitle: Text('9898999698',style: TextStyle(color: Colors.green),),
//             // textColor: Colors.lightGreenAccent,
//             trailing: Icon(Icons.call,color: Colors.black,),
//             leading: Icon(Icons.account_circle,color: Colors.black,),
//             onTap: (){
//             },
//           ),
//           ListTile(
//             title: Text('Roman'),
//             subtitle: Text('9898999698',style: TextStyle(color: Colors.green),),
//             // textColor: Colors.lightGreenAccent,
//             trailing: Icon(Icons.call,color: Colors.black,),
//             leading: Icon(Icons.account_circle,color: Colors.black,),
//             onTap: (){
//             },
//           ),
//           ListTile(
//             title: Text('Roman'),
//             subtitle: Text('9898999698',style: TextStyle(color: Colors.green),),
//             // textColor: Colors.lightGreenAccent,
//             trailing: Icon(Icons.call,color: Colors.black,),
//             leading: Icon(Icons.account_circle,color: Colors.black,),
//             onTap: (){
//             },
//           ),
//           ListTile(
//             title: Text('Roman'),
//             subtitle: Text('9898999698',style: TextStyle(color: Colors.green),),
//             // textColor: Colors.lightGreenAccent,
//             trailing: Icon(Icons.call,color: Colors.black,),
//             leading: Icon(Icons.account_circle,color: Colors.black,),
//             onTap: (){
//             },
//           ),
//           ListTile(
//             title: Text('Roman'),
//             subtitle: Text('9898999698',style: TextStyle(color: Colors.green),),
//             // textColor: Colors.lightGreenAccent,
//             trailing: Icon(Icons.call,color: Colors.black,),
//             leading: Icon(Icons.account_circle,color: Colors.black,),
//             onTap: (){
//             },
//           ),
//           ListTile(
//             title: Text('Roman'),
//             subtitle: Text('9898999698',style: TextStyle(color: Colors.green),),
//             // textColor: Colors.lightGreenAccent,
//             trailing: Icon(Icons.call,color: Colors.black,),
//             leading: Icon(Icons.account_circle,color: Colors.black,),
//             onTap: (){
//             },
//           ),
//           ListTile(
//             title: Text('Roman'),
//             subtitle: Text('9898999698',style: TextStyle(color: Colors.green),),
//             // textColor: Colors.lightGreenAccent,
//             trailing: Icon(Icons.call,color: Colors.black,),
//             leading: Icon(Icons.account_circle,color: Colors.black,),
//             onTap: (){
//             },
//           ),
//           ListTile(
//             title: Text('Roman'),
//             subtitle: Text('9898999698',style: TextStyle(color: Colors.green),),
//             // textColor: Colors.lightGreenAccent,
//             trailing: Icon(Icons.call,color: Colors.black,),
//             leading: Icon(Icons.account_circle,color: Colors.black,),
//             onTap: (){
//             },
//           ),
//           ListTile(
//             title: Text('Roman'),
//             subtitle: Text('9898999698',style: TextStyle(color: Colors.green),),
//             // textColor: Colors.lightGreenAccent,
//             trailing: Icon(Icons.call,color: Colors.black,),
//             leading: Icon(Icons.account_circle,color: Colors.black,),
//             onTap: (){
//             },
//           ),          ListTile(
//             title: Text('Roman'),
//             subtitle: Text('9898999698',style: TextStyle(color: Colors.green),),
//             // textColor: Colors.lightGreenAccent,
//             trailing: Icon(Icons.call,color: Colors.black,),
//             leading: Icon(Icons.account_circle,color: Colors.black,),
//             onTap: (){
//             },
//           ),
//         ],
//       ),
//     );
//   }
//
// }

class MY1_List extends StatelessWidget{
  List ls = ['https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmlld3xlbnwwfHwwfHw%3D&w=1000&q=80',
  'https://images.unsplash.com/photo-1516005642351-d1074b2aef00?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDl8fHxlbnwwfHx8fA%3D%3D&w=1000&q=80',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4qPmyou8HM0n-ia6ZoZYnSPZDyiyfE1Rxlw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdwyMFRcoKj1kEEiDpD_S-Vh6rsVxsL3rCxg&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmWSR-bANXE5sNDP3dyPJrFlCvku1OQ-gyTg&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmBIgYj1yY-r7Fh2ZwHmaAfq8tGJTXxy5pEg&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7KWTjTaR4t7zJDVziI_6nq3GSIy-Rp4cFOw&usqp=CAU',
  'https://www.w3schools.com/w3images/fjords.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4mDe8EGg2wb0R9IpBbTM_NPqts02UeA3BIy3rjCGvQXLo4Qv2ntEg7KcFp2nwWU1iCpQ&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTOtWjg0dPrOY0Gdso0Y_riYBznS6wcS29144mwf-ZtINy0s_-KD5LeLE8YH4inWJqZGQ&usqp=CAU'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Image',style: TextStyle(color: Colors.black),),
        leading: Icon(Icons.image,color: Colors.black,),
        backgroundColor: Colors.blueAccent,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        scrollDirection: Axis.vertical,
        children: List.generate(
         10,
          (index) => Center(
          child: Container(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    border: Border.all(
    color: Colors.grey,
    width: 5,
    ),
    ),
    padding: EdgeInsets.all(3),
    margin: EdgeInsets.all(3),
    child: Image.network(ls[index]),
    ),
          ),
      ),
      ),
    );
  }

}