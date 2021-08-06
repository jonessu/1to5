import 'package:flutter/material.dart';
import 'package:digitatravelmoney/Widget/text_widget.dart';

class exchangeconformationScreen extends StatelessWidget {
  const exchangeconformationScreen({Key? key}) : super(key: key);

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
          child: Column(
            children: [
              SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => menuScreen(),
                      //   ),
                      //);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  Text_Widget(
                    text: "Exchange USD",
                    font_size: 12,
                    font_family: 'Poppins-Regular',
                    colour: Colors.white,
                  ),
                  Text("")
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text_Widget(
                                  text: "Confirm Exchange",
                                  font_size: 16,
                                  colour: Color(0xff1c1d22),
                                  font_family: 'Poppins-SemiBold',
                                ),
                                Text_Widget(
                                  text: "EDIT",
                                  font_size: 13,
                                  colour: Color(0xff1a1f71),
                                  font_family: 'Poppins-Medium',
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 1,
                            color: Color(0xffb9b9bf),
                          ),
                          Container(
                            height: 232,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text_Widget(
                                  text: "\$400",
                                  font_size: 30,
                                  colour: Color(0xff000000),
                                  font_family: 'Poppins-Light',
                                ),
                                SizedBox(height: 5),
                                Text_Widget(
                                  text: "Balance: \$1,319",
                                  font_size: 10,
                                  colour: Color(0xff9d9da9),
                                  font_family: 'Poppins-Medium',
                                ),
                                SizedBox(height: 30),
                                SizedBox(height: 20),
                                Text_Widget(
                                  text: "€361.44",
                                  font_size: 30,
                                  colour: Color(0xff000000),
                                  font_family: 'Poppins-Light',
                                ),
                                SizedBox(height: 5),
                                Text_Widget(
                                  text: "Balance: €20",
                                  font_size: 10,
                                  colour: Color(0xff9d9da9),
                                  font_family: 'Poppins-Medium',
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 1,
                            color: Color(0xffb9b9bf),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text_Widget(
                                      text: "From",
                                      font_size: 13,
                                      colour: Color(0xff9d9dad),
                                      font_family: 'Poppins-Medium',
                                    ),
                                    Spacer(),
                                    Text_Widget(
                                      text: "\$USD",
                                      font_size: 13,
                                      colour: Color(0xff1c1d22),
                                      font_family: 'Poppins-Medium',
                                    ),
                                  ],
                                ),
                                SizedBox(height: 25),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text_Widget(
                                      text: "To",
                                      font_size: 13,
                                      colour: Color(0xff9d9dad),
                                      font_family: 'Poppins-Medium',
                                    ),
                                    Spacer(),
                                    Text_Widget(
                                      text: "€EUR",
                                      font_size: 13,
                                      colour: Color(0xff1c1d22),
                                      font_family: 'Poppins-Medium',
                                    ),
                                  ],
                                ),
                                SizedBox(height: 25),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text_Widget(
                                      text: "Exchange Rate",
                                      font_size: 13,
                                      colour: Color(0xff9d9dad),
                                      font_family: 'Poppins-Medium',
                                    ),
                                    Spacer(),
                                    Text_Widget(
                                      text: "1 USD = 0.9 EUR",
                                      font_size: 13,
                                      colour: Color(0xff1c1d22),
                                      font_family: 'Poppins-Medium',
                                    ),
                                  ],
                                ),
                                SizedBox(height: 25),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text_Widget(
                                      text: "Fee",
                                      font_size: 13,
                                      colour: Color(0xff9d9dad),
                                      font_family: 'Poppins-Medium',
                                    ),
                                    Spacer(),
                                    Text_Widget(
                                      text: "Applied",
                                      font_size: 13,
                                      colour: Color(0xff1c1d22),
                                      font_family: 'Poppins-Medium',
                                    ),
                                  ],
                                ),
                                SizedBox(height: 2),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Text_Widget(
                                    text: "Click to see",
                                    font_size: 10,
                                    colour: Color(0xff9d9da9),
                                    font_family: 'Poppins-Regular',
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => pinverificationScreen()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: 42,
                        decoration: BoxDecoration(
                          color: Color(0xff0066cc),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text_Widget(
                            text: "Exchange Now",
                            font_size: 12,
                            colour: Colors.white,
                            font_family: 'Poppins-SemiBold',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text_Widget(
                      text: "Cancel",
                      font_size: 12,
                      colour: Color(0xff616267),
                      font_family: 'Poppins-SemiBold',
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
