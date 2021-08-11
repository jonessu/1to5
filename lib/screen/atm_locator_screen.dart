import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:digitatravelmoney/Widget/text_widget.dart';
import 'package:geolocator/geolocator.dart';

class atmlocattorScreen extends StatefulWidget {
  @override
  atmlocattorScreenState createState() => atmlocattorScreenState();
}

class atmlocattorScreenState extends State<atmlocattorScreen> {
  Completer<GoogleMapController> _controller = Completer();

  final List _pages = [
    {'title': 'Sort By', 'widget': sortbyScreen()},
    {'title': 'Filters', 'widget': filterScreen()}
  ];

  double latitude = 13.0827;
  double longitude = 80.2707;

  @override
  void initState() {
    super.initState();
    getCurrentLocation();
  }

  void getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      setState(() {
        latitude = position.latitude;
        longitude = position.longitude;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Color(0xff1c1d22),
        title: Text(
          "ATM Locator",
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontFamily: 'Poppins-Regular',
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            _buildbanner(),
            Expanded(
              child: Stack(
                children: <Widget>[
                  _buildGoogleMap(context),
                  _buildContainer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildbanner() {
    return Container(
      width: double.infinity,
      height: 58,
      color: Color(0xff1c1d22),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Text_Widget(
              text: "showing 20 ATM’s nearby",
              font_size: 12,
              colour: Colors.white,
              font_family: 'Poppins-Regular',
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  backgroundColor: Colors.transparent,
                  isScrollControlled: true,
                  builder: (context) => Wrap(
                    children: [
                      Padding(
                        padding: MediaQuery.of(context).viewInsets,
                        child: StatefulBuilder(
                          builder:
                              (BuildContext context, StateSetter setState) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              height: 400,
                              decoration: BoxDecoration(
                                // color: colorPrimary,
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(18.0),
                                  topRight: const Radius.circular(18.0),
                                ),
                              ),
                              child: DefaultTabController(
                                length: _pages.length,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 12),
                                  child: Scaffold(
                                    appBar: AppBar(
                                      backgroundColor: Colors.white,
                                      elevation: 0.0,
                                      leadingWidth: 0.0,
                                      title: Row(
                                        children: [
                                          Container(
                                            height: 20,
                                            width: 80,
                                            child: Text_Widget(
                                              text: "sort & filter",
                                              font_size: 16,
                                              font_family: 'Poppins-Bold',
                                              colour: Color(0xff1c1d22),
                                            ),
                                          ),
                                          SizedBox(width: 5),
                                          Image.asset(
                                            'images/home/tab_1/sort.png',
                                            width: 16,
                                            height: 10,
                                          ),
                                        ],
                                      ),
                                      actions: [
                                        Center(
                                          child: Text_Widget(
                                            text: "RESET",
                                            font_size: 13,
                                            font_family: 'Poppins-Medium',
                                            colour: Color(0xff1a1f71),
                                          ),
                                        ),
                                      ],
                                      bottom: PreferredSize(
                                        preferredSize:
                                            Size.fromHeight(kToolbarHeight),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: TabBar(
                                              isScrollable: true,
                                              indicatorColor: Color(0xff0857ab),
                                              labelColor: Colors.black,
                                              unselectedLabelColor: Colors.grey,
                                              tabs: _pages
                                                  .map((page) =>
                                                      Tab(text: page['title']))
                                                  .toList()),
                                        ),
                                      ),
                                    ),
                                    body: TabBarView(
                                        children: _pages
                                            .map((page) =>
                                                Tab(child: page['widget']))
                                            .toList()),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                );
              },
              child: Row(
                children: [
                  Text_Widget(
                    text: "sort & filter",
                    font_size: 14,
                    font_family: 'Poppins-Bold',
                    colour: Colors.white,
                  ),
                  SizedBox(width: 10),
                  Image.asset(
                    'images/home/tab_1/sort.png',
                    width: 16,
                    height: 10,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildContainer() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SizedBox(
          width: double.infinity,
          height: 128,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) => Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Container(
                  width: 315,
                  height: 128,
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text_Widget(
                          text: "ICICI Bank ATM",
                          font_size: 16,
                          colour: Color(0xff1c1d22),
                          font_family: "Poppins-SemiBold",
                        ),
                        SizedBox(height: 5),
                        Text_Widget(
                          text: "34, 23rd Street - 120m",
                          font_size: 10,
                          colour: Color(0xff9d9da9),
                          font_family: "Poppins-Medium",
                        ),
                        SizedBox(height: 5),
                        GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => pinverificationScreen()));
                          },
                          child: Container(
                            width: 126,
                            height: 36,
                            decoration: BoxDecoration(
                              color: Color(0xff0066cc),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.directions,
                                    color: Colors.white,
                                  ),
                                  SizedBox(width: 5),
                                  Text_Widget(
                                    text: "Directions",
                                    font_size: 12,
                                    colour: Colors.white,
                                    font_family: 'Poppins-SemiBold',
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildGoogleMap(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition:
            CameraPosition(target: LatLng(latitude, longitude), zoom: 15),
      ),
    );
  }
}

class sortbyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        children: [
          ListTile(
            leading: Text_Widget(
              text: "Relevance",
              font_size: 14,
              colour: Color(0xff1c1d22),
              font_family: 'Poppins-Regular',
            ),
            trailing: Icon(
              Icons.check,
              color: Color(0xff0857ab),
            ),
          ),
          ListTile(
            leading: Text_Widget(
              text: "Distance",
              font_size: 14,
              colour: Color(0xff1c1d22),
              font_family: 'Poppins-Regular',
            ),
          ),
          ListTile(
            leading: Text_Widget(
              text: "Ratings",
              font_size: 14,
              colour: Color(0xff1c1d22),
              font_family: 'Poppins-Regular',
            ),
          ),
          SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => pinverificationScreen()));
            },
            child: Container(
              width: double.infinity,
              height: 42,
              decoration: BoxDecoration(
                color: Color(0xff0066cc),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text_Widget(
                  text: "Apply",
                  font_size: 12,
                  colour: Colors.white,
                  font_family: 'Poppins-SemiBold',
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Text_Widget(
              text: "Cancel",
              font_size: 12,
              colour: Color(0xff616267),
              font_family: 'Poppins-SemiBold',
            ),
          ),
        ],
      ),
    );
  }
}

class filterScreen extends StatelessWidget {
  bool _value = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        children: [
          ListTile(
            leading: Text_Widget(
              text: "Relevance",
              font_size: 14,
              colour: Color(0xff1c1d22),
              font_family: 'Poppins-Regular',
            ),
            trailing: Checkbox(
              activeColor: Color(0xff0857ab),
              value: _value,
              onChanged: (newvalue) {},
            ),
          ),
          ListTile(
            leading: Text_Widget(
              text: "Distance",
              font_size: 14,
              colour: Color(0xff1c1d22),
              font_family: 'Poppins-Regular',
            ),
            trailing: Checkbox(
              activeColor: Color(0xff0857ab),
              value: _value,
              onChanged: (newvalue) {},
            ),
          ),
          SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => pinverificationScreen()));
            },
            child: Container(
              width: double.infinity,
              height: 42,
              decoration: BoxDecoration(
                color: Color(0xff0066cc),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text_Widget(
                  text: "Apply",
                  font_size: 12,
                  colour: Colors.white,
                  font_family: 'Poppins-SemiBold',
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text_Widget(
                text: "Cancell",
                font_size: 12,
                colour: Color(0xff616267),
                font_family: 'Poppins-SemiBold',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
