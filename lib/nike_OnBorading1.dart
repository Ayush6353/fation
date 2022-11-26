import 'package:flutter/material.dart';

class OnBoradingScreen1 extends StatelessWidget {
  const OnBoradingScreen1(
      {Key? key,
        required this.image,
        required this.title,
        required this.discription})
      : super(key: key);

  final String image, title, discription;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Spacer(),
            Image.asset(
              image,
              height: 250,
            ),
            Spacer(),
            Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              discription,
              textAlign: TextAlign.center,
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}