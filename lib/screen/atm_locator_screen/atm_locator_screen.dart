import 'dart:async';
import 'package:digitatravelmoney/screen/atm_locator_screen/bloc/atmlocation_bloc.dart';
import 'package:digitatravelmoney/utils/color_resource.dart';
import 'package:digitatravelmoney/utils/fontFamily_resource.dart';
import 'package:digitatravelmoney/utils/image_resource.dart';
import 'package:digitatravelmoney/utils/string_resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  late AtmlocationBloc _atmlocationBloc;

  final List _pages = [
    {
      StringResource.title: StringResource.SortBy,
      StringResource.widget: sortbyScreen()
    },
    {
      StringResource.title: StringResource.Filters,
      StringResource.widget: filterScreen()
    }
  ];

  late double latitude = 13.0827;
  late double longtitude = 80.2707;

  @override
  void initState() {
    super.initState();
    _atmlocationBloc = AtmlocationBloc()..add(AtmLocationInitial());
    //getCurrentLocation();
  }

  // void getCurrentLocation() async {
  //   try {
  //     Position position = await Geolocator.getCurrentPosition(
  //         desiredAccuracy: LocationAccuracy.low);
  //     setState(() {
  //       latitude = position.latitude;
  //       longitude = position.longitude;
  //     });
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return BlocListener(
      bloc: _atmlocationBloc,
      listener: (context, state) {
        if (state is GetCurrentLocationSuccess) {
          setState(() {
            latitude = _atmlocationBloc.latitude;
            longtitude = _atmlocationBloc.longtitude;
          });
        } else {
          CircularProgressIndicator();
        }
      },
      child: BlocBuilder(
        bloc: _atmlocationBloc,
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              elevation: 0.0,
              backgroundColor: ColorResource.color1c1d22,
              title: Text(
                StringResource.Atm_Locator,
                style: TextStyle(
                  color: ColorResource.colorwhite,
                  fontSize: 12,
                  fontFamily: FontFamilyResource.PoppinsRegular,
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
        },
      ),
    );
  }

  Widget _buildbanner() {
    return Container(
      width: double.infinity,
      height: 58,
      color: ColorResource.color1c1d22,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Text_Widget(
              text: StringResource.showing_ATM_nearby,
              font_size: 12,
              colour: ColorResource.colorwhite,
              font_family: FontFamilyResource.PoppinsRegular,
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  backgroundColor: ColorResource.colortransparent,
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
                                color: ColorResource.colorwhite,
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
                                      backgroundColor: ColorResource.colorwhite,
                                      elevation: 0.0,
                                      leadingWidth: 0.0,
                                      title: Row(
                                        children: [
                                          Container(
                                            height: 20,
                                            width: 80,
                                            child: Text_Widget(
                                              text:
                                                  StringResource.sortandfilter,
                                              font_size: 16,
                                              font_family: FontFamilyResource
                                                  .PoppinsBold,
                                              colour: ColorResource.color1c1d22,
                                            ),
                                          ),
                                          SizedBox(width: 5),
                                          Image.asset(
                                            ImageResource.sort,
                                            width: 16,
                                            height: 10,
                                          ),
                                        ],
                                      ),
                                      actions: [
                                        Center(
                                          child: Text_Widget(
                                            text: StringResource.RESET,
                                            font_size: 13,
                                            font_family: FontFamilyResource
                                                .PoppinsMedium,
                                            colour: ColorResource.color1a1f71,
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
                                              indicatorColor:
                                                  ColorResource.color0857ab,
                                              labelColor:
                                                  ColorResource.colorblack,
                                              unselectedLabelColor:
                                                  ColorResource.colorgrey,
                                              tabs: _pages
                                                  .map((page) => Tab(
                                                      text: page[StringResource
                                                          .title]))
                                                  .toList()),
                                        ),
                                      ),
                                    ),
                                    body: TabBarView(
                                        children: _pages
                                            .map((page) => Tab(
                                                child: page[
                                                    StringResource.widget]))
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
                    text: StringResource.sortandfilter,
                    font_size: 14,
                    font_family: FontFamilyResource.PoppinsBold,
                    colour: ColorResource.colorwhite,
                  ),
                  SizedBox(width: 10),
                  Image.asset(
                    ImageResource.sort,
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
                          colour: ColorResource.color1c1d22,
                          font_family: FontFamilyResource.PoppinsSemiBold,
                        ),
                        SizedBox(height: 5),
                        Text_Widget(
                          text: "34, 23rd Street - 120m",
                          font_size: 10,
                          colour: ColorResource.color9d9da9,
                          font_family: FontFamilyResource.PoppinsMedium,
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
                              color: ColorResource.color0066cc,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.directions,
                                    color: ColorResource.colorwhite,
                                  ),
                                  SizedBox(width: 5),
                                  Text_Widget(
                                    text: StringResource.Directions,
                                    font_size: 12,
                                    colour: ColorResource.colorwhite,
                                    font_family:
                                        FontFamilyResource.PoppinsSemiBold,
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
            CameraPosition(target: LatLng(latitude, longtitude), zoom: 15),
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
              text: StringResource.Relevance,
              font_size: 14,
              colour: ColorResource.color1c1d22,
              font_family: FontFamilyResource.PoppinsRegular,
            ),
            trailing: Icon(
              Icons.check,
              color: ColorResource.color0857ab,
            ),
          ),
          ListTile(
            leading: Text_Widget(
              text: StringResource.Distance,
              font_size: 14,
              colour: ColorResource.color1c1d22,
              font_family: FontFamilyResource.PoppinsRegular,
            ),
          ),
          ListTile(
            leading: Text_Widget(
              text: StringResource.Ratings,
              font_size: 14,
              colour: ColorResource.color1c1d22,
              font_family: FontFamilyResource.PoppinsRegular,
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
                color: ColorResource.color0066cc,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text_Widget(
                  text: StringResource.Apply,
                  font_size: 12,
                  colour: ColorResource.colorwhite,
                  font_family: FontFamilyResource.PoppinsSemiBold,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Text_Widget(
              text: StringResource.Cancel,
              font_size: 12,
              colour: ColorResource.color616267,
              font_family: FontFamilyResource.PoppinsSemiBold,
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
              text: StringResource.Relevance,
              font_size: 14,
              colour: ColorResource.color1c1d22,
              font_family: FontFamilyResource.PoppinsRegular,
            ),
            trailing: Checkbox(
              activeColor: ColorResource.color0857ab,
              value: _value,
              onChanged: (newvalue) {},
            ),
          ),
          ListTile(
            leading: Text_Widget(
              text: StringResource.Distance,
              font_size: 14,
              colour: ColorResource.color1c1d22,
              font_family: FontFamilyResource.PoppinsRegular,
            ),
            trailing: Checkbox(
              activeColor: ColorResource.color0857ab,
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
                color: ColorResource.color0066cc,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text_Widget(
                  text: StringResource.Apply,
                  font_size: 12,
                  colour: ColorResource.colorwhite,
                  font_family: FontFamilyResource.PoppinsSemiBold,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text_Widget(
                text: StringResource.Cancel,
                font_size: 12,
                colour: ColorResource.color616267,
                font_family: FontFamilyResource.PoppinsSemiBold,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
