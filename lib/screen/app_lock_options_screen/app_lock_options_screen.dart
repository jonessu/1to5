import 'package:digitatravelmoney/screen/app_lock_options_screen/bloc/applockoptions_bloc.dart';
import 'package:digitatravelmoney/screen/bloc/delete_bloc.dart';
import 'package:digitatravelmoney/utils/color_resource.dart';
import 'package:digitatravelmoney/utils/fontFamily_resource.dart';
import 'package:digitatravelmoney/utils/image_resource.dart';
import 'package:digitatravelmoney/utils/string_resources.dart';
import 'package:flutter/material.dart';
import 'package:digitatravelmoney/Widget/radio_btn_widget.dart';
import 'package:digitatravelmoney/Widget/text_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class applockoptionScreen extends StatefulWidget {
  @override
  _applockoptionScreenState createState() => _applockoptionScreenState();
}

class _applockoptionScreenState extends State<applockoptionScreen> {
  late ApplockoptionsBloc _applockoptionsBloc;
  late int radio_value = 1;

  @override
  void initState() {
    super.initState();
    _applockoptionsBloc = ApplockoptionsBloc()
      ..add(ApplockoptionsInitialEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ApplockoptionsBloc, ApplockoptionsState>(
      bloc: _applockoptionsBloc,
      listener: (context, state) {
        if (state is ApplockoptionsNavigationPopState) {
          Navigator.pop(context);
        }
      },
      child: BlocBuilder<ApplockoptionsBloc, ApplockoptionsState>(
        bloc: _applockoptionsBloc,
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              leading: Icon(
                FontAwesomeIcons.chevronLeft,
                color: ColorResource.colorwhite,
                size: 16,
              ),
              centerTitle: true,
              backgroundColor: ColorResource.color1c1d22,
              title: Text(
                StringResource.preferred_screen_lock,
                style: TextStyle(
                  color: ColorResource.colorwhite,
                  fontSize: 12,
                  fontFamily: FontFamilyResource.PoppinsRegular,
                ),
              ),
            ),
            body: Padding(
              padding: EdgeInsets.all(20),
              child: BlocBuilder<DeleteBloc, int>(
                builder: (context, state) {
                  return Column(
                    children: [
                      SizedBox(height: 10),
                      Text("$state"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            StringResource.preferred_screen_lock,
                            style: TextStyle(
                              color: ColorResource.color616267,
                              fontSize: 12,
                              fontFamily: FontFamilyResource.PoppinsRegular,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      radio_btn_widget(
                        radio_value: 5,
                        group_value: radio_value,
                        radio_title: StringResource.PIN,
                        onChanged: (int value) {
                          if (radio_value != value) {
                            context
                                .read<DeleteBloc>()
                                .add(DeleteEvent.decrement);
                            setState(() {
                              radio_value = value;

                              _applockoptionsBloc.add(
                                  ApplockoptionsChangeEvent(lock_value: value));
                            });
                          }
                        },
                      ),
                      SizedBox(height: 15),
                      radio_btn_widget(
                        radio_value: 2,
                        group_value: radio_value,
                        radio_title: StringResource.Fingerprint,
                        onChanged: (int value) {
                          if (radio_value != value) {
                            setState(() {
                              radio_value = value;
                              _applockoptionsBloc.add(
                                  ApplockoptionsChangeEvent(lock_value: value));
                            });
                          }
                        },
                      ),
                      SizedBox(height: 15),
                      radio_btn_widget(
                        radio_value: 3,
                        group_value: radio_value,
                        radio_title: StringResource.Pattern,
                        onChanged: (int value) {
                          if (radio_value != value) {
                            setState(() {
                              radio_value = value;
                              _applockoptionsBloc.add(
                                  ApplockoptionsChangeEvent(lock_value: value));
                            });
                          }
                        },
                      ),
                      SizedBox(height: 15),
                      radio_btn_widget(
                        radio_value: 4,
                        group_value: radio_value,
                        radio_title: StringResource.Face_Unlock,
                        onChanged: (int value) {
                          if (radio_value != value) {
                            setState(() {
                              radio_value = value;
                              _applockoptionsBloc.add(
                                  ApplockoptionsChangeEvent(lock_value: value));
                            });
                          }
                        },
                      ),
                      SizedBox(height: 30),
                      Container(
                        width: double.infinity,
                        height: 106,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: ColorResource.colorfffcf2,
                          border: Border.all(
                            color: ColorResource.colorf7b600,
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(ImageResource.important),
                                  SizedBox(width: 10),
                                  Text_Widget(
                                    text: StringResource.Note,
                                    font_size: 14,
                                    colour: ColorResource.color1c1d22,
                                    font_family:
                                        FontFamilyResource.PoppinsRegular,
                                  ),
                                ],
                              ),
                              SizedBox(height: 7),
                              Text(
                                StringResource.Applock_note,
                                style: TextStyle(
                                  color: ColorResource.color616267,
                                  fontSize: 10,
                                  fontFamily: FontFamilyResource.PoppinsMedium,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
