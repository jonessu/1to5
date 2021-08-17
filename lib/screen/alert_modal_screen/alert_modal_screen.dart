import 'package:digitatravelmoney/screen/alert_modal_screen/bloc/alertmodal_bloc.dart';
import 'package:digitatravelmoney/utils/color_resource.dart';
import 'package:digitatravelmoney/utils/fontFamily_resource.dart';
import 'package:digitatravelmoney/utils/string_resources.dart';
import 'package:flutter/material.dart';
import 'package:digitatravelmoney/Widget/text_widget.dart';
import 'package:digitatravelmoney/Widget/custom_textfield_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class alertmodelScreen extends StatefulWidget {
  alertmodelScreen({Key? key}) : super(key: key);

  @override
  _alertmodelScreenState createState() => _alertmodelScreenState();
}

class _alertmodelScreenState extends State<alertmodelScreen> {
  late AlertmodalBloc _alertmodalBloc;
  @override
  void initState() {
    super.initState();
    _alertmodalBloc = AlertmodalBloc()..add(AlertmodalInitialEvent());
  }

  String text_value = "";
  @override
  Widget build(BuildContext context) {
    return BlocListener<AlertmodalBloc, AlertmodalState>(
      bloc: _alertmodalBloc,
      listener: (context, state) {
        // TODO: implement listener
      },
      child: BlocBuilder<AlertmodalBloc, AlertmodalState>(
        bloc: _alertmodalBloc,
        builder: (context, state) {
          if (state is AlertmodalLoadingState) {
            return Scaffold(
                body: Center(
              child: CircularProgressIndicator(),
            ));
          } else if (state is AlertmodalLoadedState) {
            return Scaffold(
              body: Container(
                height: MediaQuery.of(context).size.height,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text_Widget(
                        text: "Password is : ",
                        font_size: 13,
                        colour: Colors.black,
                        font_family: FontFamilyResource.PoppinsRegular,
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
                                    color: ColorResource.colorFFFFFF,
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
                                        text:
                                            StringResource.Enter_Your_Password,
                                        font_size: 16,
                                        colour: ColorResource.color1c1d22,
                                        font_family:
                                            FontFamilyResource.PoppinsSemiBold,
                                      ),
                                      SizedBox(height: 30),
                                      Container(
                                        width: double.infinity,
                                        height: 48,
                                        child: TextFormField(
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                            hintText:
                                                StringResource.digit_4_password,
                                            hintStyle: TextStyle(
                                              color: ColorResource.color616267,
                                              fontSize: 13,
                                              fontFamily: FontFamilyResource
                                                  .PoppinsMedium,
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              borderSide: BorderSide(
                                                color:
                                                    ColorResource.color616267,
                                                width: 1,
                                              ),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              borderSide: BorderSide(
                                                color:
                                                    ColorResource.color616267,
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
                                          Navigator.pop(
                                              context, new_text_value);
                                        },
                                        child: Container(
                                          width: double.infinity,
                                          height: 42,
                                          decoration: BoxDecoration(
                                            color: ColorResource.color0066cc,
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          child: Center(
                                            child: Text_Widget(
                                              text: StringResource.Proceed,
                                              font_size: 12,
                                              colour: Colors.white,
                                              font_family: FontFamilyResource
                                                  .PoppinsSemiBold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text_Widget(
                                        text: StringResource.Cancel,
                                        font_size: 12,
                                        colour: ColorResource.color616267,
                                        font_family:
                                            FontFamilyResource.PoppinsSemiBold,
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
                            color: ColorResource.color0066cc,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Text_Widget(
                              text: StringResource.Click_Me,
                              font_size: 12,
                              colour: Colors.white,
                              font_family: FontFamilyResource.PoppinsSemiBold,
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
          return Container(
            color: ColorResource.colorred,
          );
        },
      ),
    );
  }
}
