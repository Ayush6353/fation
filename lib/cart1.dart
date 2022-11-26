import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/shiping.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:lottie/lottie.dart';


class CART_1 extends StatefulWidget{
  @override
  State<CART_1> createState() => _CART_1State();
}

class _CART_1State extends State<CART_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
      Container(
        decoration: BoxDecoration(
          color: Color(0xf5090909),
          borderRadius: BorderRadius.only(topRight: Radius.circular(0),topLeft:Radius.circular(0) ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 4),
          child: GNav(
            backgroundColor:Color(0xf5090909),
            color: Color(0xF0F3F0F1),
            activeColor: Color(0xf57a1327),
            // tabBackgroundColor: Color(0x7CE7031D),
            gap: 8,
            padding: EdgeInsets.all(16),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),GButton(
                icon: Icons.shopping_cart,
                text: 'cart',
              ),
              GButton(
                icon: Icons.account_balance_wallet,
                text: 'Transaction',
              ),
              GButton(
                icon: Icons.settings,
                text: 'Settings',
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xf57a1327),
        title: Text('ARYA FASHION'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40,top: 30),
              child: Image.asset(
                'asset/images/img8.png',
                height: 220,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 400),
              child: Image.asset(
                'asset/images/10.png',
                height: 290,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 260),
              child: Container(
                height: 650,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(70),
                      topRight: Radius.circular(70)),
                  gradient: LinearGradient(
                    colors: [
                      // Color(0xefc7bcdc),
                      Color(0x848a0505),
                      Color(0x7c8a0505),
                      Color(0x7c8a0505),
                      Color(0xf254060c),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 0,
                      color: Color(0xBB060709),
                    ),
                  ],
                ),
                child:  Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: GridView.count(
                    crossAxisCount: 1,
                    scrollDirection: Axis.vertical,
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: ListTile(
                              title: Text('Account info'),
                              tileColor: Color(0x37110205),
                              leading: Icon(Icons.account_circle),
                              trailing: Icon(Icons.navigate_next_sharp),
                              onTap: (){},
                              selectedTileColor: Color(0xBB060709),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 80),
                            child: ListTile(
                              title: Text('Cart'),
                              tileColor: Color(0x37110205),
                              leading: Icon(Icons.shopping_cart_outlined),
                              trailing: Icon(Icons.navigate_next_sharp),
                              onTap: (){},
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 150),
                            child: ListTile(
                              title: Text('Collection'),
                              tileColor: Color(0x37110205),
                              leading: Icon(Icons.collections_bookmark),
                              trailing: Icon(Icons.navigate_next_sharp),
                              onTap: (){},
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 220),
                            child: ListTile(
                              title: Text('payment'),
                              tileColor: Color(0x37110205),
                              leading: Icon(Icons.payment),
                              trailing: Icon(Icons.navigate_next_sharp),
                              onTap: (){},
                              hoverColor: Color(0xE8110205),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 290),
                            child: ListTile(
                              title: Text('Settings'),
                              tileColor: Color(0x37110205),
                              leading: Icon(Icons.settings),
                              trailing: Icon(Icons.navigate_next_sharp),
                              onTap: (){},
                              hoverColor: Color(0xE8110205),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          // Padding(
          //   padding: const EdgeInsets.only(top: 140),
          //   child: Padding(
          //     padding: const EdgeInsets.all(70),
          //     child: Lottie.network('https://assets5.lottiefiles.com/packages/lf20_4dz2pspl.json'),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.all(0),
            child: Padding(
              padding: const EdgeInsets.only(top: 230),
              child: Image.asset('asset/images/10.png'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            height: 620,
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20)),
              gradient: LinearGradient(
                colors: [
                  Color(0x847a1327),
                  Color(0xae7a1327),
                  Color(0xc77a1327),
                  Color(0xcf7a1327),
                  Color(0xf254060c),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 0,
                  color: Color(0x848a0505),
                ),
              ],
            ),
          ),
          ButtonBar(
            children: [
              FloatingActionButton(
                onPressed: (){},
                child: Icon(Icons.shopping_bag),
                backgroundColor: Color(0x8E030303),
              ),

              Padding(
                padding: const EdgeInsets.only(right: 120),
                child: FloatingActionButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => My_Food_Home()));
                  },
                  child: Icon(Icons.local_shipping),
                  backgroundColor: Color(0x8E030303),
                  splashColor: Color(0x9b54060c) ,
                ),
              )
            ],
          ),
          // Padding(
          //   padding: const EdgeInsets.only(top: 70),
          //   child: CarouselSlider(
          //     items: [
          //       Image.asset('asset/images/banner.jpg'),
          //       Image.asset('asset/images/banner1.jpg'),
          //       Image.asset('asset/images/banner2.webp'),
          //       Image.asset('asset/images/banner3.jpg'),
          //       Image.asset('asset/images/banner4.jfif'),
          //       Image.asset('asset/images/banner5.webp'),
          //     ],
          //     options: CarouselOptions(
          //       height: 200,
          //       aspectRatio: 16 / 9,
          //       viewportFraction: 0.7,
          //       initialPage: 6,
          //       enableInfiniteScroll: true,
          //       reverse: true,
          //       autoPlay: false,
          //       autoPlayInterval: Duration(seconds: 3),
          //       autoPlayAnimationDuration: Duration(milliseconds: 800),
          //       autoPlayCurve: Curves.fastOutSlowIn,
          //       enlargeCenterPage: true,
          //       scrollDirection: Axis.vertical,
          //     ),
          //   ),
          // ),
          // GridView.count(
          //   crossAxisCount: 1,
          //   scrollDirection: Axis.vertical,
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.only(bottom: 170),
          //       child: Container(
          //         margin: EdgeInsets.only(top: 70),
          //         height: 50,
          //         width: 100,
          //         color: Color(0x8E030303),
          //       ),
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.only(bottom: 170),
          //       child: Container(
          //         margin: EdgeInsets.only(top: 0),
          //         height: 50,
          //         width: 100,
          //         color: Color(0x8E030303),
          //       ),
          //     ),
          //   ],
          // )
        ],
      ),
    );
  }
}