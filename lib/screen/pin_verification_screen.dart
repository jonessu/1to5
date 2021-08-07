import 'package:flutter/material.dart';
import 'package:digitatravelmoney/Widget/text_widget.dart';
import 'package:digitatravelmoney/screen/welcome_screen.dart';
import 'package:email_auth/email_auth.dart';

class pinverificationScreen extends StatefulWidget {
  pinverificationScreen({Key? key, required this.emailcontroller})
      : super(key: key);

  final String emailcontroller;

  @override
  _pinverificationScreenState createState() => _pinverificationScreenState();
}

class _pinverificationScreenState extends State<pinverificationScreen> {
  final TextEditingController _otpcontroller = TextEditingController();

  void otpverified() async {
    var res = await EmailAuth.validate(
        receiverMail: widget.emailcontroller, userOTP: _otpcontroller.text);
    if (res) {
      print("OTP Verified");
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => welcomeScreen()));
    } else {
      print("Invalid OTP");
    }
  }

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
                SizedBox(height: 30),
                Text_Widget(
                  text: "Welcome aboard!",
                  font_size: 18,
                  colour: Color(0xff1c1d22),
                  font_family: 'Poppins-Regular',
                ),
                SizedBox(
                  height: 71,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text_Widget(
                      text: 'LOGIN PIN',
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
                      controller: _otpcontroller,
                      keyboardType: TextInputType.number,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter OTP",
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                GestureDetector(
                  onTap: otpverified,
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
                GestureDetector(
                  onTap: () {},
                  child: Text_Widget(
                    text: "forgot PIN?",
                    font_size: 12,
                    colour: Color(0xff616267),
                    font_family: 'Poppins-SemiBold',
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
