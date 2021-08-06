import 'package:digitatravelmoney/Widget/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class errormessageScreen extends StatelessWidget {
  const errormessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('images/home/tab_1/error.png', width: 136, height: 140),
            SizedBox(height: 20),
            Text_Widget(
              text: "No Internet Connection!",
              font_size: 16,
              colour: Color(0xff1c1d22),
              font_family: "Poppins-SemiBold",
            ),
            SizedBox(height: 10),
            Text_Widget(
              text: "Please check your connection and try again!",
              font_size: 10,
              colour: Color(0xff9d9da9),
              font_family: "Poppins-Medium",
            ),
            SizedBox(height: 40),
            GestureDetector(
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => pinverificationScreen()));
              },
              child: Container(
                width: 295,
                height: 42,
                decoration: BoxDecoration(
                  color: Color(0xff0066cc),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text_Widget(
                    text: "Try Again",
                    font_size: 12,
                    colour: Colors.white,
                    font_family: 'Poppins-SemiBold',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
