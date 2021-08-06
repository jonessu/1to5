import 'package:flutter/material.dart';
import 'package:digitatravelmoney/Widget/text_widget.dart';
import 'package:digitatravelmoney/screen/exchange_conformation_screen.dart';

String exchange_from_value = "USD";
List exchange_from_list = ["USD"];
String exchange_to_value = "EUR";
List exchange_to_list = ["EUR"];

class exchangepageScreen extends StatelessWidget {
  const exchangepageScreen({Key? key}) : super(key: key);

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
                      text: "Exchange USD",
                      font_size: 12,
                      font_family: 'Poppins-Regular',
                      colour: Colors.white,
                    ),
                    Text("")
                  ],
                ),
                SizedBox(height: 15),
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
                                        // setState(() {
                                        //   exchange_from_value = newValue!;
                                        // });
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
                              Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: Text_Widget(
                                  text: "1",
                                  font_size: 30,
                                  colour: Color(0xff1c1d22),
                                  font_family: 'Poppins-Light',
                                ),
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
                                        // setState(() {
                                        //   exchange_to_value = newValue!;
                                        // });
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
                              Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: Text_Widget(
                                  text: "0.91",
                                  font_size: 30,
                                  colour: Color(0xff1c1d22),
                                  font_family: 'Poppins-Light',
                                ),
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        exchangeconformationScreen()));
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
