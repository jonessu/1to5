import 'package:flutter/material.dart';
import 'package:digitatravelmoney/Widget/text_widget.dart';
import 'package:digitatravelmoney/Widget/custom_textfield_widget.dart';

class alertmodelScreen extends StatefulWidget {
  alertmodelScreen({Key? key}) : super(key: key);

  @override
  _alertmodelScreenState createState() => _alertmodelScreenState();
}

class _alertmodelScreenState extends State<alertmodelScreen> {
  String text_value = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text_Widget(
                text: "Password is : $text_value",
                font_size: 13,
                colour: Colors.black,
                font_family: 'Poppins-Regular',
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () async {
                  text_value = await showDialog(
                    context: context,
                    builder: (context) {
                      String new_text_value = "";
                      return AlertDialog(
                        content: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Color(0xFFFFFF),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                          ),
                          height: 260,
                          width: 335,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text_Widget(
                                text: "Enter your Password",
                                font_size: 16,
                                colour: Color(0xff1c1d22),
                                font_family: 'Poppins-SemiBold',
                              ),
                              SizedBox(height: 30),
                              Container(
                                width: double.infinity,
                                height: 48,
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    hintText: "4 digit password",
                                    hintStyle: TextStyle(
                                      color: Color(0xff616267),
                                      fontSize: 13,
                                      fontFamily: 'Poppins-Medium',
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: BorderSide(
                                        color: Color(0xff616267),
                                        width: 1,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: BorderSide(
                                        color: Color(0xff616267),
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                  onChanged: (new_value) {
                                    setState(() {
                                      new_text_value = new_value;
                                    });
                                  },
                                ),
                              ),
                              SizedBox(height: 20),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context, new_text_value);
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
                                      text: "Proceed",
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
                                colour: Color(0xff616267),
                                font_family: 'Poppins-SemiBold',
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                  print(text_value);
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
                      text: "Click Me",
                      font_size: 12,
                      colour: Colors.white,
                      font_family: 'Poppins-SemiBold',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
