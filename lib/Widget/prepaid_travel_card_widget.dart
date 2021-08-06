import 'package:flutter/material.dart';
import 'package:digitatravelmoney/Widget/text_widget.dart';

class prepaid_travel_card_widget extends StatelessWidget {
  const prepaid_travel_card_widget({
    required this.img_path,
    required this.text_title,
    required this.money_value,
    Key? key,
  }) : super(key: key);
  final String img_path;
  final String text_title;

  final String money_value;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 31,
      child: Row(
        children: [
          Container(
            height: 31,
            width: 30,
            child: Image.asset(
              "images/home/tab_1/$img_path.png",
            ),
          ),
          SizedBox(width: 20),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text_Widget(
                      text: money_value,
                      font_size: 11,
                      font_family: 'Poppins-SemiBold',
                      colour: Color(0xff9d9da9),
                    ),
                    SizedBox(width: 3),
                    Text_Widget(
                      text: text_title,
                      font_size: 14,
                      font_family: 'Poppins-SemiBold',
                      colour: Color(0xff1c1d22),
                    ),
                  ],
                ),
                Text_Widget(
                  text: "USD",
                  font_size: 10,
                  colour: Color(0xff616267),
                  font_family: 'Poppins-Light',
                ),
              ],
            ),
          ),
          Spacer(),
          Row(
            children: [
              Text_Widget(
                text: "manage",
                font_size: 10,
                colour: Color(0xff616267),
                font_family: 'Poppins-Regular',
              ),
              SizedBox(width: 10),
              Image.asset(
                'images/home/tab_1/arrow_copy_4.png',
                width: 6,
                height: 11,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
