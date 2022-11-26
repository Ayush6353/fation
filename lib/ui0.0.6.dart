import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:iconify_flutter/icons/ls.dart';
import 'package:fluttermoji/fluttermoji.dart';

class UI_0_0_6 extends StatefulWidget {
  @override
  State<UI_0_0_6> createState() => _UI_0_0_6State();
}

class _UI_0_0_6State extends State<UI_0_0_6> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Container(
            height: 200,
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(500),
                  bottomRight: Radius.circular(500)),
              gradient: LinearGradient(
                colors: [
                  // Color(0xefc7bcdc),
                  Color(0xf56faade),
                  Color(0xf54f91e7),
                  Color(0xd2246ffa),
                  Color(0xf50346d5),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
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
            padding: const EdgeInsets.only(top: 110, left: 130),
            child: Container(
              height: 130,
              width: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(90),
                  bottomRight: Radius.circular(90),
                  topRight: Radius.circular(90),
                  topLeft: Radius.circular(90),
                ),
                gradient: LinearGradient(
                  colors: [
                    Color(0xf5c9dbea),
                    Color(0xf5c9dbea),
                    Color(0xf5c9dbea),
                    Color(0xf5c9dbea),
                    Color(0xf5c9dbea),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 40,
                    color: Color(0xBB060709),
                  ),
                ],
              ),
              child: Image.asset(
                'asset/images/img.png',
                height: 150,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 85, left: 77),
            child: Image.network(
              'https://www.freepnglogos.com/uploads/design-png/the-design-the-clipart-clipground-9.png',
              height: 200,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 270),
            child: CarouselSlider(
              items: [
                Image.asset(
                    'asset/images/img1.png'),
                Image.asset(
                    'asset/images/img2.png'),
                Image.asset(
                    'asset/images/img1.png'),
                Image.asset(
                    'asset/images/img2.png'),
              ],
              options: CarouselOptions(
                height: 200,
                aspectRatio: 16 / 9,
                viewportFraction: 0.7,
                initialPage: 0,
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
            padding: const EdgeInsets.only(top: 452,left: 20),
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
                    fillColor: Color(0x81CDD0D3),
                    hintText: 'Search...',
                    prefixIcon: Icon(
                      Icons.search_rounded,
                      color: Color(0x9D1F2125),
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 510),
            child: GridView.count(
              crossAxisCount: 2,
              scrollDirection: Axis.vertical,
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  elevation: 10.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                    child: Stack(
                      children: [
                        Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1TXvS8asBqugiNkEzo2bm_uD6KoJSWb5E0g&usqp=CAU',
                          height: 150,
                          width: 200,
                          fit: BoxFit.fitWidth,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 142, left: 47),
                          height: 30,
                          width: 100,
                          child: Stack(
                            children: [
                              ElevatedButton(
                                  onPressed: () {}, child: Text('Download'))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  elevation: 10.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                    child: Stack(
                      children: [
                        Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvE_jBjImtG2Q8tgf_1o9HpPxScf_taZRoZg&usqp=CAU',
                          height: 150,
                          width: 200,
                          fit: BoxFit.fitWidth,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 142, left: 47),
                          height: 30,
                          width: 100,
                          child: Stack(
                            children: [
                              ElevatedButton(
                                  onPressed: () {}, child: Text('Download'))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  elevation: 10.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                    child: Stack(
                      children: [
                        Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLq2PtSGMxgEvCWuhEJaknuc0Tlb1QgEd88w&usqp=CAU',
                          height: 150,
                          width: 200,
                          fit: BoxFit.fitWidth,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 142, left: 47),
                          height: 30,
                          width: 100,
                          child: Stack(
                            children: [
                              ElevatedButton(
                                  onPressed: () {}, child: Text('Download'))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  elevation: 10.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                    child: Stack(
                      children: [
                        Image.network(
                          'https://i.ytimg.com/vi/7oIAs-0G4mw/maxresdefault.jpg',
                          height: 150,
                          width: 200,
                          fit: BoxFit.fitWidth,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 142, left: 47),
                          height: 30,
                          width: 100,
                          child: Stack(
                            children: [
                              ElevatedButton(
                                  onPressed: () {}, child: Text('Download'))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  elevation: 10.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                    child: Stack(
                      children: [
                        Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTNIkSCgY43AoSppFGew3dYp0h0L1d0QbzmA&usqp=CAU',
                          height: 150,
                          width: 200,
                          fit: BoxFit.fitWidth,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 142, left: 47),
                          height: 30,
                          width: 100,
                          child: Stack(
                            children: [
                              ElevatedButton(
                                  onPressed: () {}, child: Text('Download'))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  elevation: 10.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                    child: Stack(
                      children: [
                        Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiH1e8JJg9E8V7nXnKQ_nEu5ANWXPrI0yCXg&usqp=CAU',
                          height: 150,
                          width: 200,
                          fit: BoxFit.fitWidth,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 142, left: 47),
                          height: 30,
                          width: 100,
                          child: Stack(
                            children: [
                              ElevatedButton(
                                  onPressed: () {}, child: Text('Download'))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  elevation: 10.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                    child: Stack(
                      children: [
                        Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvd8JLDATAj9ONtCouASPBmquO2iXPAJlAUA&usqp=CAU',
                          height: 150,
                          width: 200,
                          fit: BoxFit.fitWidth,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 142, left: 47),
                          height: 30,
                          width: 100,
                          child: Stack(
                            children: [
                              ElevatedButton(
                                  onPressed: () {}, child: Text('Download'))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  elevation: 10.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                    child: Stack(
                      children: [
                        Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTm1vcHvEYyEXaw4rjQoy3bhQk2hee9VGsDBg&usqp=CAU',
                          height: 150,
                          width: 200,
                          fit: BoxFit.fitWidth,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 142, left: 47),
                          height: 30,
                          width: 100,
                          child: Stack(
                            children: [
                              ElevatedButton(
                                  onPressed: () {}, child: Text('Download'))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  elevation: 10.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                    child: Stack(
                      children: [
                        Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjmQa9khuCG3t-aI0qqqP-Iz1JerabbB89HA&usqp=CAU',
                          height: 150,
                          width: 200,
                          fit: BoxFit.fitWidth,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 142, left: 47),
                          height: 30,
                          width: 100,
                          child: Stack(
                            children: [
                              ElevatedButton(
                                  onPressed: () {}, child: Text('Download'))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  elevation: 10.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 60, left: 70),
                          child: FloatingActionButton(
                            onPressed: () {},
                            child: Icon(Icons.add_circle_outline,
                                color: Colors.black87, size: 50),
                            backgroundColor: Colors.white,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 142, left: 47),
                          height: 30,
                          width: 200,
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text('New Add',
                                    style: GoogleFonts.abhayaLibre(
                                      color: Color(0xef0e0d0d),
                                    ),
                                    textScaleFactor: 1.5),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50,left: 160),
            child: Text('Flutter',
                style: GoogleFonts.arbutus(
                  color: Color(0xef02324f),
                ),
                textScaleFactor: 1.5),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 90),
            child: Image.network('https://res.cloudinary.com/canonical/image/fetch/f_auto,q_auto,fl_sanitize,w_288,h_288/https://assets.ubuntu.com/v1/e1899663-flutter-logo.png',
              height: 100,
            ),
          ),

          // FluttermojiCustomizer(),
          // FluttermojiCircleAvatar(),
        ],
      ),
    );
  }
}
