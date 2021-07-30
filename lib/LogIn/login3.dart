import 'package:flutter/material.dart';
import 'package:digitatravelmoney/Widget/widget.dart';
import 'package:digitatravelmoney/Home/home1.dart';

class Login3 extends StatelessWidget {
  const Login3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Expanded(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    'images/LogIn/logo_top.png',
                    width: 151,
                    height: 70,
                  ),
                  SizedBox(height: 30),
                  Text_Widget(
                    text: "Welcome aboard!",
                    text_height: 25,
                    text_width: 234,
                    font_size: 18,
                    colour: Color(0xff1c1d22),
                  ),
                  SizedBox(
                    height: 71,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text_Widget(
                          text: 'LOGIN PIN',
                          text_height: 14,
                          text_width: 49,
                          font_size: 10,
                          colour: Color(0xff9d9da9)),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    height: 48,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Color(0xffb9b9bf),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        initialValue: "",
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => home()));
                    },
                    child: Container(
                      width: double.infinity,
                      height: 42,
                      decoration: BoxDecoration(
                        color: Color(0xff0066cc),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                          child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins-SemiBold'),
                      )),
                    ),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {},
                    child: Text_Widget(
                      text: "forgot PIN?",
                      text_height: 17,
                      text_width: 67,
                      font_size: 12,
                      colour: Color(0xff616267),
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
