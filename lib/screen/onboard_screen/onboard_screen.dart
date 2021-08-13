import 'package:digitatravelmoney/Constant/enum.dart';
import 'package:digitatravelmoney/cubit/internet_cubit.dart';
import 'package:digitatravelmoney/screen/loading_screen.dart';
import 'package:flutter/material.dart';
import 'package:digitatravelmoney/Widget/text_widget.dart';
import 'package:digitatravelmoney/screen/login_screen/login_screen.dart';
import 'package:digitatravelmoney/screen/welcome_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:local_auth/local_auth.dart';
import '../error_message_screen.dart';

class onboardScreen extends StatefulWidget {
  static const id = 'onboard_screen';
  const onboardScreen({Key? key}) : super(key: key);

  @override
  _onboardScreenState createState() => _onboardScreenState();
}

class _onboardScreenState extends State<onboardScreen> {
  final LocalAuthentication auth = LocalAuthentication();

  Future<void> _authorizeNow() async {
    bool isAuthorized = false;
    try {
      isAuthorized = await auth.authenticate(
        localizedReason: "Please authenticate to complete your transaction",
        useErrorDialogs: true,
        stickyAuth: true,
        biometricOnly: true,
      );
    } catch (e) {
      print(e);
    }

    if (!mounted) return;

    setState(() {
      if (isAuthorized) {
        print("Authorized");
      } else {
        print("Not Authorized");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocBuilder<InternetCubit, InternetState>(
        builder: (context, state) {
          if (state is InternetConnected &&
              state.connectionType == ConnectionType.Wifi) {
            return onBoard(context);
          } else if (state is InternetConnected &&
              state.connectionType == ConnectionType.Mobile) {
            return onBoard(context);
          } else if (state is InternetDisconnected) {
            return errormessageScreen();
          }
          return loadingScreen();
        },
      ),
    );
  }

  Center onBoard(BuildContext context) {
    return Center(
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
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => welcomeScreen()));
            },
            child: Text_Widget(
              text: "Get started by Logging in!",
              font_size: 18,
              colour: Color(0xff1c1d22),
              font_family: 'Poppins-Regular',
            ),
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
            onTap: _authorizeNow,
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
    );
  }
}
