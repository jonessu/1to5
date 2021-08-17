import 'package:digitatravelmoney/utils/color_resource.dart';
import 'package:digitatravelmoney/utils/fontFamily_resource.dart';
import 'package:digitatravelmoney/utils/image_resource.dart';
import 'package:digitatravelmoney/utils/string_resources.dart';
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
              "images/$img_path.png",
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
                      font_family: FontFamilyResource.PoppinsSemiBold,
                      colour: ColorResource.color9d9da9,
                    ),
                    SizedBox(width: 3),
                    Text_Widget(
                      text: text_title,
                      font_size: 14,
                      font_family: FontFamilyResource.PoppinsSemiBold,
                      colour: ColorResource.color1c1d22,
                    ),
                  ],
                ),
                Text_Widget(
                  text: StringResource.USD,
                  font_size: 10,
                  colour: ColorResource.color616267,
                  font_family: FontFamilyResource.PoppinsLight,
                ),
              ],
            ),
          ),
          Spacer(),
          Row(
            children: [
              Text_Widget(
                text: StringResource.manage,
                font_size: 10,
                colour: ColorResource.color616267,
                font_family: FontFamilyResource.PoppinsRegular,
              ),
              SizedBox(width: 10),
              Image.asset(
                ImageResource.arrowcopy,
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
