import 'package:digitatravelmoney/screen/bloc_post_api_screen.dart';
import 'package:digitatravelmoney/screen/setting_tab_screen.dart';
import 'package:flutter/material.dart';
import 'package:digitatravelmoney/screen/home_tab_screen.dart';
import 'package:digitatravelmoney/screen/offers_tab_screen.dart';
import 'package:digitatravelmoney/Widget/bottom_nav_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';

class welcomeScreen extends StatefulWidget {
  welcomeScreen({Key? key}) : super(key: key);

  @override
  _welcomeScreenState createState() => _welcomeScreenState();
}

class _welcomeScreenState extends State<welcomeScreen> {
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
  }

  void getCurrentUser() async {
    try {
      final user = await FirebaseAuth.instance.currentUser;
      if (user != null) {
        print(user.displayName);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
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
                  setState(() {
                    _selectedIndex = 0;
                    home_button = true;
                    offers_button = false;
                    setting_button = false;
                  });
                },
                child: bottom_nav_widget(
                  text_btn: 'home',
                  icon_btn: 'images/home/home.png',
                  select_value: home_button,
                ),
              ),
              SizedBox(width: 15),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = 1;
                    home_button = false;
                    offers_button = true;
                    setting_button = false;
                  });
                },
                child: bottom_nav_widget(
                  text_btn: 'offers',
                  icon_btn: 'images/home/offers.png',
                  select_value: offers_button,
                ),
              ),
              SizedBox(width: 15),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = 2;
                    home_button = false;
                    offers_button = false;
                    setting_button = true;
                  });
                },
                child: bottom_nav_widget(
                  text_btn: 'Settings',
                  icon_btn: 'images/home/settings.png',
                  select_value: setting_button,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
