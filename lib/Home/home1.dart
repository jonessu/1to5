import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class home extends StatefulWidget {
  home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  int _selectedIndex = 0;
  bool home_button = true, offers_button = false, setting_button = false;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
    ),
    Text(
      'offers',
    ),
    Text(
      'settings',
    ),
  ];
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
                child: bottom_navigation_btn(
                  text_btn: 'home',
                  icon_btn: Icons.home,
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
                child: bottom_navigation_btn(
                  text_btn: 'offers',
                  icon_btn: Icons.card_giftcard,
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
                child: bottom_navigation_btn(
                  text_btn: 'Settings',
                  icon_btn: Icons.settings,
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

class bottom_navigation_btn extends StatelessWidget {
  const bottom_navigation_btn({
    Key? key,
    required this.text_btn,
    required this.icon_btn,
    required this.select_value,
  }) : super(key: key);

  final String text_btn;
  final IconData icon_btn;
  final bool select_value;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 105,
      height: 28,
      decoration: BoxDecoration(
        color: select_value ? Color(0xff0066cc) : Color(0xfff5f5f7),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon_btn,
            color: select_value ? Colors.white : Color(0xff1c1d22),
            size: 14,
          ),
          SizedBox(width: 5),
          Text(
            text_btn,
            style: TextStyle(
                color: select_value ? Colors.white : Color(0xff1c1d22),
                fontSize: 10),
          ),
        ],
      ),
    );
  }
}
