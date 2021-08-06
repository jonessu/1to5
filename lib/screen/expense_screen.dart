import 'package:flutter/material.dart';
import 'package:digitatravelmoney/Widget/text_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class expenseScreen extends StatelessWidget {
  const expenseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f5f7),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/home/tab_1/rectangle.png'),
              alignment: Alignment.topCenter,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 9,
                        height: 16,
                        child: Icon(
                          FontAwesomeIcons.chevronLeft,
                          color: Colors.white,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text_Widget(
                          text: "transaction details",
                          font_size: 12,
                          colour: Colors.white,
                          font_family: 'Poppins-Regular',
                        ),
                      ),
                      Container(
                        width: 20,
                        height: 4,
                        child: Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 14,
                                        height: 14,
                                        child: Image.asset(
                                            'images/home/tab_1/success.png'),
                                      ),
                                      SizedBox(width: 5),
                                      Text_Widget(
                                        text: "transaction sucessful",
                                        font_size: 12,
                                        colour: Color(0xff1c1d22),
                                        font_family: 'Poppins-Medium',
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(color: Color(0xffb9b9bf), thickness: 1),
                                SizedBox(height: 10),
                                Container(
                                  width: 50,
                                  height: 50,
                                  child: Image.asset(
                                      'images/home/tab_1/exchange.png'),
                                ),
                                SizedBox(height: 15),
                                Text_Widget(
                                  text: "Exchange from INR",
                                  font_size: 16,
                                  colour: Color(0xff1c1d22),
                                  font_family: 'Poppins-Regular',
                                ),
                                SizedBox(height: 10),
                                Divider(color: Color(0xffb9b9bf), thickness: 1),
                                Column(
                                  children: [
                                    ListTile(
                                      leading: Text_Widget(
                                        text: "Amount",
                                        font_size: 13,
                                        colour: Color(0xff9d9da9),
                                        font_family: 'Poppins-Medium',
                                      ),
                                      trailing: Text_Widget(
                                        text: "\$12.99",
                                        font_size: 13,
                                        colour: Color(0xff1c1d22),
                                        font_family: 'Poppins-Medium',
                                      ),
                                    ),
                                    ListTile(
                                      leading: Text_Widget(
                                        text: "Date",
                                        font_size: 13,
                                        colour: Color(0xff9d9da9),
                                        font_family: 'Poppins-Medium',
                                      ),
                                      trailing: Text_Widget(
                                        text: "Sep 2, 2019",
                                        font_size: 13,
                                        colour: Color(0xff1c1d22),
                                        font_family: 'Poppins-Medium',
                                      ),
                                    ),
                                    ListTile(
                                      leading: Text_Widget(
                                        text: "Time",
                                        font_size: 13,
                                        colour: Color(0xff9d9da9),
                                        font_family: 'Poppins-Medium',
                                      ),
                                      trailing: Text_Widget(
                                        text: "06:49 PM",
                                        font_size: 13,
                                        colour: Color(0xff1c1d22),
                                        font_family: 'Poppins-Medium',
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
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
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15.0),
                              child: Container(
                                width: double.infinity,
                                height: 146,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
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
                                  text: "other transaction details",
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
                      SizedBox(height: 10),
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
                                  text: "add receipt",
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
                      SizedBox(height: 10),
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
                                  text: "write a note",
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
                      SizedBox(height: 38),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
