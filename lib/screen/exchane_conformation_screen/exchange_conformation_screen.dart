import 'package:digitatravelmoney/screen/exchane_conformation_screen/bloc/exchangeconform_bloc.dart';
import 'package:digitatravelmoney/utils/color_resource.dart';
import 'package:digitatravelmoney/utils/fontFamily_resource.dart';
import 'package:digitatravelmoney/utils/image_resource.dart';
import 'package:digitatravelmoney/utils/string_resources.dart';
import 'package:flutter/material.dart';
import 'package:digitatravelmoney/Widget/text_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class exchangeconformationScreen extends StatefulWidget {
  const exchangeconformationScreen({Key? key}) : super(key: key);

  @override
  _exchangeconformationScreenState createState() =>
      _exchangeconformationScreenState();
}

class _exchangeconformationScreenState
    extends State<exchangeconformationScreen> {
  late ExchangeconformBloc _exchangeconformBloc;

  @override
  void initState() {
    super.initState();
    _exchangeconformBloc = ExchangeconformBloc()
      ..add(ExchangeconformInitialEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResource.colorf5f5f7,
      body: BlocListener<ExchangeconformBloc, ExchangeconformState>(
        bloc: _exchangeconformBloc,
        listener: (context, state) {
          // TODO: implement listener
        },
        child: BlocBuilder<ExchangeconformBloc, ExchangeconformState>(
          bloc: _exchangeconformBloc,
          builder: (context, state) {
            if (state is ExchangeconformLoadingState) {
              return Scaffold(
                  body: Center(
                child: CircularProgressIndicator(),
              ));
            } else if (state is ExchangeconformLoadedState) {
              return SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(ImageResource.rectange),
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 35),
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
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text_Widget(
                                          text: StringResource.Confirm_Exchange,
                                          font_size: 16,
                                          colour: ColorResource.color1c1d22,
                                          font_family: FontFamilyResource
                                              .PoppinsSemiBold,
                                        ),
                                        Text_Widget(
                                          text: StringResource.EDIT,
                                          font_size: 13,
                                          colour: ColorResource.color1a1f71,
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
                                  Container(
                                    height: 232,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text_Widget(
                                          text: "",
                                          font_size: 30,
                                          colour: ColorResource.color000000,
                                          font_family:
                                              FontFamilyResource.PoppinsLight,
                                        ),
                                        SizedBox(height: 5),
                                        Text_Widget(
                                          text: "Balance: Exchangeconform,319",
                                          font_size: 10,
                                          colour: ColorResource.color9d9da9,
                                          font_family:
                                              FontFamilyResource.PoppinsMedium,
                                        ),
                                        SizedBox(height: 30),
                                        SizedBox(height: 20),
                                        Text_Widget(
                                          text: "€361.44",
                                          font_size: 30,
                                          colour: ColorResource.color000000,
                                          font_family:
                                              FontFamilyResource.PoppinsLight,
                                        ),
                                        SizedBox(height: 5),
                                        Text_Widget(
                                          text: "Balance: €20",
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
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text_Widget(
                                              text: StringResource.From,
                                              font_size: 13,
                                              colour: ColorResource.color9d9da9,
                                              font_family: FontFamilyResource
                                                  .PoppinsMedium,
                                            ),
                                            Spacer(),
                                            Text_Widget(
                                              text: "",
                                              font_size: 13,
                                              colour: ColorResource.color1c1d22,
                                              font_family: FontFamilyResource
                                                  .PoppinsMedium,
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 25),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text_Widget(
                                              text: StringResource.To,
                                              font_size: 13,
                                              colour: ColorResource.color9d9da9,
                                              font_family: FontFamilyResource
                                                  .PoppinsMedium,
                                            ),
                                            Spacer(),
                                            Text_Widget(
                                              text: "€EUR",
                                              font_size: 13,
                                              colour: ColorResource.color1c1d22,
                                              font_family: FontFamilyResource
                                                  .PoppinsMedium,
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 25),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text_Widget(
                                              text:
                                                  StringResource.Exchange_Rate,
                                              font_size: 13,
                                              colour: ColorResource.color9d9da9,
                                              font_family: FontFamilyResource
                                                  .PoppinsMedium,
                                            ),
                                            Spacer(),
                                            Text_Widget(
                                              text: "1 USD = 0.9 EUR",
                                              font_size: 13,
                                              colour: ColorResource.color1c1d22,
                                              font_family: FontFamilyResource
                                                  .PoppinsMedium,
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 25),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text_Widget(
                                              text: StringResource.Fee,
                                              font_size: 13,
                                              colour: ColorResource.color9d9da9,
                                              font_family: FontFamilyResource
                                                  .PoppinsMedium,
                                            ),
                                            Spacer(),
                                            Text_Widget(
                                              text: StringResource.Applied,
                                              font_size: 13,
                                              colour: ColorResource.color1c1d22,
                                              font_family: FontFamilyResource
                                                  .PoppinsMedium,
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 2),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Text_Widget(
                                            text: StringResource.Click_to_see,
                                            font_size: 10,
                                            colour: ColorResource.color9d9da9,
                                            font_family: FontFamilyResource
                                                .PoppinsRegular,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 30),
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
                                    text: StringResource.exchange_now,
                                    font_size: 12,
                                    colour: ColorResource.colorwhite,
                                    font_family:
                                        FontFamilyResource.PoppinsSemiBold,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Text_Widget(
                              text: StringResource.Cancel,
                              font_size: 12,
                              colour: ColorResource.color616267,
                              font_family: FontFamilyResource.PoppinsSemiBold,
                            ),
                          ],
                        ),
                      ),
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
      ),
    );
  }
}
