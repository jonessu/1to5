import 'package:digitatravelmoney/screen/app_lock_screen/bloc/applock_bloc.dart';
import 'package:digitatravelmoney/utils/color_resource.dart';
import 'package:digitatravelmoney/utils/fontFamily_resource.dart';
import 'package:digitatravelmoney/utils/image_resource.dart';
import 'package:digitatravelmoney/utils/string_resources.dart';
import 'package:flutter/material.dart';
import 'package:digitatravelmoney/screen/app_lock_options_screen/app_lock_options_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class applockScreen extends StatefulWidget {
  const applockScreen({Key? key}) : super(key: key);

  @override
  _applockScreenState createState() => _applockScreenState();
}

class _applockScreenState extends State<applockScreen> {
  late ApplockBloc _applockBloc;
  late var text;
  @override
  void initState() {
    super.initState();
    _applockBloc = ApplockBloc()..add(ApplockInitialEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ApplockBloc, ApplockState>(
      bloc: _applockBloc,
      listener: (context, state) {},
      child: BlocBuilder<ApplockBloc, ApplockState>(
        bloc: _applockBloc,
        builder: (context, state) {
          if (state is ApplockLoadingState) {
            return Scaffold(
                body: Center(
              child: CircularProgressIndicator(),
            ));
          } else if (state is ApplockLoadedState) {
            return Scaffold(
              appBar: PreferredSize(
                preferredSize: Size.fromHeight(62.0),
                child: AppBar(
                  leading: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      FontAwesomeIcons.chevronLeft,
                      color: ColorResource.colorwhite,
                      size: 16,
                    ),
                  ),
                  centerTitle: true,
                  backgroundColor: ColorResource.color1c1d22,
                  title: Text(
                    StringResource.app_lock_preferences,
                    style: TextStyle(
                      color: ColorResource.colorwhite,
                      fontSize: 12,
                      fontFamily: FontFamilyResource.PoppinsRegular,
                    ),
                  ),
                ),
              ),
              body: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    SizedBox(height: 10),
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
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => applockoptionScreen()));
                        });
                      },
                      child: Container(
                        width: double.infinity,
                        height: 49,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: ColorResource.colorwhite,
                          border: Border.all(
                            color: ColorResource.colore3e3e5,
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            children: [
                              Text(
                                StringResource.Fingerprint,
                                style: TextStyle(
                                  color: ColorResource.color616267,
                                  fontSize: 13,
                                  fontFamily: FontFamilyResource.PoppinsMedium,
                                ),
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
                    SizedBox(height: 15),
                  ],
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
