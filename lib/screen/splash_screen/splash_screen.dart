import 'package:digitatravelmoney/screen/onboard_screen/onboard_screen.dart';
import 'package:digitatravelmoney/screen/splash_screen/bloc/splash_bloc.dart';
import 'package:digitatravelmoney/utils/image_resource.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class splashScreen extends StatefulWidget {
  static const id = 'splash_screen';
  @override
  _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  late SplashBloc _splashBloc;

  @override
  void initState() {
    super.initState();
    _splashBloc = SplashBloc()..add(SplashIntial());
    // Timer(
    //   Duration(seconds: 3),
    //   () => Navigator.pushReplacement(
    //       context, MaterialPageRoute(builder: (context) => onboardScreen())),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener(
      bloc: _splashBloc,
      listener: (context, state) {
        if (state is SplashNavigate) {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => onboardScreen()));
        }
      },
      child: BlocBuilder(
        bloc: _splashBloc,
        builder: (context, state) {
          return Scaffold(
            body: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Expanded(
                    child: Center(
                      child: Image.asset(
                        ImageResource.center,
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
                          ImageResource.bottom_left,
                          width: 71.5,
                          height: 30,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Image.asset(
                          ImageResource.bottom_center,
                          width: 71.5,
                          height: 30,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Image.asset(
                          ImageResource.bottom_right,
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
        },
      ),
    );
  }
}
