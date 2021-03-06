import 'package:digitatravelmoney/screen/app_lock_screen/app_lock_screen.dart';
import 'package:digitatravelmoney/Widget/custom_switch_widget.dart';
import 'package:digitatravelmoney/screen/bloc_post_api_screen/bloc/post_bloc.dart';
import 'package:digitatravelmoney/screen/setting_tab_screen/bloc/settingstab_bloc.dart';
import 'package:digitatravelmoney/utils/color_resource.dart';
import 'package:digitatravelmoney/utils/fontFamily_resource.dart';
import 'package:digitatravelmoney/utils/image_resource.dart';
import 'package:digitatravelmoney/utils/string_resources.dart';
import 'package:flutter/material.dart';
import 'package:digitatravelmoney/Widget/text_widget.dart';
import 'package:digitatravelmoney/screen/menu_screen/menu_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class settingstabScreen extends StatefulWidget {
  const settingstabScreen({
    Key? key,
  }) : super(key: key);

  @override
  _settingstabScreenState createState() => _settingstabScreenState();
}

class _settingstabScreenState extends State<settingstabScreen> {
  late SettingstabBloc _settingstabBloc;
  bool switch_value = false;
  @override
  void initState() {
    super.initState();
    _settingstabBloc = SettingstabBloc()..add(SettingstabInitialTab());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResource.colorf5f5f7,
      body: SingleChildScrollView(
        child: BlocListener<SettingstabBloc, SettingstabState>(
          bloc: _settingstabBloc,
          listener: (context, state) {
            // TODO: implement listener
          },
          child: BlocBuilder<SettingstabBloc, SettingstabState>(
            bloc: _settingstabBloc,
            builder: (context, state) {
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(ImageResource.background),
                    alignment: Alignment.topCenter,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          SizedBox(height: 54),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text_Widget(
                                text: StringResource.card_settings,
                                font_size: 12,
                                font_family: FontFamilyResource.PoppinsRegular,
                                colour: Colors.white,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => menuScreen(),
                                    ),
                                  );
                                },
                                child: Icon(
                                  Icons.menu,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 35,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: ColorResource.color1464b0,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10.0),
                                      topRight: Radius.circular(10.0),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 15.0,
                                      vertical: 10.0,
                                    ),
                                    child: Row(
                                      children: [
                                        Text_Widget(
                                          text: StringResource
                                              .PREPAID_TRAVEL_CARD,
                                          font_size: 10,
                                          colour: Colors.white,
                                          font_family:
                                              FontFamilyResource.PoppinsMedium,
                                        ),
                                        Spacer(),
                                        Text_Widget(
                                          text: "",
                                          font_size: 10,
                                          colour: Colors.white,
                                          font_family:
                                              FontFamilyResource.PoppinsMedium,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 146,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Center(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text_Widget(
                                                text: "4829 XXXX XXXX 0124",
                                                font_size: 16,
                                                colour:
                                                    ColorResource.color616267,
                                                font_family: FontFamilyResource
                                                    .PoppinsMedium,
                                              ),
                                              SizedBox(height: 10),
                                              Icon(
                                                Icons.lock,
                                                color:
                                                    ColorResource.color616267,
                                                size: 20,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            15, 0, 20, 23),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 16,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Text_Widget(
                                                      text: "\$",
                                                      font_size: 12,
                                                      colour: ColorResource
                                                          .color1a1f71,
                                                      font_family:
                                                          FontFamilyResource
                                                              .PoppinsMedium,
                                                    ),
                                                  ),
                                                  SizedBox(width: 5),
                                                  Text_Widget(
                                                    text: "994.91",
                                                    font_size: 16,
                                                    colour: ColorResource
                                                        .color000000,
                                                    font_family:
                                                        FontFamilyResource
                                                            .PoppinsSemiBold,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Spacer(),
                                            Container(
                                              width: 49,
                                              height: 16,
                                              child: Image.asset(
                                                ImageResource.visa,
                                                width: 151,
                                                height: 70,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text_Widget(
                                text: StringResource.lock_card,
                                font_size: 12,
                                font_family: FontFamilyResource.PoppinsRegular,
                                colour: Colors.white,
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Container(
                            width: double.infinity,
                            height: 264,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              border: Border.all(
                                color: ColorResource.colore3e3e5,
                                width: 1,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Custom_Switch(
                                    switch_value: _settingstabBloc.switch_1,
                                    switch_title: StringResource.everything,
                                    onClicked: (bool newvalue) {},
                                  ),
                                  Divider(
                                    height: 15.5,
                                    thickness: 1,
                                    indent: 5,
                                    endIndent: 5,
                                  ),
                                  Custom_Switch(
                                    switch_value: _settingstabBloc.switch_2,
                                    switch_title: StringResource.ATM,
                                    onClicked: (bool newvalue) {},
                                  ),
                                  Divider(
                                    height: 15.5,
                                    thickness: 1,
                                    indent: 5,
                                    endIndent: 5,
                                  ),
                                  Custom_Switch(
                                    switch_value: _settingstabBloc.switch_3,
                                    switch_title:
                                        StringResource.retail_transactions,
                                    onClicked: (bool newvalue) {},
                                  ),
                                  Divider(
                                    height: 15.5,
                                    thickness: 1,
                                    indent: 5,
                                    endIndent: 5,
                                  ),
                                  Custom_Switch(
                                    switch_value: _settingstabBloc.switch_4,
                                    switch_title:
                                        StringResource.online_shopping,
                                    onClicked: (bool newvalue) {},
                                  ),
                                  Divider(
                                    height: 15.5,
                                    thickness: 1,
                                    indent: 5,
                                    endIndent: 5,
                                  ),
                                  Custom_Switch(
                                    switch_value: _settingstabBloc.switch_5,
                                    switch_title: StringResource.tapandpay,
                                    onClicked: (bool newvalue) {},
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                StringResource.other_options,
                                style: TextStyle(
                                  color: ColorResource.color616267,
                                  fontSize: 12,
                                  fontFamily: FontFamilyResource.PoppinsRegular,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => applockScreen()));
                            },
                            child: Container(
                              width: double.infinity,
                              height: 49,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                                border: Border.all(
                                  color: ColorResource.colore3e3e5,
                                  width: 1,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                  children: [
                                    Text_Widget(
                                      text: StringResource.app_lock_preferences,
                                      font_size: 13,
                                      font_family:
                                          FontFamilyResource.PoppinsMedium,
                                      colour: ColorResource.color1c1d22,
                                    ),
                                    Spacer(),
                                    Image.asset(
                                      ImageResource.arrowcopy,
                                      width: 8,
                                      height: 14,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 60),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
