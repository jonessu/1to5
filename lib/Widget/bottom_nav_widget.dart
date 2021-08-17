import 'package:digitatravelmoney/utils/color_resource.dart';
import 'package:flutter/material.dart';

class bottom_nav_widget extends StatelessWidget {
  const bottom_nav_widget({
    Key? key,
    required this.textBtn,
    required this.icon_btn,
    required this.select_value,
  }) : super(key: key);

  final String textBtn;
  final String icon_btn;
  final bool select_value;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 105,
      height: 28,
      decoration: BoxDecoration(
        color: select_value
            ? ColorResource.color0066cc
            : ColorResource.colorf5f5f7,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            icon_btn,
            color: select_value
                ? ColorResource.colorwhite
                : ColorResource.color1c1d22,
            width: 12,
            height: 14,
          ),
          SizedBox(width: 5),
          Text(
            textBtn,
            style: TextStyle(
                color: select_value
                    ? ColorResource.colorwhite
                    : ColorResource.color1c1d22,
                fontSize: 10),
          ),
        ],
      ),
    );
  }
}
