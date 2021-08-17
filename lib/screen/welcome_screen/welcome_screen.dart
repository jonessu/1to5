import 'package:digitatravelmoney/screen/bloc_post_api_screen/bloc_post_api_screen.dart';
import 'package:digitatravelmoney/screen/setting_tab_screen/setting_tab_screen.dart';
import 'package:digitatravelmoney/screen/welcome_screen/bloc/welcome_bloc.dart';
import 'package:digitatravelmoney/utils/image_resource.dart';
import 'package:digitatravelmoney/utils/string_resources.dart';
import 'package:flutter/material.dart';
import 'package:digitatravelmoney/screen/home_tab_screen/home_tab_screen.dart';
import 'package:digitatravelmoney/screen/offers_tab_screen/offers_tab_screen.dart';
import 'package:digitatravelmoney/Widget/bottom_nav_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class welcomeScreen extends StatefulWidget {
  welcomeScreen({Key? key}) : super(key: key);

  @override
  _welcomeScreenState createState() => _welcomeScreenState();
}

class _welcomeScreenState extends State<welcomeScreen> {
  late WelcomeBloc _welcomeBloc;
  int _selectedIndex = 0;
  bool home_button = true, offers_button = false, setting_button = false;
  static List<Widget> _widgetOptions = <Widget>[
    hometabScreen(),
    offerstabScreen(),
    settingstabScreen(),
  ];

  @override
  void initState() {
    super.initState();
    _welcomeBloc = WelcomeBloc()..add(WelcomeTapInitial());
  }

  // void getCurrentUser() async {
  //   try {
  //     final user = await FirebaseAuth.instance.currentUser;
  //     if (user != null) {
  //       print(user.displayName);
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return BlocListener(
      bloc: _welcomeBloc,
      listener: (context, state) {
        if (state is HomeTapSuccess) {
          _selectedIndex = 0;
          home_button = true;
          offers_button = false;
          setting_button = false;
        } else if (state is OffersTapSuccess) {
          _selectedIndex = 1;
          home_button = false;
          offers_button = true;
          setting_button = false;
        } else if (state is SettingsTapSuccess) {
          _selectedIndex = 2;
          home_button = false;
          offers_button = false;
          setting_button = true;
        }
      },
      child: BlocBuilder(
        bloc: _welcomeBloc,
        builder: (context, state) {
          return Scaffold(
            body: Center(
              child: _widgetOptions.elementAt(_selectedIndex),
            ),
            bottomNavigationBar: BottomAppBar(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        _welcomeBloc.add(ClickTap(0));
                      },
                      child: bottom_nav_widget(
                        textBtn: StringResource.home,
                        icon_btn: ImageResource.home,
                        select_value: home_button,
                      ),
                    ),
                    SizedBox(width: 15),
                    GestureDetector(
                      onTap: () {
                        _welcomeBloc.add(ClickTap(1));
                      },
                      child: bottom_nav_widget(
                        textBtn: StringResource.offers,
                        icon_btn: ImageResource.offers,
                        select_value: offers_button,
                      ),
                    ),
                    SizedBox(width: 15),
                    GestureDetector(
                      onTap: () {
                        _welcomeBloc.add(ClickTap(2));
                      },
                      child: bottom_nav_widget(
                        textBtn: StringResource.Settings,
                        icon_btn: ImageResource.settings,
                        select_value: setting_button,
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
