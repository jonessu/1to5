import 'package:flutter/material.dart';
import 'package:digitatravelmoney/Widget/text_widget.dart';
import 'package:digitatravelmoney/screen/login_screen.dart';

class onboardScreen extends StatelessWidget {
  static const id = 'onboard_screen';
  const onboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              'images/LogIn/logo_top.png',
              width: 151,
              height: 70,
            ),
            SizedBox(
              height: 30,
            ),
            Text_Widget(
              text: "Get started by Logging in!",
              font_size: 18,
              colour: Color(0xff1c1d22),
              font_family: 'Poppins-Regular',
            ),
            SizedBox(
              height: 91,
            ),
            Text_Widget(
              text: "FINGERPRINT UNLOCK",
              font_size: 10,
              colour: Color(0xff9d9da9),
              font_family: 'Poppins-Medium',
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Color(0xffb9b9bf),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Image.asset(
                    'images/LogIn/fingerprint.png',
                    width: 80,
                    height: 80,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text_Widget(
              text: "or",
              font_size: 13,
              colour: Color(0xff616267),
              font_family: 'Poppins-Regular',
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => login_Screen()));
              },
              child: Text_Widget(
                text: "Login with Customer ID",
                font_size: 13,
                colour: Color(0xff1c1d22),
                font_family: 'Poppins-Medium',
              ),
            ),
            SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}
