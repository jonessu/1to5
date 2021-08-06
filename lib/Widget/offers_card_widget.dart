import 'package:flutter/material.dart';
import 'package:digitatravelmoney/Widget/text_widget.dart';

class offers_card_widget extends StatelessWidget {
  const offers_card_widget({
    Key? key,
    required this.img_path,
    required this.title,
    required this.sub_text,
  }) : super(key: key);
  final String img_path;
  final String title;
  final String sub_text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Image.asset(
            img_path,
            width: double.infinity,
            height: 160,
            fit: BoxFit.fill,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text_Widget(
                text: title,
                font_size: 16,
                colour: Color(0xff1c1d22),
                font_family: 'Poppins-Medium',
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text_Widget(
                    text: sub_text,
                    font_size: 13,
                    colour: Color(0xff616267),
                    font_family: 'Poppins-SemiBold',
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
        ),
      ],
    );
  }
}
