import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/cart1.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:iconify_flutter/icons/ls.dart';
import 'package:fluttermoji/fluttermoji.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';
import 'package:pull_down_button/pull_down_button.dart';
import 'package:like_button/like_button.dart';
import 'package:sign_button/sign_button.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'Cart.dart';
import 'splash6.dart';
import 'ui0.6.dart';
import 'ui6.dart';
import 'fation.dart';

class FATION extends StatefulWidget {
  @override
  State<FATION> createState() => _FATIONState();
}

class _FATIONState extends State<FATION> {
  var padding = EdgeInsets.symmetric(horizontal: 18, vertical: 5);
  int _counter = 0;
  int _counter1 = 0;
  int _counter2 = 0;
  int _counter3 = 0;
  int _counterA = 0;
  double gap = 10;
  int _index = 0;

  var tab = [
    FATION(),
    CART(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Color(0xf5090909),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(0), topLeft: Radius.circular(0)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          child: GNav(
            backgroundColor: Color(0xf5090909),
            color: Color(0xF0F3F0F1),
            activeColor: Color(0xf57a1327),
            // tabBackgroundColor: Color(0x7CE7031D),
            gap: 8,
            padding: EdgeInsets.all(16),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
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
      appBar: (AppBar(
        backgroundColor: Color(0xf57a1327),
        title: Text('ARYA FASHION'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              showSearch(
                context: context,
                delegate: CustomSearchDelegate(),
              );
            },
            icon: Icon(Icons.search),
          ),
          Badge(
            badgeContent: Text("$_counterA",
              style: TextStyle(
                color: Color(0xfdfaf7f7),
            ),
            ),
            child: IconButton(
              onPressed: (){},
              icon: Icon(Icons.shopping_bag_outlined),
            ),
          ),
          SizedBox(width: 20,)
          // IconButton(
          //   onPressed: (){},
          //   icon: Icon(Icons.shopping_bag_outlined),
          // ),
        ],
      )),
      drawer: Drawer(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 30),
              child: Image.asset(
                'asset/images/img8.png',
                height: 220,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 400),
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
                child: Padding(
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
                              onTap: () {},
                              selectedTileColor: Color(0xBB060709),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 80),
                            child: ListTile(
                              title: Text('Cart'),
                              tileColor: Color(0x37110205),
                              leading: Icon(Icons.shopping_bag_outlined),
                              trailing: Badge(
                                badgeContent: Text("$_counterA",
                                  style: TextStyle(
                                    color: Color(0xfdfaf7f7),
                                  ),
                                ),
                                child: IconButton(
                                  onPressed: (){},
                                  icon: Icon(Icons.navigate_next_sharp),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CART_1()));
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 150),
                            child: ListTile(
                              title: Text('Collection'),
                              tileColor: Color(0x37110205),
                              leading: Icon(Icons.collections_bookmark),
                              trailing: Icon(Icons.navigate_next_sharp),
                              onTap: () {},
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 220),
                            child: ListTile(
                              title: Text('payment'),
                              tileColor: Color(0x37110205),
                              leading: Icon(Icons.payment),
                              trailing: Icon(Icons.navigate_next_sharp),
                              onTap: () {},
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
                              onTap: () {},
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
          Container(
            height: 200,
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(00),
                  bottomRight: Radius.circular(00)),
              gradient: SweepGradient(
                colors: [
                  Color(0xCFCB9090),
                  Color(0x73060709),
                  Color(0xCF720606),
                  Color(0xCFCB9090),
                  Color(0xCFE70D0D),
                ],
                // begin: Alignment.topCenter,
                // end: Alignment.bottomCenter,
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 40,
                  color: Color(0xBB060709),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 140, left: 40),
            child: Image.asset('asset/images/a3.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 65, left: 40),
            child: Image.asset('asset/images/a3.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: CarouselSlider(
              items: [
                Image.asset('asset/images/banner.jpg'),
                Image.asset('asset/images/banner1.jpg'),
                Image.asset('asset/images/banner2.webp'),
                Image.asset('asset/images/banner3.jpg'),
                Image.asset('asset/images/banner4.jfif'),
                Image.asset('asset/images/banner5.webp'),
              ],
              options: CarouselOptions(
                height: 200,
                aspectRatio: 16 / 9,
                viewportFraction: 0.7,
                initialPage: 6,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 225, left: 20),
            child: Container(
              height: 50,
              width: 350,
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Color(0x817C7E80),
                    hintText: 'Search...',
                    prefixIcon: Icon(
                      Icons.search_rounded,
                      color: Color(0xDF1F2125),
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(0),
            child: Padding(
              padding: const EdgeInsets.only(top: 350),
              child: Image.asset('asset/images/10.png'),
            ),
          ),
          ListView(
            children: [
              Container(
                margin: EdgeInsets.only(top: 300),
                height: 340,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  gradient: LinearGradient(
                    colors: [
                      Color(0x5F060709),
                      Color(0x5F060709),
                      Color(0x5F060709),
                      Color(0x5F060709),
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
                child:Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: CarouselSlider(
                    items: [
                      Stack(
                        children: [
                          Card(
                            // margin: EdgeInsets.only(
                            //     left: 0, right: 10, top: 20, bottom: 30),
                            color: Color(0x5F060709),
                            child: Container(
                              // margin: EdgeInsets.only(
                              //     bottom: 60),
                              height: 170,
                              width: 500,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 200),
                                child: Image.asset('asset/images/arya2.jfif'),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 180,top: 50),
                            child: Row(
                              children: [
                                IconButton(
                                    onPressed: (){
                                      setState(() {
                                        if(_counter !=0){
                                          _counter--;
                                        }
                                      });
                                    },
                                    icon: Icon(Icons.remove_circle,size: 30,color: Color(
                                        0xBBEFF1F3)),
                                ),
                                Text("$_counter",
                                  style: TextStyle(
                                    color: Color(0xfdfaf7f7),
                                  ),
                                ),
                                IconButton(
                                  onPressed: (){
                                    setState(() {
                                      _counter++;
                                    });
                                  },
                                  icon: Icon(Icons.add_circle,size: 30,color: Color(0xBBEFF1F3)),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 100,left: 160),
                            child: SwipeButton(
                              width: 150,
                              activeThumbColor: Color(0x9b54060c),
                              activeTrackColor: Color(0x764B4C4F),

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
                                _displaySuccessMotionToast();

                                setState(() {
                                  _counterA++;
                                });
                              },
                            ),
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.only(top: 60,left: 280),
                            child: LikeButton(
                              size: 17,
                              circleColor: CircleColor(
                                  start: Color(0xff5d0018),
                                  end: Color(0xff48001a)),
                              bubblesColor: BubblesColor(
                                dotPrimaryColor: Color(0xff91060b),
                                dotSecondaryColor: Color(0xffe00727),
                              ),
                              likeBuilder: (bool isLiked) {
                                return IconButton(
                                  icon: Icon(Icons.favorite),
                                  color: isLiked
                                      ? Color(0xffb40707)
                                      : Color(0xffffffff),
                                  onPressed: () {},
                                  iconSize: 30,
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Card(
                            // margin: EdgeInsets.only(
                            //     left: 0, right: 10, top: 20, bottom: 30),
                            color: Color(0x5F060709),
                            child: Container(
                              // margin: EdgeInsets.only(
                              //     bottom: 60),
                              height: 170,
                              width: 500,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 200),
                                child: Image.asset('asset/images/arya3.jfif'),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 180,top: 50),
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: (){
                                    setState(() {
                                      if(_counter1 !=0){
                                        _counter1--;
                                      }
                                    });
                                  },
                                  icon: Icon(Icons.remove_circle,size: 30,color: Color(
                                      0xBBEFF1F3)),
                                ),
                                Text("$_counter1",
                                  style: TextStyle(
                                    color: Color(0xfdfaf7f7),
                                  ),
                                ),
                                IconButton(
                                  onPressed: (){
                                    setState(() {
                                      _counter1++;
                                    });
                                  },
                                  icon: Icon(Icons.add_circle,size: 30,color: Color(0xBBEFF1F3)),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 100,left: 160),
                            child: SwipeButton(
                              width: 150,
                              activeThumbColor: Color(0x9b54060c),
                              activeTrackColor: Color(0x764B4C4F),

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
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => CART()));
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text("Successfully..."),
                                    backgroundColor: Color(0xf57a1327),
                                  ),
                                );
                                setState(() {
                                  _counterA++;
                                });
                              },
                            ),
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.only(top: 60,left: 280),
                            child: LikeButton(
                              size: 17,
                              circleColor: CircleColor(
                                  start: Color(0xff5d0018),
                                  end: Color(0xff48001a)),
                              bubblesColor: BubblesColor(
                                dotPrimaryColor: Color(0xff91060b),
                                dotSecondaryColor: Color(0xffe00727),
                              ),
                              likeBuilder: (bool isLiked) {
                                return IconButton(
                                  icon: Icon(Icons.favorite),
                                  color: isLiked
                                      ? Color(0xffb40707)
                                      : Color(0xffffffff),
                                  onPressed: () {},
                                  iconSize: 30,
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Card(
                            // margin: EdgeInsets.only(
                            //     left: 0, right: 10, top: 20, bottom: 30),
                            color: Color(0x5F060709),
                            child: Container(
                              // margin: EdgeInsets.only(
                              //     bottom: 60),
                              height: 170,
                              width: 500,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 200),
                                child: Image.asset('asset/images/arya1.jfif'),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 180,top: 50),
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: (){
                                    setState(() {
                                      if(_counter2 !=0){
                                        _counter2--;
                                      }
                                    });
                                  },
                                  icon: Icon(Icons.remove_circle,size: 30,color: Color(
                                      0xBBEFF1F3)),
                                ),
                                Text("$_counter2",
                                  style: TextStyle(
                                    color: Color(0xfdfaf7f7),
                                  ),
                                ),
                                IconButton(
                                  onPressed: (){
                                    setState(() {
                                      _counter2++;
                                    });
                                  },
                                  icon: Icon(Icons.add_circle,size: 30,color: Color(0xBBEFF1F3)),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 100,left: 160),
                            child: SwipeButton(
                              width: 150,
                              activeThumbColor: Color(0x9b54060c),
                              activeTrackColor: Color(0x764B4C4F),

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
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text("Successfully..."),
                                    backgroundColor: Color(0xf57a1327),
                                  ),
                                );
                                setState(() {
                                  _counterA++;
                                });
                              },
                            ),
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.only(top: 60,left: 280),
                            child: LikeButton(
                              size: 17,
                              circleColor: CircleColor(
                                  start: Color(0xff5d0018),
                                  end: Color(0xff48001a)),
                              bubblesColor: BubblesColor(
                                dotPrimaryColor: Color(0xff91060b),
                                dotSecondaryColor: Color(0xffe00727),
                              ),
                              likeBuilder: (bool isLiked) {
                                return IconButton(
                                  icon: Icon(Icons.favorite),
                                  color: isLiked
                                      ? Color(0xffb40707)
                                      : Color(0xffffffff),
                                  onPressed: () {},
                                  iconSize: 30,
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Card(
                            // margin: EdgeInsets.only(
                            //     left: 0, right: 10, top: 20, bottom: 30),
                            color: Color(0x5F060709),
                            child: Container(
                              // margin: EdgeInsets.only(
                              //     bottom: 60),
                              height: 170,
                              width: 500,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 200),
                                child: Image.asset('asset/images/arya4.jfif'),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 180,top: 50),
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: (){
                                    setState(() {
                                      if(_counter3 !=0){
                                        _counter3--;
                                      }
                                    });
                                  },
                                  icon: Icon(Icons.remove_circle,size: 30,color: Color(
                                      0xBBEFF1F3)),
                                ),
                                Text("$_counter3",
                                  style: TextStyle(
                                    color: Color(0xfdfaf7f7),
                                  ),
                                ),
                                IconButton(
                                  onPressed: (){
                                    setState(() {
                                      _counter3++;
                                    });
                                  },
                                  icon: Icon(Icons.add_circle,size: 30,color: Color(0xBBEFF1F3)),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 100,left: 160),
                            child: SwipeButton(
                              width: 150,
                              activeThumbColor: Color(0x9b54060c),
                              activeTrackColor: Color(0x764B4C4F),

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
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text("Successfully..."),
                                    backgroundColor: Color(0xf57a1327),
                                  ),
                                );
                                setState(() {
                                  _counterA++;
                                });
                              },
                            ),
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.only(top: 60,left: 280),
                            child: LikeButton(
                              size: 17,
                              circleColor: CircleColor(
                                  start: Color(0xff5d0018),
                                  end: Color(0xff48001a)),
                              bubblesColor: BubblesColor(
                                dotPrimaryColor: Color(0xff91060b),
                                dotSecondaryColor: Color(0xffe00727),
                              ),
                              likeBuilder: (bool isLiked) {
                                return IconButton(
                                  icon: Icon(Icons.favorite),
                                  color: isLiked
                                      ? Color(0xffb40707)
                                      : Color(0xffffffff),
                                  onPressed: () {},
                                  iconSize: 30,
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                    options: CarouselOptions(
                      height: 200,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.5,
                      initialPage: 6,
                      enableInfiniteScroll: true,
                      reverse: true,
                      autoPlay: false,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.vertical,
                    ),
                  ),
                ),
                // child: Padding(
                //   padding: const EdgeInsets.only(top: 20),
                //   child: GridView.count(
                //     crossAxisCount: 1,
                //     scrollDirection: Axis.horizontal,
                //     children: [
                //       Stack(
                //         children: [
                //           Card(
                //             margin: EdgeInsets.only(
                //                 left: 70, right: 10, top: 20, bottom: 30),
                //             color: Color(0x5F060709),
                //             child: Container(
                //               margin: EdgeInsets.only(
                //                   bottom: 60, left: 30, right: 30, top: 10),
                //               height: 230,
                //               width: 200,
                //               child: Image.asset('asset/images/arya2.jfif'),
                //               decoration: BoxDecoration(
                //                 borderRadius: BorderRadius.only(
                //                     topLeft: Radius.circular(30),
                //                     topRight: Radius.circular(30)),
                //               ),
                //             ),
                //           ),
                //           Padding(
                //             padding:
                //                 const EdgeInsets.only(top: 190, right: 130),
                //             child: LikeButton(
                //               size: 17,
                //               circleColor: CircleColor(
                //                   start: Color(0xff5d0018),
                //                   end: Color(0xff48001a)),
                //               bubblesColor: BubblesColor(
                //                 dotPrimaryColor: Color(0xff91060b),
                //                 dotSecondaryColor: Color(0xffe00727),
                //               ),
                //               likeBuilder: (bool isLiked) {
                //                 return Icon(
                //                   Icons.favorite,
                //                   color: isLiked
                //                       ? Color(0xffb40707)
                //                       : Color(0xffffffff),
                //                   size: 30,
                //                 );
                //               },
                //             ),
                //           ),
                //           Padding(
                //             padding: const EdgeInsets.only(top: 240, left: 140),
                //             child: TextButton.icon(
                //                 onPressed: () {
                //                   Navigator.push(
                //                       context,
                //                       MaterialPageRoute(
                //                           builder: (context) => CART()));
                //                 },
                //                 icon: Icon(
                //                   Icons.attach_money,
                //                   color: Color(0xeff4f3f8),
                //                 ),
                //                 label: Text(
                //                   '999/-',
                //                   style: GoogleFonts.rubikGlitch(
                //                     color: Color(0xefffffff),
                //                   ),
                //                 )),
                //           ),
                //           Padding(
                //             padding: const EdgeInsets.only(top: 240, left: 240),
                //             child: TextButton.icon(
                //                 onPressed: () {},
                //                 icon: Icon(
                //                   Icons.shopping_bag_outlined,
                //                   color: Color(0xeff4f3f8),
                //                 ),
                //                 label: Text(
                //                   '',
                //                   style: GoogleFonts.rubikGlitch(
                //                     color: Color(0xefffffff),
                //                   ),
                //                 )),
                //           ),
                //         ],
                //       ),
                //       Stack(
                //         children: [
                //           Card(
                //             margin: EdgeInsets.only(
                //                 left: 70, right: 10, top: 20, bottom: 30),
                //             color: Color(0x5F060709),
                //             child: Container(
                //               margin: EdgeInsets.only(
                //                   bottom: 60, left: 30, right: 30, top: 10),
                //               height: 230,
                //               width: 200,
                //               child: Image.asset('asset/images/arya1.jfif'),
                //               decoration: BoxDecoration(
                //                 borderRadius: BorderRadius.only(
                //                     topLeft: Radius.circular(30),
                //                     topRight: Radius.circular(30)),
                //               ),
                //             ),
                //           ),
                //           Padding(
                //             padding:
                //                 const EdgeInsets.only(top: 190, right: 130),
                //             child: LikeButton(
                //               size: 17,
                //               circleColor: CircleColor(
                //                   start: Color(0xff5d0018),
                //                   end: Color(0xff48001a)),
                //               bubblesColor: BubblesColor(
                //                 dotPrimaryColor: Color(0xff91060b),
                //                 dotSecondaryColor: Color(0xffe00727),
                //               ),
                //               likeBuilder: (bool isLiked) {
                //                 return Icon(
                //                   Icons.favorite,
                //                   color: isLiked
                //                       ? Color(0xffb40707)
                //                       : Color(0xffffffff),
                //                   size: 30,
                //                 );
                //               },
                //             ),
                //           ),
                //           Padding(
                //             padding: const EdgeInsets.only(top: 240, left: 140),
                //             child: TextButton.icon(
                //                 onPressed: () {
                //                   Navigator.push(
                //                       context,
                //                       MaterialPageRoute(
                //                           builder: (context) => CART()));
                //                 },
                //                 icon: Icon(
                //                   Icons.attach_money,
                //                   color: Color(0xeff4f3f8),
                //                 ),
                //                 label: Text(
                //                   '999/-',
                //                   style: GoogleFonts.rubikGlitch(
                //                     color: Color(0xefffffff),
                //                   ),
                //                 )),
                //           ),
                //           Padding(
                //             padding: const EdgeInsets.only(top: 240, left: 240),
                //             child: TextButton.icon(
                //                 onPressed: () {},
                //                 icon: Icon(
                //                   Icons.shopping_bag_outlined,
                //                   color: Color(0xeff4f3f8),
                //                 ),
                //                 label: Text(
                //                   '',
                //                   style: GoogleFonts.rubikGlitch(
                //                     color: Color(0xefffffff),
                //                   ),
                //                 )),
                //           ),
                //         ],
                //       ),
                //       Stack(
                //         children: [
                //           Card(
                //             margin: EdgeInsets.only(
                //                 left: 70, right: 10, top: 20, bottom: 30),
                //             color: Color(0x5F060709),
                //             child: Container(
                //               margin: EdgeInsets.only(
                //                   bottom: 60, left: 30, right: 30, top: 10),
                //               height: 230,
                //               width: 200,
                //               child: Image.asset('asset/images/arya3.jfif'),
                //               decoration: BoxDecoration(
                //                 borderRadius: BorderRadius.only(
                //                     topLeft: Radius.circular(30),
                //                     topRight: Radius.circular(30)),
                //               ),
                //             ),
                //           ),
                //           Padding(
                //             padding:
                //                 const EdgeInsets.only(top: 190, right: 130),
                //             child: LikeButton(
                //               size: 17,
                //               circleColor: CircleColor(
                //                   start: Color(0xff5d0018),
                //                   end: Color(0xff48001a)),
                //               bubblesColor: BubblesColor(
                //                 dotPrimaryColor: Color(0xff91060b),
                //                 dotSecondaryColor: Color(0xffe00727),
                //               ),
                //               likeBuilder: (bool isLiked) {
                //                 return Icon(
                //                   Icons.favorite,
                //                   color: isLiked
                //                       ? Color(0xffb40707)
                //                       : Color(0xffffffff),
                //                   size: 30,
                //                 );
                //               },
                //             ),
                //           ),
                //           Padding(
                //             padding: const EdgeInsets.only(top: 240, left: 140),
                //             child: TextButton.icon(
                //                 onPressed: () {
                //                   Navigator.push(
                //                       context,
                //                       MaterialPageRoute(
                //                           builder: (context) => CART()));
                //                 },
                //                 icon: Icon(
                //                   Icons.attach_money,
                //                   color: Color(0xeff4f3f8),
                //                 ),
                //                 label: Text(
                //                   '999/-',
                //                   style: GoogleFonts.rubikGlitch(
                //                     color: Color(0xefffffff),
                //                   ),
                //                 )),
                //           ),
                //           Padding(
                //             padding: const EdgeInsets.only(top: 240, left: 240),
                //             child: TextButton.icon(
                //                 onPressed: () {},
                //                 icon: Icon(
                //                   Icons.shopping_bag_outlined,
                //                   color: Color(0xeff4f3f8),
                //                 ),
                //                 label: Text(
                //                   '',
                //                   style: GoogleFonts.rubikGlitch(
                //                     color: Color(0xefffffff),
                //                   ),
                //                 )),
                //           ),
                //         ],
                //       ),
                //       Stack(
                //         children: [
                //           Card(
                //             margin: EdgeInsets.only(
                //                 left: 70, right: 10, top: 20, bottom: 30),
                //             color: Color(0x5F060709),
                //             child: Container(
                //               margin: EdgeInsets.only(
                //                   bottom: 60, left: 30, right: 30, top: 10),
                //               height: 230,
                //               width: 200,
                //               child: Image.asset('asset/images/arya4.jfif'),
                //               decoration: BoxDecoration(
                //                 borderRadius: BorderRadius.only(
                //                     topLeft: Radius.circular(30),
                //                     topRight: Radius.circular(30)),
                //               ),
                //             ),
                //           ),
                //           Padding(
                //             padding:
                //                 const EdgeInsets.only(top: 190, right: 130),
                //             child: LikeButton(
                //               size: 17,
                //               circleColor: CircleColor(
                //                   start: Color(0xff5d0018),
                //                   end: Color(0xff48001a)),
                //               bubblesColor: BubblesColor(
                //                 dotPrimaryColor: Color(0xff91060b),
                //                 dotSecondaryColor: Color(0xffe00727),
                //               ),
                //               likeBuilder: (bool isLiked) {
                //                 return Icon(
                //                   Icons.favorite,
                //                   color: isLiked
                //                       ? Color(0xffb40707)
                //                       : Color(0xffffffff),
                //                   size: 30,
                //                 );
                //               },
                //             ),
                //           ),
                //           Padding(
                //             padding: const EdgeInsets.only(top: 240, left: 140),
                //             child: TextButton.icon(
                //                 onPressed: () {
                //                   Navigator.push(
                //                       context,
                //                       MaterialPageRoute(
                //                           builder: (context) => CART()));
                //                 },
                //                 icon: Icon(
                //                   Icons.attach_money,
                //                   color: Color(0xeff4f3f8),
                //                 ),
                //                 label: Text(
                //                   '999/-',
                //                   style: GoogleFonts.rubikGlitch(
                //                     color: Color(0xefffffff),
                //                   ),
                //                 )),
                //           ),
                //           Padding(
                //             padding: const EdgeInsets.only(top: 240, left: 240),
                //             child: TextButton.icon(
                //                 onPressed: () {},
                //                 icon: Icon(
                //                   Icons.shopping_bag_outlined,
                //                   color: Color(0xeff4f3f8),
                //                 ),
                //                 label: Text(
                //                   '',
                //                   style: GoogleFonts.rubikGlitch(
                //                     color: Color(0xefffffff),
                //                   ),
                //                 )),
                //           ),
                //         ],
                //       ),
                //       Stack(
                //         children: [
                //           Card(
                //             margin: EdgeInsets.only(
                //                 left: 70, right: 10, top: 20, bottom: 30),
                //             color: Color(0x5F060709),
                //             child: Container(
                //               margin: EdgeInsets.only(
                //                   bottom: 60, left: 30, right: 30, top: 10),
                //               height: 230,
                //               width: 200,
                //               child: Image.asset('asset/images/arya5.jfif'),
                //               decoration: BoxDecoration(
                //                 borderRadius: BorderRadius.only(
                //                     topLeft: Radius.circular(30),
                //                     topRight: Radius.circular(30)),
                //               ),
                //             ),
                //           ),
                //           Padding(
                //             padding:
                //                 const EdgeInsets.only(top: 190, right: 130),
                //             child: LikeButton(
                //               size: 17,
                //               circleColor: CircleColor(
                //                   start: Color(0xff5d0018),
                //                   end: Color(0xff48001a)),
                //               bubblesColor: BubblesColor(
                //                 dotPrimaryColor: Color(0xff91060b),
                //                 dotSecondaryColor: Color(0xffe00727),
                //               ),
                //               likeBuilder: (bool isLiked) {
                //                 return Icon(
                //                   Icons.favorite,
                //                   color: isLiked
                //                       ? Color(0xffb40707)
                //                       : Color(0xffffffff),
                //                   size: 30,
                //                 );
                //               },
                //             ),
                //           ),
                //           Padding(
                //             padding: const EdgeInsets.only(top: 240, left: 140),
                //             child: TextButton.icon(
                //                 onPressed: () {
                //                   Navigator.push(
                //                       context,
                //                       MaterialPageRoute(
                //                           builder: (context) => CART()));
                //                 },
                //                 icon: Icon(
                //                   Icons.attach_money,
                //                   color: Color(0xeff4f3f8),
                //                 ),
                //                 label: Text(
                //                   '999/-',
                //                   style: GoogleFonts.rubikGlitch(
                //                     color: Color(0xefffffff),
                //                   ),
                //                 )),
                //           ),
                //           Padding(
                //             padding: const EdgeInsets.only(top: 240, left: 240),
                //             child: TextButton.icon(
                //                 onPressed: () {},
                //                 icon: Icon(
                //                   Icons.shopping_bag_outlined,
                //                   color: Color(0xeff4f3f8),
                //                 ),
                //                 label: Text(
                //                   '',
                //                   style: GoogleFonts.rubikGlitch(
                //                     color: Color(0xefffffff),
                //                   ),
                //                 )),
                //           ),
                //         ],
                //       ),
                //       Stack(
                //         children: [
                //           Card(
                //             margin: EdgeInsets.only(
                //                 left: 70, right: 0, top: 20, bottom: 30),
                //             color: Color(0x5F060709),
                //             child: Container(
                //               margin: EdgeInsets.only(
                //                   bottom: 60, left: 30, right: 30, top: 10),
                //               height: 230,
                //               width: 200,
                //               child: Image.asset('asset/images/arya5.jfif'),
                //               decoration: BoxDecoration(
                //                 borderRadius: BorderRadius.only(
                //                     topLeft: Radius.circular(30),
                //                     topRight: Radius.circular(30)),
                //               ),
                //             ),
                //           ),
                //           Padding(
                //             padding:
                //                 const EdgeInsets.only(top: 190, right: 130),
                //             child: LikeButton(
                //               size: 17,
                //               circleColor: CircleColor(
                //                   start: Color(0xff5d0018),
                //                   end: Color(0xff48001a)),
                //               bubblesColor: BubblesColor(
                //                 dotPrimaryColor: Color(0xff91060b),
                //                 dotSecondaryColor: Color(0xffe00727),
                //               ),
                //               likeBuilder: (bool isLiked) {
                //                 return Icon(
                //                   Icons.favorite,
                //                   color: isLiked
                //                       ? Color(0xffb40707)
                //                       : Color(0xffffffff),
                //                   size: 30,
                //                 );
                //               },
                //             ),
                //           ),
                //           Padding(
                //             padding: const EdgeInsets.only(top: 240, left: 140),
                //             child: TextButton.icon(
                //                 onPressed: () {
                //                   Navigator.push(
                //                       context,
                //                       MaterialPageRoute(
                //                           builder: (context) => CART()));
                //                 },
                //                 icon: Icon(
                //                   Icons.attach_money,
                //                   color: Color(0xeff4f3f8),
                //                 ),
                //                 label: Text(
                //                   '999/-',
                //                   style: GoogleFonts.rubikGlitch(
                //                     color: Color(0xefffffff),
                //                   ),
                //                 )),
                //           ),
                //           Padding(
                //             padding: const EdgeInsets.only(top: 240, left: 240),
                //             child: TextButton.icon(
                //                 onPressed: () {},
                //                 icon: Icon(
                //                   Icons.shopping_bag_outlined,
                //                   color: Color(0xeff4f3f8),
                //                 ),
                //                 label: Text(
                //                   '',
                //                   style: GoogleFonts.rubikGlitch(
                //                     color: Color(0xefffffff),
                //                   ),
                //                 )),
                //           ),
                //         ],
                //       ),
                //     ],
                //   ),
                // ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  void _displaySuccessMotionToast() {
    MotionToast.success(
      title: const Text(
        'Success',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      description: const Text('The item is Successfully cart...'),
      animationType: AnimationType.fromTop,
      position: MotionToastPosition.top,
    ).show(context);
  }
}

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    'Kurti',
    'Sari',
    'Choli',
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var name in searchTerms) {
      if (name.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(name);
      }
    }
    return ListView.builder(
      itemBuilder: (contex, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
      itemCount: matchQuery.length,
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var name in searchTerms) {
      if (name.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(name);
      }
    }
    return ListView.builder(itemBuilder: (contex, index) {
      var result = matchQuery[index];
      return ListTile(
        title: Text(result),
      );
    });
  }
}


