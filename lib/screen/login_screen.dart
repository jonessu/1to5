import 'package:flutter/material.dart';
import 'package:digitatravelmoney/Widget/text_widget.dart';
import 'package:digitatravelmoney/screen/pin_verification_screen.dart';

class login_Screen extends StatelessWidget {
  const login_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(20),
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
                  height: 118,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text_Widget(
                      text: 'CUSTOMER ID',
                      font_size: 10,
                      colour: Color(0xff9d9da9),
                      font_family: 'Poppins-Medium',
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Color(0xffb9b9bf),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: TextFormField(
                      initialValue: "VijaySS",
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text_Widget(
                      text: 'PASSWORD',
                      font_size: 10,
                      colour: Color(0xff9d9da9),
                      font_family: 'Poppins-Medium',
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Color(0xffb9b9bf),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: TextFormField(
                      initialValue: '•••••••••••',
                      cursorColor: Colors.black,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xff616267),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text_Widget(
                    text: 'Set/Forgot Password?',
                    font_size: 13,
                    colour: Color(0xff1c1d22),
                    font_family: 'Poppins-Medium',
                  ),
                ),
                SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => pinverificationScreen()));
                  },
                  child: Container(
                    width: double.infinity,
                    height: 42,
                    decoration: BoxDecoration(
                      color: Color(0xff0066cc),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text_Widget(
                        text: "Login",
                        font_size: 12,
                        colour: Colors.white,
                        font_family: 'Poppins-SemiBold',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 272,
                  height: 15,
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "By clicking login, you agree to our ",
                            style: TextStyle(
                              color: Color(0xff616267),
                              fontSize: 10,
                              letterSpacing: 0,
                            ),
                          ),
                          TextSpan(
                            text: "Terms & Conditions.",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Color(0xff616267),
                              fontSize: 10,
                              letterSpacing: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
