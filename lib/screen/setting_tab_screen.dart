import 'package:digitatravelmoney/screen/app_lock_screen.dart';
import 'package:digitatravelmoney/Widget/custom_switch_widget.dart';
import 'package:flutter/material.dart';
import 'package:digitatravelmoney/Widget/text_widget.dart';
import 'package:digitatravelmoney/screen/menu_screen.dart';

class settingstabScreen extends StatefulWidget {
  const settingstabScreen({
    Key? key,
  }) : super(key: key);

  @override
  _settingstabScreenState createState() => _settingstabScreenState();
}

class _settingstabScreenState extends State<settingstabScreen> {
  bool switch_value = false;
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
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Column(
                  children: [
                    SizedBox(height: 54),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text_Widget(
                          text: "card settings",
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
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 35,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xff1464b0),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15.0,
                                vertical: 10.0,
                              ),
                              child: Row(
                                children: [
                                  Text_Widget(
                                    text: "PREPAID TRAVEL CARD",
                                    font_size: 10,
                                    colour: Colors.white,
                                    font_family: 'Poppins-Medium',
                                  ),
                                  Spacer(),
                                  Text_Widget(
                                    text: "\$USD",
                                    font_size: 10,
                                    colour: Colors.white,
                                    font_family: "Poppins-Medium",
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 146,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text_Widget(
                                          text: "4829 XXXX XXXX 0124",
                                          font_size: 16,
                                          colour: Color(0xff616267),
                                          font_family: "Poppins-Medium",
                                        ),
                                        SizedBox(height: 10),
                                        Icon(
                                          Icons.lock,
                                          color: Color(0xff616267),
                                          size: 20,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 0, 20, 23),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 16,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Text_Widget(
                                                text: "\$",
                                                font_size: 12,
                                                colour: Color(0xff1a1f71),
                                                font_family: "Poppins-Medium",
                                              ),
                                            ),
                                            SizedBox(width: 5),
                                            Text_Widget(
                                              text: "994.91",
                                              font_size: 16,
                                              colour: Color(0xff000000),
                                              font_family: "Poppins-SemiBold",
                                            ),
                                          ],
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                        width: 49,
                                        height: 16,
                                        child: Image.asset(
                                          'images/home/tab_1/visa.png',
                                          width: 151,
                                          height: 70,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text_Widget(
                          text: "lock card",
                          font_size: 12,
                          font_family: 'Poppins-Regular',
                          colour: Colors.white,
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Container(
                      width: double.infinity,
                      height: 264,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        border: Border.all(
                          color: Color(0xffe3e3e5),
                          width: 1,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Custom_Switch(
                              switch_value: switch_value,
                              switch_title: 'everything',
                              onClicked: (bool newvalue) {
                                setState(() {
                                  switch_value = newvalue;
                                });
                              },
                            ),
                            Divider(
                              height: 15.5,
                              thickness: 1,
                              indent: 5,
                              endIndent: 5,
                            ),
                            Custom_Switch(
                              switch_value: switch_value,
                              switch_title: 'ATM',
                              onClicked: (bool newvalue) {},
                            ),
                            Divider(
                              height: 15.5,
                              thickness: 1,
                              indent: 5,
                              endIndent: 5,
                            ),
                            Custom_Switch(
                              switch_value: switch_value,
                              switch_title: 'retail transactions',
                              onClicked: (bool newvalue) {},
                            ),
                            Divider(
                              height: 15.5,
                              thickness: 1,
                              indent: 5,
                              endIndent: 5,
                            ),
                            Custom_Switch(
                              switch_value: switch_value,
                              switch_title: 'online shopping',
                              onClicked: (bool newvalue) {},
                            ),
                            Divider(
                              height: 15.5,
                              thickness: 1,
                              indent: 5,
                              endIndent: 5,
                            ),
                            Custom_Switch(
                              switch_value: switch_value,
                              switch_title: 'tap & pay',
                              onClicked: (bool newvalue) {},
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "other options",
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
                                builder: (context) => applockScreen()));
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
                              Text_Widget(
                                text: "app lock preferences",
                                font_size: 13,
                                font_family: 'Poppins-Medium',
                                colour: Color(0xff1c1d22),
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
                    SizedBox(height: 60),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
