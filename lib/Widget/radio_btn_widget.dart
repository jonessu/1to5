import 'package:flutter/material.dart';

class radio_btn_widget extends StatelessWidget {
  const radio_btn_widget({
    Key? key,
    required this.radio_value,
    required this.group_value,
    required this.radio_title,
    required this.onChanged,
  }) : super(key: key);

  final int radio_value;
  final int group_value;
  final String radio_title;
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 49,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        border: Border.all(
          color: Color(0xffe3e3e5),
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              radio_title,
              style: TextStyle(
                color: Color(0xff616267),
                fontSize: 13,
                fontFamily: 'Poppins-Medium',
              ),
            ),
            Spacer(),
            Radio(
              value: radio_value,
              groupValue: group_value,
              activeColor: Colors.blue,
              onChanged: (value) {
                onChanged(value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
