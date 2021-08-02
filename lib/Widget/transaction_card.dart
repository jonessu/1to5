import 'package:flutter/material.dart';

class transaction_card extends StatelessWidget {
  const transaction_card(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.img_path,
      required this.price_text})
      : super(key: key);
  final String title, subtitle, img_path, price_text;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Color(0xffe3e3e5), width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(color: Color(0xff1c1d22), fontSize: 13),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(color: Color(0xff9d9da9), fontSize: 14),
        ),
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Image.asset(img_path),
        ),
        trailing: Wrap(
          spacing: 5, // space between two icons
          children: <Widget>[
            Text(
              price_text,
              style: TextStyle(
                color: Color(0xff1c1d22),
                fontSize: 13,
              ),
            ), // icon-1
            Icon(Icons.navigate_next_outlined),
          ],
        ),
      ),
    );
  }
}
