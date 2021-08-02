import 'package:flutter/material.dart';
import 'package:digitatravelmoney/Widget/radio_btn_widget.dart';

class applockoptionScreen extends StatefulWidget {
  @override
  _applockoptionScreenState createState() => _applockoptionScreenState();
}

class _applockoptionScreenState extends State<applockoptionScreen> {
  int radio_value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(62.0),
        child: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xff1c1d22),
          title: Text(
            "preferred screen lock",
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontFamily: 'Poppins-Regular',
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "preferred screel lock",
                  style: TextStyle(
                    color: Color(0xff616267),
                    fontSize: 12,
                    fontFamily: 'Poppins-Regular',
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            radio_btn_widget(
              radio_value: 1,
              group_value: radio_value,
              radio_title: 'PIN',
              onChanged: (int value) {
                setState(() {
                  radio_value = value;
                });
              },
            ),
            SizedBox(height: 15),
            radio_btn_widget(
              radio_value: 2,
              group_value: radio_value,
              radio_title: 'Fingerprint',
              onChanged: (int value) {
                setState(() {
                  radio_value = value;
                });
              },
            ),
            SizedBox(height: 15),
            radio_btn_widget(
              radio_value: 3,
              group_value: radio_value,
              radio_title: 'Pattern',
              onChanged: (int value) {
                setState(() {
                  radio_value = value;
                });
              },
            ),
            SizedBox(height: 15),
            radio_btn_widget(
              radio_value: 4,
              group_value: radio_value,
              radio_title: 'Face Unlock',
              onChanged: (int value) {
                setState(() {
                  radio_value = value;
                });
              },
            ),
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              height: 106,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xfffffcf2),
                border: Border.all(
                  color: Color(0xfff7b600),
                  width: 1,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(),
                    Text(
                      "Please note that if you choose Fingerprint or Face Unlock, it would make use of your system default biometric lock options.",
                      style: TextStyle(
                        color: Color(0xff616267),
                        fontSize: 10,
                        fontFamily: 'Poppins-Medium',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
