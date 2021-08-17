import 'package:digitatravelmoney/screen/pin_verification_screen/bloc/pinverification_bloc.dart';
import 'package:digitatravelmoney/utils/color_resource.dart';
import 'package:digitatravelmoney/utils/fontFamily_resource.dart';
import 'package:digitatravelmoney/utils/image_resource.dart';
import 'package:digitatravelmoney/utils/string_resources.dart';
import 'package:flutter/material.dart';
import 'package:digitatravelmoney/Widget/text_widget.dart';
import 'package:digitatravelmoney/screen/welcome_screen/welcome_screen.dart';
import 'package:email_auth/email_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class pinverificationScreen extends StatefulWidget {
  pinverificationScreen({Key? key, required this.emailcontroller})
      : super(key: key);

  TextEditingController emailcontroller = TextEditingController();

  @override
  _pinverificationScreenState createState() => _pinverificationScreenState();
}

class _pinverificationScreenState extends State<pinverificationScreen> {
  PinverificationBloc _pinverificationbloc = PinverificationBloc();

  final TextEditingController _otpcontroller = TextEditingController();

  // void otpverified() async {
  //   var res = await EmailAuth.validate(
  //       receiverMail: widget.emailcontroller, userOTP: _otpcontroller.text);
  //   if (res) {
  //     print("OTP Verified");
  //     Navigator.of(context).pushReplacement(
  //         MaterialPageRoute(builder: (context) => welcomeScreen()));
  //   } else {
  //     print("Invalid OTP");
  //   }
  // }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener(
      bloc: _pinverificationbloc,
      listener: (context, state) {
        if (state is PinverificationSuccess) {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => welcomeScreen()));
        }
      },
      child: BlocBuilder(
        bloc: _pinverificationbloc,
        builder: (context, state) {
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
                        ImageResource.top_logo,
                        width: 151,
                        height: 70,
                      ),
                      SizedBox(height: 30),
                      Text_Widget(
                        text: StringResource.Welcome_aboard,
                        font_size: 18,
                        colour: ColorResource.color1c1d22,
                        font_family: FontFamilyResource.PoppinsRegular,
                      ),
                      SizedBox(
                        height: 71,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text_Widget(
                            text: StringResource.LOGIN_PIN,
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
                          color: Colors.white,
                          border: Border.all(
                            color: ColorResource.color9d9da9,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: TextFormField(
                            controller: _otpcontroller,
                            keyboardType: TextInputType.number,
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: StringResource.Enter_OTP,
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
                      SizedBox(height: 30),
                      GestureDetector(
                        onTap: () {
                          _pinverificationbloc.add(PinVerification(
                              widget.emailcontroller.text,
                              _otpcontroller.text));
                        },
                        // _pinverificationbloc.dispatch(ChangeSomeValues())
                        //otpverified,
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
                              colour: Colors.white,
                              font_family: FontFamilyResource.PoppinsSemiBold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {},
                        child: Text_Widget(
                          text: StringResource.forgot_PIN,
                          font_size: 12,
                          colour: ColorResource.color616267,
                          font_family: FontFamilyResource.PoppinsSemiBold,
                        ),
                      ),
                      SizedBox(height: 10),
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
