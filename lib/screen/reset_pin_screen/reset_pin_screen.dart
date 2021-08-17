import 'package:digitatravelmoney/screen/reset_pin_screen/bloc/resetpin_bloc.dart';
import 'package:digitatravelmoney/utils/color_resource.dart';
import 'package:digitatravelmoney/utils/fontFamily_resource.dart';
import 'package:digitatravelmoney/utils/string_resources.dart';
import 'package:flutter/material.dart';
import 'package:digitatravelmoney/Widget/text_widget.dart';
import 'package:digitatravelmoney/Widget/custom_textfield_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class resetpinScreen extends StatefulWidget {
  resetpinScreen({Key? key}) : super(key: key);

  @override
  _resetpinScreenState createState() => _resetpinScreenState();
}

class _resetpinScreenState extends State<resetpinScreen> {
  late ResetpinBloc _resetpinBloc;
  @override
  void initState() {
    super.initState();
    _resetpinBloc = ResetpinBloc()..add(ResetpinInitialEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ResetpinBloc, ResetpinState>(
      bloc: _resetpinBloc,
      listener: (context, state) {
        if (state is ResetpinNavigatePopState) {
          Navigator.pop(context);
        }
      },
      child: BlocBuilder<ResetpinBloc, ResetpinState>(
        bloc: _resetpinBloc,
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              leading: GestureDetector(
                onTap: () {
                  _resetpinBloc.add(ResetpinClickBtn2Event());
                },
                child: Icon(
                  FontAwesomeIcons.chevronLeft,
                  color: Colors.white,
                  size: 16,
                ),
              ),
              title: Text_Widget(
                text: StringResource.reset_password,
                font_size: 12,
                font_family: FontFamilyResource.PoppinsRegular,
                colour: Colors.white,
              ),
              centerTitle: true,
              backgroundColor: ColorResource.color1c1d22,
              elevation: 0.0,
            ),
            body: Container(
              width: double.infinity,
              height: double.infinity,
              color: ColorResource.color1c1d22,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: ListView(
                  children: [
                    custom_text_field_widget(
                      widget: TextField(
                        style: TextStyle(
                            color: ColorResource.colorb9b9bf,
                            fontSize: 13,
                            fontFamily: FontFamilyResource.PoppinsMedium),
                        decoration: InputDecoration(
                          hintText: StringResource.Enter_One_Time_Password,
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
                      text_title: StringResource.One_Time_Password,
                      font_size: 10,
                      text_family: FontFamilyResource.PoppinsMedium,
                      colour: ColorResource.colorf5f5f7,
                    ),
                    SizedBox(height: 20),
                    custom_text_field_widget(
                      widget: TextField(
                        obscureText: true,
                        style: TextStyle(
                            color: ColorResource.colorb9b9bf,
                            fontSize: 13,
                            fontFamily: FontFamilyResource.PoppinsMedium),
                        decoration: InputDecoration(
                          hintText: StringResource.Enter_New_Password,
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
                      text_title: StringResource.New_Password,
                      font_size: 10,
                      text_family: FontFamilyResource.PoppinsMedium,
                      colour: ColorResource.colorf5f5f7,
                    ),
                    SizedBox(height: 20),
                    custom_text_field_widget(
                      widget: TextFormField(
                        obscureText: true,
                        style: TextStyle(
                            color: ColorResource.colorb9b9bf,
                            fontSize: 13,
                            fontFamily: FontFamilyResource.PoppinsMedium),
                        decoration: InputDecoration(
                          hintText: StringResource.Enter_Conform_New_Password,
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
                      text_title: StringResource.Confirm_New_Password,
                      font_size: 10,
                      text_family: FontFamilyResource.PoppinsMedium,
                      colour: ColorResource.colorf5f5f7,
                    ),
                    SizedBox(height: 30),
                    GestureDetector(
                      onTap: () {
                        _resetpinBloc.add(ResetpinClickBtn2Event());
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
                            text: StringResource.Continue,
                            font_size: 12,
                            colour: Colors.white,
                            font_family: FontFamilyResource.PoppinsSemiBold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          _resetpinBloc.add(ResetpinClickBtn2Event());
                        },
                        child: Text_Widget(
                          text: StringResource.Cancel,
                          font_size: 12,
                          colour: ColorResource.colorb9b9bf,
                          font_family: FontFamilyResource.PoppinsSemiBold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
