import 'package:flutter/material.dart';
import 'package:digitatravelmoney/Widget/text_widget.dart';

class custom_text_field_widget extends StatelessWidget {
  const custom_text_field_widget({
    required this.text_title,
    required this.font_size,
    required this.text_family,
    required this.colour,
    required this.widget,
    Key? key,
  }) : super(key: key);

  final String text_title;

  final double font_size;
  final String text_family;
  final Widget widget;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text_Widget(
              text: text_title,
              font_size: font_size,
              colour: colour,
              font_family: text_family,
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: double.infinity,
            height: 48,
            child: widget,
          ),
        ],
      ),
    );
  }
}
