import 'package:flutter/material.dart';
import 'package:digitatravelmoney/Constant/transaction_list_constant.dart';
import 'package:digitatravelmoney/screen/transactions_page_screen.dart';
import 'package:digitatravelmoney/Widget/transaction_card.dart';
import 'package:digitatravelmoney/Widget/offers_card_widget.dart';
import 'package:digitatravelmoney/Widget/text_widget.dart';
import 'package:digitatravelmoney/screen/menu_screen.dart';
import 'package:digitatravelmoney/Widget/prepaid_travel_card_widget.dart';
import 'package:digitatravelmoney/screen/atm_locator_screen.dart';
import 'package:digitatravelmoney/screen/expense_screen.dart';
import 'package:digitatravelmoney/screen/currency_manage_page_screen.dart';
import 'package:digitatravelmoney/screen/alert_modal_screen.dart';
import 'package:digitatravelmoney/screen/error_message_screen.dart';
import 'package:digitatravelmoney/screen/loading_screen.dart';

class hometabScreen extends StatefulWidget {
  const hometabScreen({
    Key? key,
  }) : super(key: key);

  @override
  _hometabScreenState createState() => _hometabScreenState();
}

class _hometabScreenState extends State<hometabScreen> {
  String exchange_from_value = "USD";
  List exchange_from_list = ["USD"];
  String exchange_to_value = "EUR";
  List exchange_to_list = ["EUR"];
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
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text_Widget(
                          text: "current balance",
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
                                    text: "PREPAID TRAVEL CARD",
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
                              width: double.infinity,
                              height: 505,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => expenseScreen(),
                                        ),
                                      );
                                    },
                                    child: prepaid_travel_card_widget(
                                      img_path: 'usa',
                                      text_title: '599.91',
                                      money_value: '\$',
                                    ),
                                  ),
                                  Divider(
                                    thickness: 1,
                                    color: Color(0xffb9b9bf),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              alertmodelScreen(),
                                        ),
                                      );
                                    },
                                    child: prepaid_travel_card_widget(
                                      img_path: 'india',
                                      text_title: '3,340.22',
                                      money_value: '₹',
                                    ),
                                  ),
                                  Divider(
                                    thickness: 1,
                                    color: Color(0xffb9b9bf),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                errormessageScreen(),
                                          ));
                                    },
                                    child: prepaid_travel_card_widget(
                                      img_path: 'canada',
                                      text_title: '533.99',
                                      money_value: 'C\$',
                                    ),
                                  ),
                                  Divider(
                                    thickness: 1,
                                    color: Color(0xffb9b9bf),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                loadingScreen(),
                                          ));
                                    },
                                    child: prepaid_travel_card_widget(
                                      img_path: 'uae',
                                      text_title: '389',
                                      money_value: 'د.إ ',
                                    ),
                                  ),
                                  Divider(
                                    thickness: 1,
                                    color: Color(0xffb9b9bf),
                                  ),
                                  prepaid_travel_card_widget(
                                    img_path: 'singapore',
                                    text_title: '574.24',
                                    money_value: 'S\$',
                                  ),
                                  Divider(
                                    thickness: 1,
                                    color: Color(0xffb9b9bf),
                                  ),
                                  prepaid_travel_card_widget(
                                    img_path: 'australia',
                                    text_title: '975.51',
                                    money_value: 'A\$',
                                  ),
                                  Divider(
                                    thickness: 1,
                                    color: Color(0xffb9b9bf),
                                  ),
                                  prepaid_travel_card_widget(
                                    img_path: 'european_union',
                                    text_title: '605.99',
                                    money_value: '€',
                                  ),
                                  Divider(
                                    thickness: 1,
                                    color: Color(0xffb9b9bf),
                                  ),
                                  prepaid_travel_card_widget(
                                    img_path: 'united_kingdom',
                                    text_title: '719.60',
                                    money_value: '£',
                                  ),
                                  Divider(
                                    thickness: 1,
                                    color: Color(0xffb9b9bf),
                                  ),
                                  prepaid_travel_card_widget(
                                    img_path: 'saudi_arabia',
                                    text_title: '140.99',
                                    money_value: '﷼',
                                  ),
                                ],
                              ),
                            ),
                          ),
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      transactionspageScreen()),
                            );
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
                            Text_Widget(
                              text: "ATM Locator",
                              font_size: 16,
                              colour: Color(0xff1c1d22),
                              font_family: 'Poppins-SemiBold',
                            ),
                            SizedBox(height: 5),
                            Text_Widget(
                              text: "Find a Visa™ ATM near\nyour location.",
                              font_size: 14,
                              colour: Color(0xff9d9da9),
                              font_family: 'Poppins-SemiBold',
                            ),
                            SizedBox(height: 15),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            atmlocattorScreen()));
                              },
                              child: Container(
                                width: 118,
                                height: 36,
                                decoration: BoxDecoration(
                                  color: Color(0xff0066cc),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Center(
                                  child: Text_Widget(
                                    text: "start looking",
                                    font_size: 12,
                                    colour: Colors.white,
                                    font_family: 'Poppins-SemiBold',
                                  ),
                                ),
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20.0,
                          left: 20.0,
                          right: 20.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text_Widget(
                              text: "Exchange Money",
                              font_size: 16,
                              colour: Color(0xff1c1d22),
                              font_family: 'Poppins-SemiBold',
                            ),
                            SizedBox(height: 5),
                            Text_Widget(
                              text:
                                  "Find out real-timeExchange rates &\nExchange between your balances.",
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
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 90,
                                    height: 43,
                                    padding: EdgeInsets.all(15),
                                    child: DropdownButton<String>(
                                      value: exchange_from_value,
                                      dropdownColor: Color(0xff000000),
                                      isExpanded: true,
                                      icon: Container(
                                        width: 14,
                                        height: 8,
                                        child: Icon(Icons.arrow_downward),
                                      ),
                                      iconSize: 14,
                                      elevation: 16,
                                      style: TextStyle(
                                        color: Color(0xff000000),
                                        fontFamily: 'Poppins-Light',
                                      ),
                                      underline: SizedBox(),
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          exchange_from_value = newValue!;
                                        });
                                      },
                                      items:
                                          exchange_from_list.map((valueItem) {
                                        return DropdownMenuItem<String>(
                                          value: valueItem,
                                          child: Text(valueItem),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                  Text_Widget(
                                    text: "Balance: \$1,319",
                                    font_size: 10,
                                    colour: Color(0xff9d9da9),
                                    font_family: 'Poppins-Medium',
                                  ),
                                ],
                              ),
                              Text_Widget(
                                text: "1",
                                font_size: 30,
                                colour: Color(0xff1c1d22),
                                font_family: 'Poppins-Light',
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Divider(
                                  indent: 20,
                                  color: Color(0xffb9b9bf),
                                  thickness: 1,
                                ),
                              ),
                              Container(
                                height: 25,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Color(0xfff5f5f7),
                                  borderRadius: BorderRadius.circular(24.5),
                                ),
                                child: Center(
                                  child: Text_Widget(
                                    text: "1\$ = €0.91",
                                    font_size: 10,
                                    colour: Color(0xff616267),
                                    font_family: 'Poppins-SemiBold',
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Divider(
                                  endIndent: 20,
                                  color: Color(0xffb9b9bf),
                                  thickness: 1,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    width: 90,
                                    height: 43,
                                    padding: EdgeInsets.all(15),
                                    child: DropdownButton<String>(
                                      value: exchange_to_value,
                                      dropdownColor: Color(0xff000000),
                                      isExpanded: true,
                                      icon: Container(
                                        width: 14,
                                        height: 8,
                                        child: Icon(Icons.arrow_downward),
                                      ),
                                      iconSize: 14,
                                      elevation: 16,
                                      style: TextStyle(
                                        color: Color(0xff000000),
                                        fontFamily: 'Poppins-Light',
                                      ),
                                      underline: SizedBox(),
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          exchange_to_value = newValue!;
                                        });
                                      },
                                      items: exchange_to_list.map((valueItem) {
                                        return DropdownMenuItem<String>(
                                          value: valueItem,
                                          child: Text(valueItem),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                  Text_Widget(
                                    text: "Balance: €20",
                                    font_size: 10,
                                    colour: Color(0xff9d9da9),
                                    font_family: 'Poppins-Medium',
                                  ),
                                ],
                              ),
                              Text_Widget(
                                text: "0.91",
                                font_size: 30,
                                colour: Color(0xff1c1d22),
                                font_family: 'Poppins-Light',
                              ),
                            ],
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 1,
                        color: Color(0xffb9b9bf),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                        child: GestureDetector(
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
                              child: Text_Widget(
                                text: "exchange now",
                                font_size: 12,
                                colour: Colors.white,
                                font_family: 'Poppins-SemiBold',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text_Widget(
                      text: "offers for you",
                      font_size: 12,
                      colour: Color(0xff616267),
                      font_family: 'Poppins-SemiBold',
                    ),
                    Row(
                      children: [
                        Text_Widget(
                          text: "view all",
                          font_size: 12,
                          colour: Color(0xff1c1d22),
                          font_family: 'Poppins-Medium',
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
