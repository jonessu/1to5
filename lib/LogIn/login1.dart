import 'package:flutter/material.dart';
import 'package:digitatravelmoney/Widget/widget.dart';
import 'package:digitatravelmoney/LogIn/login2.dart';

class Login1 extends StatelessWidget {
  const Login1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Expanded(
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
                text_height: 25,
                text_width: 234,
                font_size: 18,
                colour: Color(0xff1c1d22),
              ),
              SizedBox(
                height: 91,
              ),
              Text_Widget(
                text: "FINGERPRINT UNLOCK",
                text_height: 14,
                text_width: 106,
                font_size: 10,
                colour: Color(0xff9d9da9),
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
                text_height: 19,
                text_width: 14,
                font_size: 13,
                colour: Color(0xff616267),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login2()));
                },
                child: Text_Widget(
                  text: "Login with Customer ID",
                  text_height: 19,
                  text_width: 152,
                  font_size: 13,
                  colour: Color(0xff1c1d22),
                ),
              ),
              SizedBox(
                height: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
