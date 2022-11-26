import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/nike_cart.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:iconsax/iconsax.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Notch Bottom Bar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NIKE_HOME(),
    );
  }
}

class NIKE_HOME extends StatefulWidget {
  const NIKE_HOME({Key? key}) : super(key: key);

  @override
  State<NIKE_HOME> createState() => _NIKE_HOMEState();
}

class _NIKE_HOMEState extends State<NIKE_HOME> {
  /// Controller to handle PageView and also handles initial page
  final _pageController = PageController(initialPage: 2);

  int maxCount = 5;

  /// widget list
  final List<Widget> bottomBarPages = [
    const Page1(),
    const Page2(),
    const Page3(),
    const Page4(),
    const Page5(),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: (

      ),
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
            bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
      extendBody: true,
      bottomNavigationBar: (bottomBarPages.length <= maxCount)
          ? AnimatedNotchBottomBar(
        pageController: _pageController,
        color: Colors.black87,
        showLabel: false,
        notchColor: Color(0xF7141715),
        bottomBarItems: [
          const BottomBarItem(
            inActiveItem: Icon(
              Icons.home_filled,
              color: Colors.grey,
            ),
            activeItem: Icon(
              Icons.home_filled,
              color: Colors.white,
            ),
            itemLabel: 'Page 1',
          ),
          const BottomBarItem(
            inActiveItem: Icon(
              Icons.star,
              color: Colors.grey,
            ),
            activeItem: Icon(
              Icons.star,
              color: Colors.white,
            ),
            itemLabel: 'Page 2',
          ),

          ///svg example
          const BottomBarItem(
            inActiveItem: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.grey,
            ),
            activeItem: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.white,
            ),
            itemLabel: 'Page 3',
          ),
          const BottomBarItem(
            inActiveItem: Icon(
              Icons.settings,
              color: Colors.grey,
            ),
            activeItem: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            itemLabel: 'Page 4',
          ),
          const BottomBarItem(
            inActiveItem: Icon(
              Icons.person,
              color: Colors.grey,
            ),
            activeItem: Icon(
              Icons.person,
              color: Colors.white,
            ),
            itemLabel: 'Page 5',
          ),
        ],
        onTap: (index) {
          /// control your animation using page controller
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeIn,
          );
        },
      )
          : null,
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white, child: const Center(child: Text('Page 1')));
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white, child: const Center(child: Text('Page 2')));
  }
}

   String? stringResponse;
   Map? mapResponse;
   Map? dataResponse;
   List? listResponse;

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  // late String stringResponse;

  Future apicall() async{
    // http.BaseResponse response;
    var response= await http.get(Uri.parse("https://reqres.in/api/users?page=2"));
    if(response.statusCode ==200){
      setState(() {
        // stringResponse = response.body;
        mapResponse = json.decode(response.body);
        // dataResponse = mapResponse!['data'];
        listResponse = mapResponse!['data'];
      });
    }
  }

  @override
  void initState() {
    apicall();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    // TabController _tabController =
    // TabController(length: 3, vsync: this);

    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;

    return Container(
        color: Colors.white,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: _height*0.03,left: _width*0.04),
              child: IconButton(
                icon: Icon(Icons.menu),
                onPressed: (){
                  Drawer(
                    backgroundColor: Colors.black87,
                    width: _width*0.2,
                    child: Stack(
                      children: [
                        Container(
                          height: _height*0.4,
                          width: _width*0.2,
                          color: Colors.black87,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top:_height*0.1,left: _width*0.04),
              child: Container(
                height: _height*0.25,
                width: _width*0.92,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
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
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: _height*0.17,left: _width*0.05),
                      child: AnimatedButton(
                        // animationDuration: Duration(seconds: 3),
                        height: _height*0.05,
                        width: _width*0.3,
                        text: 'Start Now',
                        textStyle: TextStyle(color:  Color(0xFC060709),fontWeight: FontWeight.bold,fontSize: 16),
                        isReverse: true,
                        selectedTextColor: Colors.white,
                        selectedBackgroundColor: Colors.black87,
                        transitionType: TransitionType.LEFT_CENTER_ROUNDER,
                        backgroundColor: Colors.white,
                        borderRadius: 20,
                        borderWidth: 2,
                        onPress: (){
                          // Navigator.push(
                          //     context, MaterialPageRoute(builder: (context) => Boarding_Screen()));
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: _height*0.03,left: _width*0.06),
                      child: Text(
                        // listResponse![1]['first_name'].toString(),
                        "New Release",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xF7A8A6A6),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: _height*0.08,left: _width*0.06),
                      child: Text(
                        "Nike Air\nMax Plus",
                        style: TextStyle(
                          fontSize: 19,
                          color: Color(0xF7FCFCFC),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: _width * 0.39),
                      child: Image(
                        alignment: Alignment.topCenter,
                        image: AssetImage(
                          "asset/images/s9.png",
                        ),
                        width: _width * 0.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: _height*0.37,right: _width*0.22),
              child: ButtonBar(
                children: [
                  TextButton(onPressed: (){}, child: Text("Popular",style: TextStyle(color: Colors.black87),)),
                  TextButton(onPressed: (){}, child: Text("Men",style: TextStyle(color: Colors.black87),)),
                  TextButton(onPressed: (){}, child: Text("Women",style: TextStyle(color: Colors.black87),)),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: _height*0.53),
              child: CarouselSlider(
                  items: [
                    Stack(
                      children: [
                        Container(
                          height: _height*0.32,
                          width: _width*0.6,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
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
                          child: Stack(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: _height*0.25,left: _width*0.42),
                                child: Container(
                                  height: _height*0.08,
                                  width: _width*0.11,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30),
                                      bottomRight: Radius.circular(0),
                                      bottomLeft: Radius.circular(0),
                                    ),
                                    color: Color(0xF0F6F7FA),
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(0, 6),
                                        blurRadius: 10,
                                        color: Color(0xD5060709),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top:_height*0.24,left:_width*0.4),
                                child: IconButton(
                                  onPressed: (){
                                    Navigator.push(
                                        context, MaterialPageRoute(builder: (context) => NIKE_CART()));
                                  },
                                  icon: Icon(Icons.add_circle),
                                  color:Color(0xCB0A0B0C) ,
                                  iconSize: 43,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: _height*0.27,left: _width*0.1),
                                child: Text(
                                  "\$160",
                                  style: TextStyle(
                                    fontSize: 19,
                                    color: Color(0xF7FCFCFC),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: _height*0.18,left: _width*0.1),
                                child: Text(
                                  "Nike Air Max 270",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xF7FCFCFC),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: _height*0.21,left: _width*0.1),
                                child: Text(
                                  "Men's Shoes",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xF7949276),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(left: _width * 0.09),
                                child: Image(
                                  alignment: Alignment.topCenter,
                                  image: AssetImage(
                                    "asset/images/s3.png",
                                  ),
                                  width: _width * 0.4,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          height: _height*0.32,
                          width: _width*0.6,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
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
                          child: Stack(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: _height*0.25,left: _width*0.42),
                                child: Container(
                                  height: _height*0.08,
                                  width: _width*0.11,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30),
                                      bottomRight: Radius.circular(0),
                                      bottomLeft: Radius.circular(0),
                                    ),
                                    color: Color(0xF0F6F7FA),
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(0, 6),
                                        blurRadius: 10,
                                        color: Color(0xD5060709),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top:_height*0.24,left:_width*0.4),
                                child: IconButton(
                                  onPressed: (){},
                                  icon: Icon(Icons.add_circle),
                                  color:Color(0xCB0A0B0C) ,
                                  iconSize: 43,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: _height*0.27,left: _width*0.1),
                                child: Text(
                                  "\$160",
                                  style: TextStyle(
                                    fontSize: 19,
                                    color: Color(0xF7FCFCFC),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: _height*0.18,left: _width*0.1),
                                child: Text(
                                  "Nike Air Max 270",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xF7FCFCFC),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: _height*0.21,left: _width*0.1),
                                child: Text(
                                  "Men's Shoes",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xF7854733),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(left: _width * 0.09),
                                child: Image(
                                  alignment: Alignment.topCenter,
                                  image: AssetImage(
                                    "asset/images/s1.png",
                                  ),
                                  width: _width * 0.4,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          height: _height*0.32,
                          width: _width*0.6,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
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
                          child: Stack(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: _height*0.25,left: _width*0.42),
                                child: Container(
                                  height: _height*0.08,
                                  width: _width*0.11,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30),
                                      bottomRight: Radius.circular(0),
                                      bottomLeft: Radius.circular(0),
                                    ),
                                    color: Color(0xF0F6F7FA),
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(0, 6),
                                        blurRadius: 10,
                                        color: Color(0xD5060709),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top:_height*0.24,left:_width*0.4),
                                child: IconButton(
                                  onPressed: (){},
                                  icon: Icon(Icons.add_circle),
                                  color:Color(0xCB0A0B0C) ,
                                  iconSize: 43,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: _height*0.27,left: _width*0.1),
                                child: Text(
                                  "\$160",
                                  style: TextStyle(
                                    fontSize: 19,
                                    color: Color(0xF7FCFCFC),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: _height*0.18,left: _width*0.1),
                                child: Text(
                                  "Nike Air Max 270",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xF7FCFCFC),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: _height*0.21,left: _width*0.1),
                                child: Text(
                                  "Men's Shoes",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xF7747C7A),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(left: _width * 0.09),
                                child: Image(
                                  alignment: Alignment.topCenter,
                                  image: AssetImage(
                                    "asset/images/s4.png",
                                  ),
                                  width: _width * 0.4,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          height: _height*0.32,
                          width: _width*0.6,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
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
                          child: Stack(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: _height*0.25,left: _width*0.42),
                                child: Container(
                                  height: _height*0.08,
                                  width: _width*0.11,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30),
                                      bottomRight: Radius.circular(0),
                                      bottomLeft: Radius.circular(0),
                                    ),
                                    color: Color(0xF0F6F7FA),
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(0, 6),
                                        blurRadius: 10,
                                        color: Color(0xD5060709),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top:_height*0.24,left:_width*0.4),
                                child: IconButton(
                                  onPressed: (){},
                                  icon: Icon(Icons.add_circle),
                                  color:Color(0xCB0A0B0C) ,
                                  iconSize: 43,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: _height*0.27,left: _width*0.1),
                                child: Text(
                                  "\$160",
                                  style: TextStyle(
                                    fontSize: 19,
                                    color: Color(0xF7FCFCFC),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: _height*0.18,left: _width*0.1),
                                child: Text(
                                  "Nike Air Max 270",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xF7FCFCFC),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: _height*0.21,left: _width*0.1),
                                child: Text(
                                  "Men's Shoes",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xF7E06210),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(left: _width * 0.09),
                                child: Image(
                                  alignment: Alignment.topCenter,
                                  image: AssetImage(
                                    "asset/images/s7.png",
                                  ),
                                  width: _width * 0.4,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          height: _height*0.32,
                          width: _width*0.6,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
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
                          child: Stack(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: _height*0.25,left: _width*0.42),
                                child: Container(
                                  height: _height*0.08,
                                  width: _width*0.11,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30),
                                      bottomRight: Radius.circular(0),
                                      bottomLeft: Radius.circular(0),
                                    ),
                                    color: Color(0xF0F6F7FA),
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(0, 6),
                                        blurRadius: 10,
                                        color: Color(0xD5060709),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top:_height*0.24,left:_width*0.4),
                                child: IconButton(
                                  onPressed: (){},
                                  icon: Icon(Icons.add_circle),
                                  color:Color(0xCB0A0B0C) ,
                                  iconSize: 43,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: _height*0.27,left: _width*0.1),
                                child: Text(
                                  "\$160",
                                  style: TextStyle(
                                    fontSize: 19,
                                    color: Color(0xF7FCFCFC),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: _height*0.18,left: _width*0.1),
                                child: Text(
                                  "Nike Air Max 270",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xF7FCFCFC),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: _height*0.21,left: _width*0.1),
                                child: Text(
                                  "Men's Shoes",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xF7004633),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(left: _width * 0.09),
                                child: Image(
                                  alignment: Alignment.topCenter,
                                  image: AssetImage(
                                    "asset/images/s5.png",
                                  ),
                                  width: _width * 0.4,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                  options: CarouselOptions(
                    height: 300,
                    aspectRatio: 16/9,
                    viewportFraction: 0.65,
                    initialPage: 5,
                    enableInfiniteScroll: true,
                    reverse: true,
                    autoPlay: false,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                  )
              ),
            ),
            // ListView.builder(itemBuilder: (context,index){
            //   return Stack(
            //     children: [
            //       Image.network(listResponse![index]['avatar']),
            //     ],
            //   );
            // },
            //   itemCount: listResponse ==null?0: listResponse!.length,
            // ),
          ],
        ),
    );
  }
}

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white, child: const Center(child: Text('Page 4')));
  }
}

class Page5 extends StatelessWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: const Center(child: Text('Page 4')));
  }
}