import 'package:digitatravelmoney/screen/currency_manage_page_screen/bloc/currencymanage_bloc.dart';
import 'package:digitatravelmoney/utils/color_resource.dart';
import 'package:digitatravelmoney/utils/fontFamily_resource.dart';
import 'package:digitatravelmoney/utils/image_resource.dart';
import 'package:digitatravelmoney/utils/string_resources.dart';
import 'package:flutter/material.dart';
import 'package:digitatravelmoney/Widget/text_widget.dart';
import 'package:digitatravelmoney/Widget/transaction_card.dart';
import 'package:digitatravelmoney/Constant/transaction_list_constant.dart';
import 'package:digitatravelmoney/Widget/prepaid_travel_card_widget.dart';
import 'package:digitatravelmoney/screen/exchange_page_screen/exchange_page_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class currencymanagepageScreen extends StatefulWidget {
  const currencymanagepageScreen({Key? key}) : super(key: key);

  @override
  _currencymanagepageScreenState createState() =>
      _currencymanagepageScreenState();
}

class _currencymanagepageScreenState extends State<currencymanagepageScreen> {
  late CurrencymanageBloc _currencymanageBloc;

  @override
  void initState() {
    super.initState();
    _currencymanageBloc = CurrencymanageBloc()
      ..add(CurrencymanageInitialEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResource.colorf5f5f7,
      body: BlocListener<CurrencymanageBloc, CurrencymanageState>(
        bloc: _currencymanageBloc,
        listener: (context, state) {
          // TODO: implement listener
        },
        child: BlocBuilder<CurrencymanageBloc, CurrencymanageState>(
          bloc: _currencymanageBloc,
          builder: (context, state) {
            if (state is CurrencymanageLoadingState) {
              return Scaffold(
                  body: Center(
                child: CircularProgressIndicator(),
              ));
            } else if (state is CurrencymanageLoadedState) {
              return SingleChildScrollView(
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
                        Column(
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
                                  text: StringResource.USD_Balance,
                                  font_size: 12,
                                  font_family:
                                      FontFamilyResource.PoppinsRegular,
                                  colour: ColorResource.colorwhite,
                                ),
                                Text("")
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
                                    height: 45,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: ColorResource.colorf5f5f7,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10.0),
                                        topRight: Radius.circular(10.0),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Row(
                                        children: [
                                          Text_Widget(
                                            text: "YESBANK - 2134",
                                            font_size: 10,
                                            colour: ColorResource.color1c1d22,
                                            font_family: FontFamilyResource
                                                .PoppinsMedium,
                                          ),
                                          Spacer(),
                                          Container(
                                            width: 31,
                                            height: 10,
                                            child: Image.asset(
                                              ImageResource.visa,
                                              width: 31,
                                              height: 10,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Container(
                                      height: 162,
                                      width: double.infinity,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    SizedBox(height: 30),
                                                    Image.asset(
                                                      ImageResource.USA,
                                                    ),
                                                    SizedBox(height: 10),
                                                    Text_Widget(
                                                      text: StringResource
                                                          .CURRENT_BALANCE,
                                                      font_size: 10,
                                                      colour: ColorResource
                                                          .color9d9da9,
                                                      font_family:
                                                          FontFamilyResource
                                                              .PoppinsMedium,
                                                    ),
                                                    SizedBox(height: 5),
                                                    Text_Widget(
                                                      text: "\$599.91",
                                                      font_size: 16,
                                                      colour: ColorResource
                                                          .color1c1d22,
                                                      font_family:
                                                          FontFamilyResource
                                                              .PoppinsMedium,
                                                    ),
                                                    SizedBox(height: 30),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    thickness: 1,
                                    color: ColorResource.colorb9b9bf,
                                  ),
                                  Container(
                                    child: Padding(
                                        padding: EdgeInsets.all(20.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            exchangepageScreen()));
                                              },
                                              child: Container(
                                                width: 147,
                                                height: 36,
                                                decoration: BoxDecoration(
                                                  color:
                                                      ColorResource.color0066cc,
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                ),
                                                child: Center(
                                                  child: Text_Widget(
                                                    text: StringResource
                                                        .exchange_money,
                                                    font_size: 12,
                                                    colour: ColorResource
                                                        .colorwhite,
                                                    font_family:
                                                        FontFamilyResource
                                                            .PoppinsSemiBold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                // Navigator.push(
                                                //     context,
                                                //     MaterialPageRoute(
                                                //         builder: (context) => pinverificationScreen()));
                                              },
                                              child: Container(
                                                width: 121,
                                                height: 36,
                                                decoration: BoxDecoration(
                                                  color:
                                                      ColorResource.color616267,
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                ),
                                                child: Center(
                                                  child: Text_Widget(
                                                    text: StringResource
                                                        .card_settings,
                                                    font_size: 12,
                                                    colour: ColorResource
                                                        .colorwhite,
                                                    font_family:
                                                        FontFamilyResource
                                                            .PoppinsSemiBold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text_Widget(
                                  text: StringResource.RecentTransactions,
                                  font_size: 12,
                                  font_family:
                                      FontFamilyResource.PoppinsRegular,
                                  colour: ColorResource.color616267,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //       builder: (context) =>
                                    //           transactionspageScreen()),
                                    // );
                                  },
                                  child: Row(
                                    children: [
                                      Text_Widget(
                                        text: StringResource.view_all,
                                        font_size: 12,
                                        font_family:
                                            FontFamilyResource.PoppinsMedium,
                                        colour: ColorResource.color1c1d22,
                                      ),
                                      SizedBox(width: 10),
                                      Image.asset(
                                        ImageResource.arrowcopy,
                                        width: 6,
                                        height: 11,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //       builder: (context) =>
                                //           currencymanagepageScreen()),
                                // );
                              },
                              child: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return transaction_card(
                                    title: trans_list[index]
                                        [StringResource.title],
                                    subTitle: trans_list[index]
                                        [StringResource.subtitle],
                                    imgPath: trans_list[index]
                                        [StringResource.img_path],
                                    priceText: trans_list[index]
                                        [StringResource.price_text],
                                  );
                                },
                                itemCount: 5,
                              ),
                            ),
                            SizedBox(height: 10),
                          ],
                        ),
                      ],
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
      ),
    );
  }
}
