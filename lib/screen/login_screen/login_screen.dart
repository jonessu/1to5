import 'package:digitatravelmoney/screen/login_screen/bloc/login_bloc.dart';
import 'package:digitatravelmoney/utils/color_resource.dart';
import 'package:digitatravelmoney/utils/fontFamily_resource.dart';
import 'package:digitatravelmoney/utils/image_resource.dart';
import 'package:digitatravelmoney/utils/string_resources.dart';
import 'package:flutter/material.dart';
import 'package:digitatravelmoney/Widget/text_widget.dart';
import 'package:digitatravelmoney/screen/pin_verification_screen/pin_verification_screen.dart';
import 'package:digitatravelmoney/screen/welcome_screen/welcome_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:email_auth/email_auth.dart';

class login_Screen extends StatefulWidget {
  const login_Screen({Key? key}) : super(key: key);

  @override
  _login_ScreenState createState() => _login_ScreenState();
}

class _login_ScreenState extends State<login_Screen> {
  LoginBloc _loginbloc = LoginBloc();

  String email = '';
  String Password = '';
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passcontroller = TextEditingController();

  // void google_login_verification() async {
  //   googleSignInmethod().whenComplete(() async {
  //     User? user = await FirebaseAuth.instance.currentUser;
  //     print(user);
  //     Navigator.of(context).pushReplacement(
  //         MaterialPageRoute(builder: (context) => welcomeScreen()));
  //   });
  // }

  void sendotp() async {
    EmailAuth.sessionName = "Test Session";
    var res = await EmailAuth.sendOtp(receiverMail: _emailcontroller.text);
    if (res) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) =>
              pinverificationScreen(emailcontroller: _emailcontroller)));
    } else {
      print("otp not send");
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener(
      bloc: _loginbloc,
      listener: (context, state) {
        if (state is SignInGoogleSuccess) {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => welcomeScreen()));
        } else if (state is SignInPinSuccess) {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) =>
                  pinverificationScreen(emailcontroller: _emailcontroller)));
        }
      },
      child: BlocBuilder(
        bloc: _loginbloc,
        builder: (context, state) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                color: ColorResource.colorwhite,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        ImageResource.top_logo,
                        width: 151,
                        height: 70,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text_Widget(
                        text: StringResource.Get_started_by_Logging_in,
                        font_size: 18,
                        colour: ColorResource.color1c1d22,
                        font_family: FontFamilyResource.PoppinsRegular,
                      ),
                      SizedBox(
                        height: 68,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text_Widget(
                            text: StringResource.CUSTOMER_ID,
                            font_size: 10,
                            colour: ColorResource.color9d9da9,
                            font_family: FontFamilyResource.PoppinsMedium,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: double.infinity,
                        height: 48,
                        decoration: BoxDecoration(
                          color: ColorResource.colorwhite,
                          border: Border.all(
                            color: ColorResource.colorb9b9bf,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: TextFormField(
                              controller: _emailcontroller,
                              keyboardType: TextInputType.emailAddress,
                              cursorColor: ColorResource.colorblack,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: StringResource.Enter_Email,
                                hintStyle: TextStyle(
                                  color: ColorResource.color616267,
                                  fontSize: 13,
                                  fontFamily: FontFamilyResource.PoppinsMedium,
                                ),
                              ),
                              style: TextStyle(
                                fontSize: 13,
                                color: ColorResource.color616267,
                                fontFamily: FontFamilyResource.PoppinsMedium,
                              ),
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
                            text: StringResource.PASSWORD,
                            font_size: 10,
                            colour: ColorResource.color9d9da9,
                            font_family: FontFamilyResource.PoppinsMedium,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: double.infinity,
                        height: 48,
                        decoration: BoxDecoration(
                          color: ColorResource.colorwhite,
                          border: Border.all(
                            color: ColorResource.colorb9b9bf,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: TextFormField(
                            controller: _passcontroller,
                            cursorColor: ColorResource.colorblack,
                            obscureText: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: StringResource.Enter_Password,
                              hintStyle: TextStyle(
                                color: ColorResource.color616267,
                                fontSize: 13,
                                fontFamily: FontFamilyResource.PoppinsMedium,
                              ),
                            ),
                            style: TextStyle(
                              fontSize: 13,
                              color: ColorResource.color616267,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text_Widget(
                          text: StringResource.Set_Forgot_Password,
                          font_size: 13,
                          colour: ColorResource.color1c1d22,
                          font_family: FontFamilyResource.PoppinsMedium,
                        ),
                      ),
                      SizedBox(height: 30),
                      GestureDetector(
                        onTap: () {
                          _loginbloc.add(SignInWithPin(_emailcontroller.text));
                        }, //sendotp,
                        child: Container(
                          width: double.infinity,
                          height: 42,
                          decoration: BoxDecoration(
                            color: ColorResource.color0066cc,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Text_Widget(
                              text: StringResource.Login,
                              font_size: 12,
                              colour: ColorResource.colorwhite,
                              font_family: FontFamilyResource.PoppinsSemiBold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          _loginbloc.add(SignInWithGoogle());
                        },
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
                                Icon(FontAwesomeIcons.google,
                                    color: ColorResource.colorwhite),
                                SizedBox(width: 5),
                                Text_Widget(
                                  text: StringResource.Sign_With_Gmail,
                                  font_size: 12,
                                  colour: ColorResource.colorwhite,
                                  font_family:
                                      FontFamilyResource.PoppinsSemiBold,
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
                                  text: StringResource
                                      .By_clicking_login_you_agree_to_our,
                                  style: TextStyle(
                                    color: ColorResource.color616267,
                                    fontSize: 10,
                                    letterSpacing: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: StringResource.TermsandConditions,
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: ColorResource.color616267,
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
        },
      ),
    );
  }
}
