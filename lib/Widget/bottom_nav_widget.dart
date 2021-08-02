import 'package:flutter/material.dart';

class bottom_nav_widget extends StatelessWidget {
  const bottom_nav_widget({
    Key? key,
    required this.text_btn,
    required this.icon_btn,
    required this.select_value,
  }) : super(key: key);

  final String text_btn;
  final String icon_btn;
  final bool select_value;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 105,
      height: 28,
      decoration: BoxDecoration(
        color: select_value ? Color(0xff0066cc) : Color(0xfff5f5f7),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            icon_btn,
            color: select_value ? Colors.white : Color(0xff1c1d22),
            width: 12,
            height: 14,
          ),
          SizedBox(width: 5),
          Text(
            text_btn,
            style: TextStyle(
                color: select_value ? Colors.white : Color(0xff1c1d22),
                fontSize: 10),
          ),
        ],
      ),
    );
  }
}
