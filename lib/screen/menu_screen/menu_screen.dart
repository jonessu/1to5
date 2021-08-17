import 'package:digitatravelmoney/screen/menu_screen/bloc/menu_bloc.dart';
import 'package:digitatravelmoney/utils/color_resource.dart';
import 'package:digitatravelmoney/utils/fontFamily_resource.dart';
import 'package:digitatravelmoney/utils/image_resource.dart';
import 'package:digitatravelmoney/utils/string_resources.dart';
import 'package:flutter/material.dart';
import 'package:digitatravelmoney/Widget/text_widget.dart';
import 'package:digitatravelmoney/screen/edit_profile_screen/edit_profile_screen.dart';
import 'package:digitatravelmoney/screen/reset_pin_screen/reset_pin_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class menuScreen extends StatefulWidget {
  const menuScreen({Key? key}) : super(key: key);

  @override
  _menuScreenState createState() => _menuScreenState();
}

class _menuScreenState extends State<menuScreen> {
  late MenuBloc _menuBloc;
  @override
  void initState() {
    super.initState();
    _menuBloc = MenuBloc()..add(MenuInitialEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<MenuBloc, MenuState>(
      bloc: _menuBloc,
      listener: (context, state) {},
      child: BlocBuilder<MenuBloc, MenuState>(
        bloc: _menuBloc,
        builder: (context, state) {
          if (state is MenuLoadingState) {
            return Scaffold(
                body: Center(
              child: CircularProgressIndicator(),
            ));
          } else if (state is MenuLoadedState) {
            return Scaffold(
              appBar: AppBar(
                leading: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    FontAwesomeIcons.chevronLeft,
                    color: Colors.white,
                    size: 16,
                  ),
                ),
                title: Text_Widget(
                  text: StringResource.menu,
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
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 70.0,
                            backgroundImage: AssetImage(ImageResource.jones),
                          ),
                          SizedBox(height: 15),
                          Text_Widget(
                            text: "Jones",
                            font_size: 18,
                            colour: Colors.white,
                            font_family: FontFamilyResource.PoppinsMedium,
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text_Widget(
                              text: StringResource.menu,
                              font_size: 12,
                              colour: Colors.white,
                              font_family: FontFamilyResource.PoppinsRegular,
                            ),
                            SizedBox(height: 15.0),
                            Container(
                              width: double.infinity,
                              height: 255,
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
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    editprofileScreen()));
                                      },
                                      child: Row(
                                        children: [
                                          Text_Widget(
                                            text: StringResource.edit_profile,
                                            font_size: 13,
                                            colour: ColorResource.color1c1d22,
                                            font_family: FontFamilyResource
                                                .PoppinsMedium,
                                          ),
                                          Spacer(),
                                          Image.asset(
                                            ImageResource.arrowcopy,
                                            width: 8,
                                            height: 14,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Divider(
                                      height: 15.5,
                                      thickness: 1,
                                      indent: 5,
                                      endIndent: 5,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    resetpinScreen()));
                                      },
                                      child: Row(
                                        children: [
                                          Text_Widget(
                                            text: StringResource.reset_password,
                                            font_size: 13,
                                            colour: ColorResource.color1c1d22,
                                            font_family: FontFamilyResource
                                                .PoppinsMedium,
                                          ),
                                          Spacer(),
                                          Image.asset(
                                            ImageResource.arrowcopy,
                                            width: 8,
                                            height: 14,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Divider(
                                      height: 15.5,
                                      thickness: 1,
                                      indent: 5,
                                      endIndent: 5,
                                    ),
                                    Row(
                                      children: [
                                        Text_Widget(
                                          text: StringResource.contact_us,
                                          font_size: 13,
                                          colour: ColorResource.color1c1d22,
                                          font_family:
                                              FontFamilyResource.PoppinsMedium,
                                        ),
                                        Spacer(),
                                        Image.asset(
                                          ImageResource.arrowcopy,
                                          width: 8,
                                          height: 14,
                                        ),
                                      ],
                                    ),
                                    Divider(
                                      height: 15.5,
                                      thickness: 1,
                                      indent: 5,
                                      endIndent: 5,
                                    ),
                                    Row(
                                      children: [
                                        Text_Widget(
                                          text: StringResource.about_us,
                                          font_size: 13,
                                          colour: ColorResource.color1c1d22,
                                          font_family:
                                              FontFamilyResource.PoppinsMedium,
                                        ),
                                        Spacer(),
                                        Image.asset(
                                          ImageResource.arrowcopy,
                                          width: 8,
                                          height: 14,
                                        ),
                                      ],
                                    ),
                                    Divider(
                                      height: 15.5,
                                      thickness: 1,
                                      indent: 5,
                                      endIndent: 5,
                                    ),
                                    Row(
                                      children: [
                                        Text_Widget(
                                          text: StringResource.support,
                                          font_size: 13,
                                          colour: ColorResource.color1c1d22,
                                          font_family:
                                              FontFamilyResource.PoppinsMedium,
                                        ),
                                        Spacer(),
                                        Image.asset(
                                          ImageResource.arrowcopy,
                                          width: 8,
                                          height: 14,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            GestureDetector(
                              onTap: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => applockScreen()));
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
                                        text: StringResource.logout,
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
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
          return Container(
            color: Colors.red,
          );
        },
      ),
    );
  }
}
