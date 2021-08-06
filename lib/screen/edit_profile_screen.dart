import 'package:flutter/material.dart';
import 'package:digitatravelmoney/Widget/text_widget.dart';
import 'package:digitatravelmoney/Widget/custom_textfield_widget.dart';

class editprofileScreen extends StatefulWidget {
  @override
  _editprofileScreenState createState() => _editprofileScreenState();
}

class _editprofileScreenState extends State<editprofileScreen> {
  String dropdownValue = "one";

  List listItem = ["one", "two", "three"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text_Widget(
          text: "edit profile",
          font_size: 12,
          font_family: 'Poppins-Regular',
          colour: Colors.white,
        ),
        centerTitle: true,
        backgroundColor: Color(0xff1c1d22),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xff1c1d22),
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                custom_text_field_widget(
                  text_title: 'Name',
                  hint_text: 'Ralph Ray',
                  font_size: 10,
                  text_family: 'Poppins-Medium',
                  colour: Color(0xfff5f5f7),
                ),
                SizedBox(height: 20),
                custom_text_field_widget(
                  text_title: 'Address Line 1',
                  hint_text: 'Ralph Ray',
                  font_size: 10,
                  text_family: 'Poppins-Medium',
                  colour: Color(0xfff5f5f7),
                ),
                SizedBox(height: 20),
                custom_text_field_widget(
                  text_title: 'Address Line 2',
                  hint_text: 'tate: IL Zip: 37636-8924',
                  font_size: 10,
                  text_family: 'Poppins-Medium',
                  colour: Color(0xfff5f5f7),
                ),
                SizedBox(height: 20),
                custom_text_field_widget(
                  text_title: 'City',
                  hint_text: 'Chennai',
                  font_size: 10,
                  text_family: 'Poppins-Medium',
                  colour: Color(0xfff5f5f7),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Container(
                        child: custom_text_field_widget(
                          text_title: 'State',
                          hint_text: 'Tamil Nadu',
                          font_size: 10,
                          text_family: 'Poppins-Medium',
                          colour: Color(0xfff5f5f7),
                        ),
                      ),
                    ),
                    SizedBox(width: 25),
                    Expanded(
                      child: custom_text_field_widget(
                        text_title: 'PIN Code',
                        hint_text: '600061',
                        font_size: 10,
                        text_family: 'Poppins-Medium',
                        colour: Color(0xfff5f5f7),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text_Widget(
                        text: "Secret Question",
                        font_size: 10,
                        colour: Color(0xfff5f5f7),
                        font_family: 'Poppins-Medium',
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      child: Container(
                        width: double.infinity,
                        height: 58,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xfff5f5f7),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: DropdownButton<String>(
                            value: dropdownValue,
                            dropdownColor: Colors.white,
                            isExpanded: true,
                            icon: const Icon(Icons.arrow_downward),
                            iconSize: 20,
                            elevation: 16,
                            style: const TextStyle(
                              color: Color(0xfff5f5f7),
                              fontSize: 25,
                              fontFamily: 'Poppins-Light',
                            ),
                            underline: SizedBox(),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue = newValue!;
                              });
                            },
                            items: listItem.map((valueItem) {
                              return DropdownMenuItem<String>(
                                value: valueItem,
                                child: Text(valueItem),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                custom_text_field_widget(
                  text_title: 'Answer to Security Question',
                  hint_text: 'Lubosek Hnilo',
                  font_size: 10,
                  text_family: 'Poppins-Medium',
                  colour: Color(0xfff5f5f7),
                ),
                SizedBox(height: 20),
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
                        text: "Save",
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
      ),
    );
  }
}
