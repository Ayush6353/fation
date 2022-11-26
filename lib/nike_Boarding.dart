import 'package:flutter/material.dart';
import 'package:flutter1/nike%20login.dart';
import 'package:flutter1/nike_OnBorading1.dart';

class Boarding_Screen extends StatefulWidget {
  const Boarding_Screen({Key? key}) : super(key: key);

  @override
  State<Boarding_Screen> createState() => _Boarding_ScreenState();
}

class _Boarding_ScreenState extends State<Boarding_Screen> {
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  final List<OnBoradingScreen1> onBoarding = [
    OnBoradingScreen1(
        image:
        "asset/images/nike5.webp",
        title: "Choose how you ecommerce. The Shopmatic Way.",
        discription:
        "Four different ecommerce solution, designed to make it even more easy to sell online."),
    OnBoradingScreen1(
        image:
        "asset/images/nike2.webp",
        title: "Shopmatic Chat",
        discription:
        "Change conversation to conversion. Chat selling made easy with payments and shipping."),
    OnBoradingScreen1(
        image:
        "asset/images/nike3.webp",
        title: "Shopmatic Social",
        discription:
        "Turn your followers into buyes. Social commerce with payments and shipping."),
    OnBoradingScreen1(
        image:
        "asset/images/nike4.webp",
        title: "Shopmatic Webstore",
        discription:
        "Give your brand its identity online. Create your webstore in minutes without any coding."),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: onBoarding.length,
                controller: _pageController,
                itemBuilder: (context, index) => OnBoradingScreen1(
                  image: onBoarding[index].image,
                  title: onBoarding[index].title,
                  discription: onBoarding[index].discription,
                ),
              ),
            ),
            Row(
              children: [
                Spacer(),
                SizedBox(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15.0),
                          bottomRight: Radius.circular(0.0),
                          topRight: Radius.circular(15.0),
                          topLeft: Radius.circular(0.0),
                        ),
                      ),
                      backgroundColor: Color(0xF7050505),
                    ),
                    onPressed: () {
                      _pageController.nextPage(
                          duration: Duration(milliseconds: 300), curve: Curves.ease);
                    },
                    child: Text(
                      'Next'.toUpperCase(),
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 70),
                  child: SizedBox(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(0.0),
                            topRight: Radius.circular(15.0),
                            topLeft: Radius.circular(0.0),
                          ),
                        ),
                        backgroundColor: Color(0xF7050505),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => NIKE_LOGIN()));
                      },
                      child: Text(
                        'skip'.toUpperCase(),
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}