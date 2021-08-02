import 'package:flutter/material.dart';

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
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff1c1d22),
                ),
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    sub_text,
                    style: TextStyle(color: Color(0xff616267), fontSize: 13),
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
