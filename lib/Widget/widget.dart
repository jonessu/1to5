import 'package:flutter/material.dart';

class Text_Widget extends StatelessWidget {
  final String text;
  final double text_width;
  final double text_height;
  final double font_size;
  final Color colour;
  Text_Widget(
      {required this.text,
      required this.text_height,
      required this.text_width,
      required this.font_size,
      required this.colour});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: text_width,
      height: text_height,
      child: FittedBox(
        fit: BoxFit.contain,
        child: Text(
          text,
          style: TextStyle(
            fontSize: font_size,
            color: colour,
          ),
        ),
      ),
    );
  }
}
