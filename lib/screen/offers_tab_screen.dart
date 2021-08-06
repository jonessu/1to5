import 'package:flutter/material.dart';
import 'package:digitatravelmoney/Widget/offers_card_widget.dart';
import 'package:digitatravelmoney/Widget/text_widget.dart';
import 'package:digitatravelmoney/screen/menu_screen.dart';
import 'package:digitatravelmoney/screen/offers_innerpage_screen.dart';

class offerstabScreen extends StatefulWidget {
  const offerstabScreen({
    Key? key,
  }) : super(key: key);

  @override
  _offerstabScreenState createState() => _offerstabScreenState();
}

class _offerstabScreenState extends State<offerstabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f5f7),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/home/bg.png'),
              alignment: Alignment.topCenter,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text_Widget(
                      text: "offers",
                      font_size: 12,
                      font_family: 'Poppins-Regular',
                      colour: Colors.white,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => menuScreen(),
                          ),
                        );
                      },
                      child: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Container(
                  width: double.infinity,
                  height: 38,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text_Widget(
                          text: "search",
                          font_size: 12,
                          font_family: 'Poppins-Medium',
                          colour: Color(0xff616267),
                        ),
                        Icon(Icons.search),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => offersinnerpageScreen(),
                          ),
                        );
                      },
                      child: Text_Widget(
                        text: "showing all new offers",
                        font_size: 12,
                        font_family: 'Poppins-Regular',
                        colour: Colors.white,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => recent_transaction(),
                        //   ),
                        // );
                      },
                      child: Row(
                        children: [
                          Text_Widget(
                            text: "sort & filter",
                            font_size: 14,
                            font_family: 'Poppins-Bold',
                            colour: Colors.white,
                          ),
                          SizedBox(width: 10),
                          Image.asset(
                            'images/home/tab_1/sort.png',
                            width: 16,
                            height: 10,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 16),
                Container(
                  width: double.infinity,
                  height: 237,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: offers_card_widget(
                    img_path: 'images/home/tab_1/image.png',
                    title: "Apollo Pharmacy",
                    sub_text: "Up to 15% off* at Apollo Pharmacy",
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  width: double.infinity,
                  height: 237,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: offers_card_widget(
                    img_path: 'images/home/tab_1/image.png',
                    title: "Apollo Pharmacy",
                    sub_text: "Up to 15% off* at Apollo Pharmacy",
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  width: double.infinity,
                  height: 237,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: offers_card_widget(
                    img_path: 'images/home/tab_1/image.png',
                    title: "Apollo Pharmacy",
                    sub_text: "Up to 15% off* at Apollo Pharmacy",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
