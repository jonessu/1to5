import 'package:digitatravelmoney/screen/edit_profile_screen/bloc/editprofile_bloc.dart';
import 'package:digitatravelmoney/utils/color_resource.dart';
import 'package:digitatravelmoney/utils/fontFamily_resource.dart';
import 'package:digitatravelmoney/utils/string_resources.dart';
import 'package:flutter/material.dart';
import 'package:digitatravelmoney/Widget/text_widget.dart';
import 'package:digitatravelmoney/Widget/custom_textfield_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class editprofileScreen extends StatefulWidget {
  @override
  _editprofileScreenState createState() => _editprofileScreenState();
}

class _editprofileScreenState extends State<editprofileScreen> {
  late EditprofileBloc _editprofileBloc;

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _adressline1Controller = TextEditingController();
  final TextEditingController _adressline2Controller = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _stateController = TextEditingController();
  final TextEditingController _pincodeController = TextEditingController();
  final TextEditingController _securityqusController = TextEditingController();

  String dropdownValue = "one";

  List listItem = ["one", "two", "three"];

  @override
  void initState() {
    super.initState();
    _editprofileBloc = EditprofileBloc()..add(EditprofileInitialEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<EditprofileBloc, EditprofileState>(
      bloc: _editprofileBloc,
      listener: (context, state) {
        if (state is EditprofileNavigatePopState) {
          Navigator.pop(context);
        }
      },
      child: BlocBuilder<EditprofileBloc, EditprofileState>(
        bloc: _editprofileBloc,
        builder: (context, state) {
          if (state is EditprofileLoadingState) {
            return Scaffold(
                body: Center(
              child: CircularProgressIndicator(),
            ));
          } else if (state is EditprofileLoadedState) {
            return Scaffold(
              appBar: AppBar(
                title: Text_Widget(
                  text: StringResource.edit_profile,
                  font_size: 12,
                  font_family: FontFamilyResource.PoppinsRegular,
                  colour: ColorResource.colorwhite,
                ),
                centerTitle: true,
                backgroundColor: ColorResource.color1c1d22,
                elevation: 0.0,
                leading: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SizedBox(
                    width: 9,
                    height: 16,
                    child: Icon(
                      FontAwesomeIcons.chevronLeft,
                      color: ColorResource.colorwhite,
                      size: 16,
                    ),
                  ),
                ),
              ),
              body: SingleChildScrollView(
                child: Container(
                  color: ColorResource.color1c1d22,
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        custom_text_field_widget(
                          widget: TextField(
                            controller: _nameController,
                            style: TextStyle(
                                color: ColorResource.colorb9b9bf,
                                fontSize: 13,
                                fontFamily: FontFamilyResource.PoppinsMedium),
                            decoration: InputDecoration(
                              hintText: StringResource.Enter_name,
                              hintStyle:
                                  TextStyle(color: ColorResource.colorb9b9bf),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color: ColorResource.color616267,
                                  width: 1,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color: ColorResource.color616267,
                                  width: 1,
                                ),
                              ),
                            ),
                          ),
                          text_title: StringResource.Name,
                          font_size: 10,
                          text_family: FontFamilyResource.PoppinsMedium,
                          colour: ColorResource.colorf5f5f7,
                        ),
                        SizedBox(height: 20),
                        custom_text_field_widget(
                          widget: TextField(
                            controller: _adressline1Controller,
                            style: TextStyle(
                                color: ColorResource.colorb9b9bf,
                                fontSize: 13,
                                fontFamily: FontFamilyResource.PoppinsMedium),
                            decoration: InputDecoration(
                              hintText: StringResource.Enter_Address_Line_1,
                              hintStyle:
                                  TextStyle(color: ColorResource.colorb9b9bf),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color: ColorResource.color616267,
                                  width: 1,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color: ColorResource.color616267,
                                  width: 1,
                                ),
                              ),
                            ),
                          ),
                          text_title: StringResource.Address_Line_1,
                          font_size: 10,
                          text_family: FontFamilyResource.PoppinsMedium,
                          colour: ColorResource.colorf5f5f7,
                        ),
                        SizedBox(height: 20),
                        custom_text_field_widget(
                          widget: TextField(
                            controller: _adressline2Controller,
                            style: TextStyle(
                                color: ColorResource.colorb9b9bf,
                                fontSize: 13,
                                fontFamily: FontFamilyResource.PoppinsMedium),
                            decoration: InputDecoration(
                              hintText: StringResource.Enter_Address_Line_2,
                              hintStyle:
                                  TextStyle(color: ColorResource.colorb9b9bf),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color: ColorResource.color616267,
                                  width: 1,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color: ColorResource.color616267,
                                  width: 1,
                                ),
                              ),
                            ),
                          ),
                          text_title: StringResource.Address_Line_2,
                          font_size: 10,
                          text_family: FontFamilyResource.PoppinsMedium,
                          colour: ColorResource.colorf5f5f7,
                        ),
                        SizedBox(height: 20),
                        custom_text_field_widget(
                          widget: TextField(
                            controller: _cityController,
                            style: TextStyle(
                                color: ColorResource.colorb9b9bf,
                                fontSize: 13,
                                fontFamily: FontFamilyResource.PoppinsMedium),
                            decoration: InputDecoration(
                              hintText: StringResource.Enter_City,
                              hintStyle:
                                  TextStyle(color: ColorResource.colorb9b9bf),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color: ColorResource.color616267,
                                  width: 1,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color: ColorResource.color616267,
                                  width: 1,
                                ),
                              ),
                            ),
                          ),
                          text_title: StringResource.City,
                          font_size: 10,
                          text_family: FontFamilyResource.PoppinsMedium,
                          colour: ColorResource.colorf5f5f7,
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              child: Container(
                                child: custom_text_field_widget(
                                  widget: TextField(
                                    controller: _stateController,
                                    style: TextStyle(
                                        color: ColorResource.colorb9b9bf,
                                        fontSize: 13,
                                        fontFamily:
                                            FontFamilyResource.PoppinsMedium),
                                    decoration: InputDecoration(
                                      hintText: StringResource.Enter_State,
                                      hintStyle: TextStyle(
                                          color: ColorResource.colorb9b9bf),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        borderSide: BorderSide(
                                          color: ColorResource.color616267,
                                          width: 1,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        borderSide: BorderSide(
                                          color: ColorResource.color616267,
                                          width: 1,
                                        ),
                                      ),
                                    ),
                                  ),
                                  text_title: StringResource.State,
                                  font_size: 10,
                                  text_family: FontFamilyResource.PoppinsMedium,
                                  colour: ColorResource.colorf5f5f7,
                                ),
                              ),
                            ),
                            SizedBox(width: 25),
                            Expanded(
                              child: custom_text_field_widget(
                                widget: TextField(
                                  controller: _pincodeController,
                                  style: TextStyle(
                                      color: ColorResource.colorb9b9bf,
                                      fontSize: 13,
                                      fontFamily:
                                          FontFamilyResource.PoppinsMedium),
                                  decoration: InputDecoration(
                                    hintText: StringResource.Enter_PinCode,
                                    hintStyle: TextStyle(
                                        color: ColorResource.colorb9b9bf),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: BorderSide(
                                        color: ColorResource.color616267,
                                        width: 1,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: BorderSide(
                                        color: ColorResource.color616267,
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                ),
                                text_title: StringResource.PIN_Code,
                                font_size: 10,
                                text_family: FontFamilyResource.PoppinsMedium,
                                colour: ColorResource.colorf5f5f7,
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
                                text: StringResource.Secret_Question,
                                font_size: 10,
                                colour: ColorResource.colorf5f5f7,
                                font_family: FontFamilyResource.PoppinsMedium,
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
                                      color: ColorResource.colorf5f5f7,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: DropdownButton<String>(
                                    value: dropdownValue,
                                    dropdownColor: ColorResource.colorwhite,
                                    isExpanded: true,
                                    icon: SizedBox(
                                      width: 14,
                                      height: 8,
                                      child: Icon(
                                        FontAwesomeIcons.chevronDown,
                                        color: ColorResource.colorf7b600,
                                      ),
                                    ),
                                    iconSize: 20,
                                    elevation: 16,
                                    style: const TextStyle(
                                      color: ColorResource.colorf5f5f7,
                                      fontSize: 25,
                                      fontFamily:
                                          FontFamilyResource.PoppinsLight,
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
                          widget: TextField(
                            controller: _securityqusController,
                            style: TextStyle(
                                color: ColorResource.colorb9b9bf,
                                fontSize: 13,
                                fontFamily: FontFamilyResource.PoppinsMedium),
                            decoration: InputDecoration(
                              hintText: StringResource.Enter_Security_Question,
                              hintStyle:
                                  TextStyle(color: ColorResource.colorb9b9bf),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color: ColorResource.color616267,
                                  width: 1,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color: ColorResource.color616267,
                                  width: 1,
                                ),
                              ),
                            ),
                          ),
                          text_title:
                              StringResource.Answer_to_Security_Question,
                          font_size: 10,
                          text_family: FontFamilyResource.PoppinsMedium,
                          colour: ColorResource.colorf5f5f7,
                        ),
                        SizedBox(height: 20),
                        GestureDetector(
                          onTap: () {
                            if (_nameController.text != "" &&
                                _adressline1Controller.text != "" &&
                                _adressline2Controller.text != "" &&
                                _cityController.text != "" &&
                                _stateController.text != "" &&
                                _pincodeController.text != "" &&
                                _securityqusController.text != "") {
                              _editprofileBloc.add(EditprofileClickEvent(
                                  name: _nameController.text,
                                  address1: _adressline1Controller.text,
                                  address2: _adressline2Controller.text,
                                  state: _stateController.text,
                                  city: _cityController.text,
                                  security: _securityqusController.text,
                                  pincode: _pincodeController.text));
                            }
                          },
                          child: Container(
                            width: double.infinity,
                            height: 42,
                            decoration: BoxDecoration(
                              color: ColorResource.color0066cc,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Text_Widget(
                                text: StringResource.Save,
                                font_size: 12,
                                colour: ColorResource.colorwhite,
                                font_family: FontFamilyResource.PoppinsSemiBold,
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
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
