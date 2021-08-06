import 'package:flutter/material.dart';
import 'package:digitatravelmoney/Widget/text_widget.dart';
import 'package:digitatravelmoney/screen/edit_profile_screen.dart';
import 'package:digitatravelmoney/screen/reset_pin_screen.dart';

class menuScreen extends StatelessWidget {
  const menuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text_Widget(
          text: "menu",
          font_size: 12,
          font_family: 'Poppins-Regular',
          colour: Colors.white,
        ),
        centerTitle: true,
        backgroundColor: Color(0xff1c1d22),
        elevation: 0.0,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color(0xff1c1d22),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Column(
                children: [
                  CircleAvatar(
                    radius: 70.0,
                    backgroundImage: AssetImage('images/home/tab_1/jones.jpg'),
                  ),
                  SizedBox(height: 15),
                  Text_Widget(
                    text: "Jones",
                    font_size: 18,
                    colour: Colors.white,
                    font_family: 'Poppins-Medium',
                  ),
                ],
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text_Widget(
                      text: "menu",
                      font_size: 12,
                      colour: Colors.white,
                      font_family: 'Poppins-Regular',
                    ),
                    SizedBox(height: 15.0),
                    Container(
                      width: double.infinity,
                      height: 255,
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
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            editprofileScreen()));
                              },
                              child: Row(
                                children: [
                                  Text_Widget(
                                    text: "edit profile",
                                    font_size: 13,
                                    colour: Color(0xff1c1d22),
                                    font_family: 'Poppins-Medium',
                                  ),
                                  Spacer(),
                                  Image.asset(
                                    'images/home/tab_1/arrow_copy_4.png',
                                    width: 8,
                                    height: 14,
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              height: 15.5,
                              thickness: 1,
                              indent: 5,
                              endIndent: 5,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            resetpinScreen()));
                              },
                              child: Row(
                                children: [
                                  Text_Widget(
                                    text: "reset password",
                                    font_size: 13,
                                    colour: Color(0xff1c1d22),
                                    font_family: 'Poppins-Medium',
                                  ),
                                  Spacer(),
                                  Image.asset(
                                    'images/home/tab_1/arrow_copy_4.png',
                                    width: 8,
                                    height: 14,
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              height: 15.5,
                              thickness: 1,
                              indent: 5,
                              endIndent: 5,
                            ),
                            Row(
                              children: [
                                Text_Widget(
                                  text: "contact us",
                                  font_size: 13,
                                  colour: Color(0xff1c1d22),
                                  font_family: 'Poppins-Medium',
                                ),
                                Spacer(),
                                Image.asset(
                                  'images/home/tab_1/arrow_copy_4.png',
                                  width: 8,
                                  height: 14,
                                ),
                              ],
                            ),
                            Divider(
                              height: 15.5,
                              thickness: 1,
                              indent: 5,
                              endIndent: 5,
                            ),
                            Row(
                              children: [
                                Text_Widget(
                                  text: "about us",
                                  font_size: 13,
                                  colour: Color(0xff1c1d22),
                                  font_family: 'Poppins-Medium',
                                ),
                                Spacer(),
                                Image.asset(
                                  'images/home/tab_1/arrow_copy_4.png',
                                  width: 8,
                                  height: 14,
                                ),
                              ],
                            ),
                            Divider(
                              height: 15.5,
                              thickness: 1,
                              indent: 5,
                              endIndent: 5,
                            ),
                            Row(
                              children: [
                                Text_Widget(
                                  text: "support",
                                  font_size: 13,
                                  colour: Color(0xff1c1d22),
                                  font_family: 'Poppins-Medium',
                                ),
                                Spacer(),
                                Image.asset(
                                  'images/home/tab_1/arrow_copy_4.png',
                                  width: 8,
                                  height: 14,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => applockScreen()));
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
                                text: "logout",
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
