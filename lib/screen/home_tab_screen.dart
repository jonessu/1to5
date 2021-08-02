import 'package:flutter/material.dart';
import 'package:digitatravelmoney/Home/Constant/home_constant.dart';
import 'package:digitatravelmoney/screen/transactions_page_screen.dart';
import 'package:digitatravelmoney/Widget/transaction_card.dart';
import 'package:digitatravelmoney/Widget/offers_card_widget.dart';

class hometabScreen extends StatefulWidget {
  const hometabScreen({
    Key? key,
  }) : super(key: key);

  @override
  _hometabScreenState createState() => _hometabScreenState();
}

class _hometabScreenState extends State<hometabScreen> {
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
                    Container(
                      width: double.infinity,
                      height: 550,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        border: Border.all(
                          color: Color(0xffe3e3e5),
                          width: 1,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "recent transactions",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff616267),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => transactionspageScreen(),
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              Text(
                                "view all",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff1c1d22),
                                ),
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
                    ListView.builder(
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
                    SizedBox(height: 10),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  height: 147,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "ATM Locator",
                              style: TextStyle(
                                color: Color(0xff1c1d22),
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Find a Visa™ ATM near\nyour location.",
                              style: TextStyle(
                                color: Color(0xff9d9da9),
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 15),
                            GestureDetector(
                              onTap: () {
                                // Navigator.push(context,
                                //     MaterialPageRoute(builder: (context) => Login3()));
                              },
                              child: Container(
                                width: 118,
                                height: 36,
                                decoration: BoxDecoration(
                                  color: Color(0xff0066cc),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Center(
                                    child: Text(
                                  "start looking",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontFamily: 'Poppins-SemiBold'),
                                )),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        'images/home/tab_1/atm_locator.png',
                        width: 172,
                        height: 127,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  height: 356,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Exchange Money",
                              style: TextStyle(
                                color: Color(0xff1c1d22),
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Find out real-timeExchange rates &\nExchange between your balances.",
                              style: TextStyle(
                                color: Color(0xff9d9da9),
                                fontSize: 10,
                              ),
                            ),
                            SizedBox(height: 19.5),
                            Divider(
                              height: 19.5,
                              thickness: 1,
                              color: Color(0xffb9b9bf),
                            ),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Divider(
                                    color: Color(0xffb9b9bf),
                                    height: 14.5,
                                    thickness: 1,
                                  ),
                                ),
                                Text("OR"),
                                Expanded(
                                  child: Divider(
                                    color: Color(0xffb9b9bf),
                                    height: 14.5,
                                    thickness: 1,
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              height: 19.5,
                              thickness: 1,
                              color: Color(0xffb9b9bf),
                            ),
                            GestureDetector(
                              onTap: () {
                                // Navigator.push(context,
                                //     MaterialPageRoute(builder: (context) => Login3()));
                              },
                              child: Container(
                                width: 130,
                                height: 36,
                                decoration: BoxDecoration(
                                  color: Color(0xff0066cc),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                                  child: Text(
                                    "exchange now",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontFamily: 'Poppins-SemiBold'),
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
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "offers for you",
                      style: TextStyle(
                        color: Color(0xff616267),
                        fontSize: 12,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "view all",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff1c1d22),
                          ),
                        ),
                        SizedBox(width: 10),
                        Image.asset(
                          'images/home/tab_1/arrow_copy_4.png',
                          width: 6,
                          height: 11,
                        ),
                      ],
                    )
                  ],
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
