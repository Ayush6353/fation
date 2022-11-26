import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/Cart.dart';
import 'package:flutter1/fation.dart';
import 'package:flutter1/moji.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';


void main(){
  runApp(MyApp());
}

class NAV_BAR_ extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nav bar',
      home: NAV_BAR(),
    );
  }

}

class NAV_BAR extends StatefulWidget{
  @override
  State<NAV_BAR> createState() => _NAV_BARState();
}

class _NAV_BARState extends State<NAV_BAR> {

  var padding = EdgeInsets.symmetric(horizontal: 18,vertical: 5);
  double gap = 10;
  int _index =0;

  var tab = [
    FATION(),
    CART(),
  ];
  // List colors = [
  //   Color(0xf57a1327),
  //   Color(0xf5135b7a),
  //   Color(0xf5d7900d),
  //   Color(0xf541ef11),
  // ];

  // List<Text> text =[
  //   Text('Home',),
  //   Text('Cart',),
  //   Text('Transaction',),
  //   Text('Settings',),
  // ];
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
       return MaterialApp(
         debugShowCheckedModeBanner: false,
         home:Scaffold(
           extendBody: true,
           // appBar: AppBar(title: Text('nav bar'),),
           body:Material(
             child: PageView.builder(
              itemCount: 4,
              controller: controller,
                onPageChanged: (page){
                setState(() {
                  _index= page;
                });
                },
                itemBuilder: (context,position){
              return Container(
                // color: colors[position],
                // child: Center(child: text[position],),
                child: Stack(
                  children: tab,
                ),
              );
          }),
           ),
           bottomNavigationBar: SafeArea(
             child: Container(
               margin: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
               decoration: BoxDecoration(
                 color: Color(0xf5fefffe),
                 borderRadius: BorderRadius.all(Radius.circular(100)),
                 boxShadow: [
                   BoxShadow(
                     spreadRadius: -10,
                     blurRadius: 60,
                     color: Color(0xf50c0c0c).withOpacity(0.4),
                     offset: Offset(0,25),
                   )
                 ]
               ),
               child: Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 3,vertical: 3),
                 child: GNav(
                   curve: Curves.fastOutSlowIn,
                   duration: Duration(milliseconds: 900),
                   tabs: [
                     GButton(
                       gap: gap,
                       icon: LineIcons.home,
                       iconColor: Color(0xf50c0c0c),
                       iconActiveColor: Color(0xf57a1327),
                       text: 'Home',
                       textColor: Color(0xf57a1327),
                       backgroundColor: Color(0xf57a1327).withOpacity(0.2),
                       iconSize: 24,
                       padding: padding,
                     ),
                     GButton(
                       gap: gap,
                       icon: LineIcons.addToShoppingCart,
                       iconColor: Color(0xf50c0c0c),
                       iconActiveColor: Color(0xf5d206b5),
                       text: 'Cart',
                       textColor: Color(0xf5d206b5),
                       backgroundColor: Color(0xf5d206b5).withOpacity(0.2),
                       iconSize: 24,
                       padding: padding,
                     ),
                     GButton(
                       gap: gap,
                       icon: LineIcons.moneyBill,
                       iconColor: Color(0xf50c0c0c),
                       iconActiveColor: Color(0xf50d88cc),
                       text: 'Transaction',
                       textColor: Color(0xf50d88cc),
                       backgroundColor: Color(0xf50d88cc).withOpacity(0.2),
                       iconSize: 24,
                       padding: padding,
                     ),
                     GButton(
                       gap: gap,
                       icon: LineIcons.info,
                       iconColor: Color(0xf50c0c0c),
                       iconActiveColor: Color(0xcc100633),
                       text: 'settings',
                       textColor: Color(0xcc100633),
                       backgroundColor: Color(0xcc100633).withOpacity(0.2),
                       iconSize: 24,
                       padding: padding,
                     ),
                   ],
                   selectedIndex: _index,
                   onTabChange: (index){
                     setState(() {
                       _index= _index;
                     });
                     controller.jumpToPage(index);
                   },
                 ),
               ),
             ),
           ),
         ),
    );
  }
}