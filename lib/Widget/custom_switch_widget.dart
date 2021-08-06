import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Custom_Switch extends StatelessWidget {
  const Custom_Switch({
    Key? key,
    required this.switch_value,
    required this.switch_title,
    required this.onClicked,
  }) : super(key: key);

  final bool switch_value;
  final String switch_title;
  final Function onClicked;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          switch_title,
          style: TextStyle(
              color: Color(0xff1c1d22),
              fontSize: 13,
              fontFamily: 'Poppins-Medium'),
        ),
        Spacer(),
        SizedBox(
          width: 37,
          height: 22,
          child: CupertinoSwitch(
            trackColor: Colors.grey,
            activeColor: Colors.blue,
            value: switch_value,
            onChanged: (newvalue) {
              onClicked(newvalue);
            },
          ),
        ),
      ],
    );
  }
}
