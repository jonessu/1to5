import 'package:flutter/material.dart';
import 'package:digitatravelmoney/Widget/text_widget.dart';
import 'package:digitatravelmoney/screen/pin_verification_screen.dart';
import 'package:digitatravelmoney/screen/welcome_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:digitatravelmoney/controller/authentications.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:email_auth/email_auth.dart';

class login_Screen extends StatefulWidget {
  const login_Screen({Key? key}) : super(key: key);

  @override
  _login_ScreenState createState() => _login_ScreenState();
}

class _login_ScreenState extends State<login_Screen> {
  final _auth = FirebaseAuth.instance;
  String email = '';
  String Password = '';
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passcontroller = TextEditingController();

  void google_login_verification() async {
    googleSignInmethod().whenComplete(() async {
      User? user = await FirebaseAuth.instance.currentUser;
      print(user);
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => welcomeScreen()));
    });
  }

  void sendotp() async {
    EmailAuth.sessionName = "Test Session";
    var res = await EmailAuth.sendOtp(receiverMail: _emailcontroller.text);
    if (res) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) =>
              pinverificationScreen(emailcontroller: _emailcontroller.text)));
    } else {
      print("otp not send");
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
                  height: 68,
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
                      controller: _emailcontroller,
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter Email",
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
                      controller: _passcontroller,
                      cursorColor: Colors.black,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter Password",
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
                  onTap: sendotp,
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
                  onTap: google_login_verification,
                  child: Container(
                    width: double.infinity,
                    height: 42,
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(FontAwesomeIcons.google, color: Colors.white),
                          SizedBox(width: 5),
                          Text_Widget(
                            text: "Sign In With Gmail",
                            font_size: 12,
                            colour: Colors.white,
                            font_family: 'Poppins-SemiBold',
                          ),
                        ],
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
