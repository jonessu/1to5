import 'package:digitatravelmoney/screen/app_lock_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:digitatravelmoney/Home/Constant/home_constant.dart';

class settingstabScreen extends StatefulWidget {
  const settingstabScreen({
    Key? key,
  }) : super(key: key);

  @override
  _settingstabScreenState createState() => _settingstabScreenState();
}

class _settingstabScreenState extends State<settingstabScreen> {
  bool switch_value = true;
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
                        Text(
                          "card settings",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Poppins-Regular',
                          ),
                        ),
                        Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Container(
                      width: double.infinity,
                      height: 181,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        border: Border.all(
                          color: Color(0xffe3e3e5),
                          width: 1,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "lock card",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Poppins-Regular',
                          ),
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
                              Text(
                                "other options",
                                style: TextStyle(
                                  color: Color(0xff616267),
                                  fontSize: 12,
                                  fontFamily: 'Poppins-Regular',
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

class Custom_Switch extends StatelessWidget {
  const Custom_Switch({
    Key? key,
    required this.switch_value,
    required this.switch_title,
    required this.onClicked,
  }) : super(key: key);

  final bool switch_value;
  final String switch_title;
  final Function onClicked;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          switch_title,
          style: TextStyle(
              color: Color(0xff1c1d22),
              fontSize: 13,
              fontFamily: 'Poppins-Medium'),
        ),
        Spacer(),
        SizedBox(
          width: 37,
          height: 22,
          child: CupertinoSwitch(
            trackColor: Colors.grey,
            activeColor: Colors.blue,
            value: switch_value,
            onChanged: (newvalue) {
              onClicked(newvalue);
            },
          ),
        ),
      ],
    );
  }
}
