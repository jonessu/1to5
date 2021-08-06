import 'package:flutter/material.dart';
import 'package:digitatravelmoney/Widget/text_widget.dart';
import 'package:digitatravelmoney/Widget/custom_textfield_widget.dart';

class resetpinScreen extends StatefulWidget {
  resetpinScreen({Key? key}) : super(key: key);

  @override
  _resetpinScreenState createState() => _resetpinScreenState();
}

class _resetpinScreenState extends State<resetpinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text_Widget(
          text: "reset password",
          font_size: 12,
          font_family: 'Poppins-Regular',
          colour: Colors.white,
        ),
        centerTitle: true,
        backgroundColor: Color(0xff1c1d22),
        elevation: 0.0,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color(0xff1c1d22),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: ListView(
            children: [
              custom_text_field_widget(
                text_title: 'One Time Password',
                hint_text: '951244',
                font_size: 10,
                text_family: 'Poppins-Medium',
                colour: Color(0xfff5f5f7),
              ),
              SizedBox(height: 20),
              custom_text_field_widget(
                text_title: 'New Password',
                hint_text: '•••••••••••••',
                font_size: 10,
                text_family: 'Poppins-Medium',
                colour: Color(0xfff5f5f7),
              ),
              SizedBox(height: 20),
              custom_text_field_widget(
                text_title: 'Confirm New Password',
                hint_text: '•••••••••••••',
                font_size: 10,
                text_family: 'Poppins-Medium',
                colour: Color(0xfff5f5f7),
              ),
              SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => pinverificationScreen()));
                },
                child: Container(
                  width: double.infinity,
                  height: 42,
                  decoration: BoxDecoration(
                    color: Color(0xff0066cc),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text_Widget(
                      text: "Continue",
                      font_size: 12,
                      colour: Colors.white,
                      font_family: 'Poppins-SemiBold',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text_Widget(
                text: "Cancel",
                font_size: 12,
                colour: Color(0xffb9b9bf),
                font_family: 'Poppins-SemiBold',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
