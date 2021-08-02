import 'package:digitatravelmoney/screen/onboard_screen.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class splashScreen extends StatefulWidget {
  static const id = 'splash_screen';
  @override
  _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => onboardScreen())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Image.asset(
                  'images/Splash_Image/center.png',
                  width: 151,
                  height: 70,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/Splash_Image/bottom_left.png',
                    width: 71.5,
                    height: 30,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Image.asset(
                    'images/Splash_Image/bottom_center.png',
                    width: 71.5,
                    height: 30,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Image.asset(
                    'images/Splash_Image/bottom_right.png',
                    width: 71.5,
                    height: 30,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
