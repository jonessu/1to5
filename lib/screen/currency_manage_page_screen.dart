import 'package:flutter/material.dart';
import 'package:digitatravelmoney/Widget/text_widget.dart';
import 'package:digitatravelmoney/Widget/transaction_card.dart';
import 'package:digitatravelmoney/Constant/transaction_list_constant.dart';
import 'package:digitatravelmoney/Widget/prepaid_travel_card_widget.dart';
import 'package:digitatravelmoney/screen/exchange_page_screen.dart';

class currencymanagepageScreen extends StatelessWidget {
  const currencymanagepageScreen({Key? key}) : super(key: key);

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
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Column(
                  children: [
                    SizedBox(height: 20),
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
                          text: "USD Balance",
                          font_size: 12,
                          font_family: 'Poppins-Regular',
                          colour: Colors.white,
                        ),
                        Text("")
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
                            height: 45,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xfff5f5f7),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                children: [
                                  Text_Widget(
                                    text: "YESBANK - 2134",
                                    font_size: 10,
                                    colour: Color(0xff1c1d22),
                                    font_family: 'Poppins-Medium',
                                  ),
                                  Spacer(),
                                  Container(
                                    width: 31,
                                    height: 10,
                                    child: Image.asset(
                                      'images/home/tab_1/visa.png',
                                      width: 31,
                                      height: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              height: 162,
                              width: double.infinity,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SizedBox(height: 30),
                                            Image.asset(
                                              'images/home/tab_1/usa.png',
                                            ),
                                            SizedBox(height: 10),
                                            Text_Widget(
                                              text: "CURRENT BALANCEs",
                                              font_size: 10,
                                              colour: Color(0xff9d9da9),
                                              font_family: 'Poppins-Medium',
                                            ),
                                            SizedBox(height: 5),
                                            Text_Widget(
                                              text: "\$599.91",
                                              font_size: 16,
                                              colour: Color(0xff1c1d22),
                                              font_family: 'Poppins-Medium',
                                            ),
                                            SizedBox(height: 30),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Divider(
                            thickness: 1,
                            color: Color(0xffb9b9bf),
                          ),
                          Container(
                            child: Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    exchangepageScreen()));
                                      },
                                      child: Container(
                                        width: 147,
                                        height: 36,
                                        decoration: BoxDecoration(
                                          color: Color(0xff0066cc),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: Center(
                                          child: Text_Widget(
                                            text: "exchange money",
                                            font_size: 12,
                                            colour: Colors.white,
                                            font_family: 'Poppins-SemiBold',
                                          ),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder: (context) => pinverificationScreen()));
                                      },
                                      child: Container(
                                        width: 121,
                                        height: 36,
                                        decoration: BoxDecoration(
                                          color: Color(0xff616267),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: Center(
                                          child: Text_Widget(
                                            text: "card settings",
                                            font_size: 12,
                                            colour: Colors.white,
                                            font_family: 'Poppins-SemiBold',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text_Widget(
                          text: "recent transactions",
                          font_size: 12,
                          font_family: 'Poppins-Regular',
                          colour: Color(0xff616267),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) =>
                            //           transactionspageScreen()),
                            // );
                          },
                          child: Row(
                            children: [
                              Text_Widget(
                                text: "view all",
                                font_size: 12,
                                font_family: 'Poppins-Medium',
                                colour: Color(0xff1c1d22),
                              ),
                              SizedBox(width: 10),
                              Image.asset(
                                'images/home/tab_1/arrow_copy_4.png',
                                width: 6,
                                height: 11,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => currencymanagepageScreen()),
                        );
                      },
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return transaction_card(
                            title: trans_list[index]['title'],
                            subtitle: trans_list[index]['subtitle'],
                            img_path: trans_list[index]['img_path'],
                            price_text: trans_list[index]['price_text'],
                          );
                        },
                        itemCount: 5,
                      ),
                    ),
                    SizedBox(height: 10),
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
