import 'dart:async';
import 'package:flutter/material.dart';

class loadingScreen extends StatefulWidget {
  const loadingScreen({Key? key}) : super(key: key);

  @override
  _loadingScreenState createState() => _loadingScreenState();
}

class _loadingScreenState extends State<loadingScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final controller = PageController(viewportFraction: 0.8);
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () async {
            Timer timer;
            int dot_value = 0;
            timer = Timer.periodic(Duration(milliseconds: 10), (timer) {
              setState(() {
                dot_value += 1;
                print(dot_value);
              });
            });
            Timer(Duration(seconds: 3), () {
              Navigator.pop(context);
              timer.cancel();
            });

            await showDialog(
              context: context,
              builder: (context) => AlertDialog(
                content: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFF),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'images/home/tab_1/visa_logo.png',
                        width: 47,
                        height: 40,
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          slide_dot(dot_value: dot_value + 0),
                          slide_dot(dot_value: dot_value + 1),
                          slide_dot(dot_value: dot_value + 2),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          },
          child: Text("loading"),
        ),
      ),
    );
  }
}

class slide_dot extends StatelessWidget {
  const slide_dot({
    required this.dot_value,
    Key? key,
  }) : super(key: key);

  final int dot_value;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(hours: 10),
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: dot_value % 3 == 0 ? 5 : 3,
      width: dot_value % 3 == 0 ? 5 : 3,
      decoration: BoxDecoration(
        color: dot_value % 3 == 0 ? Color(0xff616267) : Color(0xffb9b9bf),
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
  }
}
