import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class UI_2 extends StatefulWidget{
  @override
  State<UI_2> createState() => _UI_2State();
}

class _UI_2State extends State<UI_2> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            height: size.height * 0.89,
            child: Stack(
              children:[
                Container(
                  padding: EdgeInsets.only(
                    left: 20,
                    top: 30,
                    right: 10,
                  ),
                  height: size.height * 0.37 - 19,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0x922B2D5E),
                        Color(0xcc100633),
                        Color(0x922B2D5E),
                        Color(0xcc100633),
                        Color(0x922B2D5E),
                        Color(0xcc100633),
                      ]
                    ),
                  ),
                  child: Row(
                    children: [
                      Column(
                        children:[
                          Row(
                            children: [
                              Text('Ropsten testnet',
                                style: TextStyle(color: Colors.orange,fontSize: (17),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 60),
                                child: Icon(Icons.keyboard_arrow_down,color: Colors.white,),
                              ),
                              Text('oxDeAd...Beef',
                                  style: TextStyle(color: Colors.white,fontSize: (17),),
                                ),
                              Icon(Icons.account_circle,color: Colors.white,),
                              Icon(Icons.keyboard_arrow_down,color: Colors.white,),
                            ],
                          ),
                          Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 260,top: 40),
                                    child: Text('Total Balance',
                                      style: TextStyle(color: Colors.white70,fontSize: (15),),
                                    ),
                                  ),
                                ],
                          ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right: 0),
                                        child: Icon(Icons.attach_money),
                                      ),
                                         Padding(
                                           padding: const EdgeInsets.only(right: 140),
                                           child: Text('426.75',
                                            style: TextStyle(color: Colors.black54,fontSize: (30),),
                                        ),
                                         ),
                                      OutlinedButton(
                                        style:OutlinedButton.styleFrom(
                                            primary: Colors.white,
                                        ),
                                        onPressed: (){},
                                        child: Text('+Add token'),
                                      ),
                                    ],
                                  ),

                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 100,top: 45),
                                child: Text('Your tokens',
                                  style: TextStyle(color: Colors.white,fontSize: (18),),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 45),
                                child: Text('Make changes',
                                  style: TextStyle(color: Colors.white,fontSize: (18),),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 15,
                  right: 15,
                  child:Column(
                    children :[
                      Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      elevation: 10,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(5),
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10,left: 2),
                              child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4akIGO9MFKOYcoH70hkI3jAT1_lclzPHRclNTKDB7CGWKvgBAf97qJstjqyeQlabnWKM&usqp=CAU',
                                height: 65,width: 65,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 50,top: 9),
                              child: ListTile(
                                title: Row(
                                  children: [
                                    Text('0xf1...do9d',style: TextStyle(color: Color(0xcc0a003a),fontWeight: FontWeight.bold),),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 100),
                                      child: Text('12.482 ETH',style: TextStyle(color: Color(0xcc0a003a),fontWeight: FontWeight.bold),),
                                    ),
                                  ],
                                ),
                                subtitle: Row(
                                  children: [
                                    Text('Mainnet'),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 150),
                                      child: Icon(Icons.attach_money),
                                    ),
                                    Text('51.97'),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              // margin: EdgeInsets.symmetric(horizontal: kFloatingActionButtonMargin),
                              height: 90,
                            )
                          ],
                        ),
                      ),
                    ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        elevation: 10,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(5),
                          ),
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10,left: 2),
                                child: Image.network('https://thumbs.dreamstime.com/b/electronic-commerce-monero-symbol-vector-illustration-design-142745172.jpg',
                                  height: 65,width: 65,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 49,top: 9),
                                child: ListTile(
                                  title: Row(
                                    children: [
                                      Text('0xb5...79x2',style: TextStyle(color: Color(0xcc0a003a),fontWeight: FontWeight.bold),),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 100),
                                        child: Text('54.482 OGD',style: TextStyle(color: Color(0xcc0a003a),fontWeight: FontWeight.bold),),
                                      ),
                                    ],
                                  ),
                                  subtitle: Row(
                                    children: [
                                      Text('Ropsten testnet'),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 99),
                                        child: Icon(Icons.attach_money),
                                      ),
                                      Text('215.25'),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                // margin: EdgeInsets.symmetric(horizontal: kFloatingActionButtonMargin),
                                height: 90,
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        elevation: 10,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(5),
                          ),
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10,left: 2),
                                child: Image.network('https://i.pinimg.com/originals/d1/8e/fb/d18efb22ae8106f401494a1b339ceed8.jpg',
                                  height: 65,width: 65,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 48,top: 9),
                                child: ListTile(
                                  title: Row(
                                    children: [
                                      Text('0x5o...N7h9',style: TextStyle(color: Color(0xcc0a003a),fontWeight: FontWeight.bold),),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 100),
                                        child: Text('88.482 BTC',style: TextStyle(color: Color(0xcc0a003a),fontWeight: FontWeight.bold),),
                                      ),
                                    ],
                                  ),
                                  subtitle: Row(
                                    children: [
                                      Text('Mainnet'),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 150),
                                        child: Icon(Icons.attach_money),
                                      ),
                                      Text('83.58'),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                // margin: EdgeInsets.symmetric(horizontal: kFloatingActionButtonMargin),
                                height: 90,
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        elevation: 10,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(5),
                          ),
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 15,left: 2),
                                child: Image.network('https://thumbs.dreamstime.com/b/litecoin-ltc-flat-icon-white-background-205709700.jpg',
                                  height: 65,width: 65,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 50,top: 9),
                                child: ListTile(
                                  title: Row(
                                    children: [
                                      Text('0xb5...79x2',style: TextStyle(color: Color(0xcc0a003a),fontWeight: FontWeight.bold),),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 100),
                                        child: Text('92.142 ETH',style: TextStyle(color: Color(0xcc0a003a),fontWeight: FontWeight.bold),),
                                      ),
                                    ],
                                  ),
                                  subtitle: Row(
                                    children: [
                                      Text('Ropsten testnet'),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 99),
                                        child: Icon(Icons.attach_money),
                                      ),
                                      Text('77.15'),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                // margin: EdgeInsets.symmetric(horizontal: kFloatingActionButtonMargin),
                                height: 90,
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        elevation: 10,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(5),
                          ),
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10,top: 15),
                                child: FloatingActionButton(
                                  onPressed: (){},
                                  child: Icon(Icons.add,color: Colors.black,),
                                  backgroundColor: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 60,top: 9),
                                child: ListTile(
                                  title: Row(
                                    children: [
                                      Text('Add token',style: TextStyle(color: Color(0xcc0a003a),fontWeight: FontWeight.bold),),
                                    ],
                                  ),
                                  subtitle:
                                      Text('Bitcoin, Cashcoin, Monero..'),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: kFloatingActionButtonMargin),
                                height: 90,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}