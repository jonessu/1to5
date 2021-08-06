import 'package:flutter/material.dart';
import 'package:digitatravelmoney/screen/app_lock_options_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class applockScreen extends StatelessWidget {
  const applockScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(62.0),
        child: AppBar(
          leading: Icon(
            FontAwesomeIcons.chevronLeft,
            color: Colors.white,
            size: 16,
          ),
          centerTitle: true,
          backgroundColor: Color(0xff1c1d22),
          title: Text(
            "app lock preferences",
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
                  "preferred screen lock",
                  style: TextStyle(
                    color: Color(0xff616267),
                    fontSize: 12,
                    fontFamily: 'Poppins-Regular',
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => applockoptionScreen()));
              },
              child: Container(
                width: double.infinity,
                height: 49,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  border: Border.all(
                    color: Color(0xffe3e3e5),
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Text(
                        "fingerprint",
                        style: TextStyle(
                          color: Color(0xff616267),
                          fontSize: 13,
                          fontFamily: 'Poppins-Medium',
                        ),
                      ),
                      Spacer(),
                      Image.asset(
                        'images/home/tab_1/arrow_copy_4.png',
                        width: 8,
                        height: 14,
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
