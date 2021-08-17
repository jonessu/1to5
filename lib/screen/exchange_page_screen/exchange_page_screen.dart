import 'package:digitatravelmoney/screen/exchange_page_screen/bloc/exchangepage_bloc.dart';
import 'package:digitatravelmoney/utils/color_resource.dart';
import 'package:digitatravelmoney/utils/fontFamily_resource.dart';
import 'package:digitatravelmoney/utils/image_resource.dart';
import 'package:digitatravelmoney/utils/string_resources.dart';
import 'package:flutter/material.dart';
import 'package:digitatravelmoney/Widget/text_widget.dart';
import 'package:digitatravelmoney/screen/exchane_conformation_screen/exchange_conformation_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

String exchange_from_value = "USD";
List exchange_from_list = ["USD"];
String exchange_to_value = "EUR";
List exchange_to_list = ["EUR"];

class exchangepageScreen extends StatefulWidget {
  const exchangepageScreen({Key? key}) : super(key: key);

  @override
  _exchangepageScreenState createState() => _exchangepageScreenState();
}

class _exchangepageScreenState extends State<exchangepageScreen> {
  late ExchangepageBloc _exchangepageBloc;
  void initState() {
    super.initState();
    _exchangepageBloc = ExchangepageBloc()..add(ExchangepageInitialEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ExchangepageBloc, ExchangepageState>(
      bloc: _exchangepageBloc,
      listener: (context, state) {
        // TODO: implement listener
      },
      child: BlocBuilder<ExchangepageBloc, ExchangepageState>(
        bloc: _exchangepageBloc,
        builder: (context, state) {
          if (state is ExchangepageLoadingState) {
            return Scaffold(
                body: Center(
              child: CircularProgressIndicator(),
            ));
          } else if (state is ExchangepageLoadedState) {
            return Scaffold(
              backgroundColor: ColorResource.colorf5f5f7,
              body: SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(ImageResource.rectange),
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(
                                FontAwesomeIcons.chevronLeft,
                                color: ColorResource.colorwhite,
                                size: 16,
                              ),
                            ),
                            Text_Widget(
                              text: StringResource.Exchange_USD,
                              font_size: 12,
                              font_family: FontFamilyResource.PoppinsRegular,
                              colour: ColorResource.colorwhite,
                            ),
                            Text("")
                          ],
                        ),
                        SizedBox(height: 15),
                        Container(
                          height: 356,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: ColorResource.colorwhite,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 20.0,
                                  left: 20.0,
                                  right: 20.0,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text_Widget(
                                      text: StringResource.exchange_money,
                                      font_size: 16,
                                      colour: ColorResource.color1c1d22,
                                      font_family:
                                          FontFamilyResource.PoppinsSemiBold,
                                    ),
                                    SizedBox(height: 5),
                                    Text_Widget(
                                      text:
                                          "Find out real-timeExchange rates &\nExchange between your balances.",
                                      font_size: 10,
                                      colour: ColorResource.color9d9da9,
                                      font_family:
                                          FontFamilyResource.PoppinsMedium,
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                thickness: 1,
                                color: ColorResource.colorb9b9bf,
                              ),
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 90,
                                            height: 43,
                                            padding: EdgeInsets.all(15),
                                            child: DropdownButton<String>(
                                              value: exchange_from_value,
                                              dropdownColor:
                                                  ColorResource.color000000,
                                              isExpanded: true,
                                              icon: Container(
                                                width: 14,
                                                height: 8,
                                                child:
                                                    Icon(Icons.arrow_downward),
                                              ),
                                              iconSize: 14,
                                              elevation: 16,
                                              style: TextStyle(
                                                color:
                                                    ColorResource.color000000,
                                                fontFamily: FontFamilyResource
                                                    .PoppinsLight,
                                              ),
                                              underline: SizedBox(),
                                              onChanged: (String? newValue) {
                                                // setState(() {
                                                //   exchange_from_value = newValue!;
                                                // });
                                              },
                                              items: exchange_from_list
                                                  .map((valueItem) {
                                                return DropdownMenuItem<String>(
                                                  value: valueItem,
                                                  child: Text(valueItem),
                                                );
                                              }).toList(),
                                            ),
                                          ),
                                          Text_Widget(
                                            text: "Balance: Exchangepage,319",
                                            font_size: 10,
                                            colour: ColorResource.color9d9da9,
                                            font_family: FontFamilyResource
                                                .PoppinsMedium,
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 20.0),
                                        child: Text_Widget(
                                          text: "1",
                                          font_size: 30,
                                          colour: ColorResource.color1c1d22,
                                          font_family:
                                              FontFamilyResource.PoppinsLight,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Divider(
                                          indent: 20,
                                          color: ColorResource.colorb9b9bf,
                                          thickness: 1,
                                        ),
                                      ),
                                      Container(
                                        height: 25,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          color: ColorResource.colorf5f5f7,
                                          borderRadius:
                                              BorderRadius.circular(24.5),
                                        ),
                                        child: Center(
                                          child: Text_Widget(
                                            text: "1\$ = €0.91",
                                            font_size: 10,
                                            colour: ColorResource.color616267,
                                            font_family: FontFamilyResource
                                                .PoppinsSemiBold,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Divider(
                                          endIndent: 20,
                                          color: ColorResource.colorb9b9bf,
                                          thickness: 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Container(
                                            width: 90,
                                            height: 43,
                                            padding: EdgeInsets.all(15),
                                            child: DropdownButton<String>(
                                              value: exchange_to_value,
                                              dropdownColor:
                                                  ColorResource.color000000,
                                              isExpanded: true,
                                              icon: Container(
                                                width: 14,
                                                height: 8,
                                                child:
                                                    Icon(Icons.arrow_downward),
                                              ),
                                              iconSize: 14,
                                              elevation: 16,
                                              style: TextStyle(
                                                color:
                                                    ColorResource.color000000,
                                                fontFamily: FontFamilyResource
                                                    .PoppinsLight,
                                              ),
                                              underline: SizedBox(),
                                              onChanged: (String? newValue) {
                                                // setState(() {
                                                //   exchange_to_value = newValue!;
                                                // });
                                              },
                                              items: exchange_to_list
                                                  .map((valueItem) {
                                                return DropdownMenuItem<String>(
                                                  value: valueItem,
                                                  child: Text(valueItem),
                                                );
                                              }).toList(),
                                            ),
                                          ),
                                          Text_Widget(
                                            text: "Balance: €20",
                                            font_size: 10,
                                            colour: ColorResource.color9d9da9,
                                            font_family: FontFamilyResource
                                                .PoppinsMedium,
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 20.0),
                                        child: Text_Widget(
                                          text: "0.91",
                                          font_size: 30,
                                          colour: ColorResource.color1c1d22,
                                          font_family:
                                              FontFamilyResource.PoppinsLight,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Divider(
                                thickness: 1,
                                color: ColorResource.colorb9b9bf,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 0, 20, 20),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                exchangeconformationScreen()));
                                  },
                                  child: Container(
                                    width: 130,
                                    height: 36,
                                    decoration: BoxDecoration(
                                      color: ColorResource.color0066cc,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Center(
                                      child: Text_Widget(
                                        text: StringResource.exchange_now,
                                        font_size: 12,
                                        colour: ColorResource.colorwhite,
                                        font_family:
                                            FontFamilyResource.PoppinsSemiBold,
                                      ),
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
