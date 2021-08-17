import 'package:digitatravelmoney/screen/expense.dart/bloc/expense_bloc.dart';
import 'package:digitatravelmoney/utils/color_resource.dart';
import 'package:digitatravelmoney/utils/fontFamily_resource.dart';
import 'package:digitatravelmoney/utils/image_resource.dart';
import 'package:digitatravelmoney/utils/string_resources.dart';
import 'package:flutter/material.dart';
import 'package:digitatravelmoney/Widget/text_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class expenseScreen extends StatefulWidget {
  const expenseScreen({Key? key}) : super(key: key);

  @override
  _expenseScreenState createState() => _expenseScreenState();
}

class _expenseScreenState extends State<expenseScreen> {
  late ExpenseBloc _expenseBloc;
  late var text;
  @override
  void initState() {
    super.initState();
    _expenseBloc = ExpenseBloc()..add(ExpenseInitialEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ExpenseBloc, ExpenseState>(
      bloc: _expenseBloc,
      listener: (context, state) {
        // TODO: implement listener
      },
      child: BlocBuilder<ExpenseBloc, ExpenseState>(
        bloc: _expenseBloc,
        builder: (context, state) {
          if (state is ExpenseLoadingState) {
            return Scaffold(
                body: Center(
              child: CircularProgressIndicator(),
            ));
          } else if (state is ExpenseLoadedState) {
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
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 9,
                                height: 16,
                                child: Icon(
                                  FontAwesomeIcons.chevronLeft,
                                  color: Colors.white,
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Text_Widget(
                                  text: StringResource.transactiondetails,
                                  font_size: 12,
                                  colour: Colors.white,
                                  font_family:
                                      FontFamilyResource.PoppinsRegular,
                                ),
                              ),
                              Container(
                                width: 20,
                                height: 4,
                                child: Icon(
                                  Icons.more_horiz,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: 14,
                                                height: 14,
                                                child: Image.asset(
                                                    ImageResource.success),
                                              ),
                                              SizedBox(width: 5),
                                              Text_Widget(
                                                text: StringResource
                                                    .transactionsucessful,
                                                font_size: 12,
                                                colour:
                                                    ColorResource.color1c1d22,
                                                font_family: FontFamilyResource
                                                    .PoppinsMedium,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Divider(
                                            color: ColorResource.colorb9b9bf,
                                            thickness: 1),
                                        SizedBox(height: 10),
                                        Container(
                                          width: 50,
                                          height: 50,
                                          child: Image.asset(
                                              ImageResource.exchange),
                                        ),
                                        SizedBox(height: 15),
                                        Text_Widget(
                                          text: StringResource.ExchangefromINR,
                                          font_size: 16,
                                          colour: ColorResource.color1c1d22,
                                          font_family:
                                              FontFamilyResource.PoppinsRegular,
                                        ),
                                        SizedBox(height: 10),
                                        Divider(
                                            color: ColorResource.colorb9b9bf,
                                            thickness: 1),
                                        Column(
                                          children: [
                                            ListTile(
                                              leading: Text_Widget(
                                                text: StringResource.Amount,
                                                font_size: 13,
                                                colour:
                                                    ColorResource.color9d9da9,
                                                font_family: FontFamilyResource
                                                    .PoppinsMedium,
                                              ),
                                              trailing: Text_Widget(
                                                text: ".99",
                                                font_size: 13,
                                                colour:
                                                    ColorResource.color1c1d22,
                                                font_family: FontFamilyResource
                                                    .PoppinsMedium,
                                              ),
                                            ),
                                            ListTile(
                                              leading: Text_Widget(
                                                text: StringResource.Date,
                                                font_size: 13,
                                                colour:
                                                    ColorResource.color9d9da9,
                                                font_family: FontFamilyResource
                                                    .PoppinsMedium,
                                              ),
                                              trailing: Text_Widget(
                                                text: "Sep 2, 2019",
                                                font_size: 13,
                                                colour:
                                                    ColorResource.color1c1d22,
                                                font_family: FontFamilyResource
                                                    .PoppinsMedium,
                                              ),
                                            ),
                                            ListTile(
                                              leading: Text_Widget(
                                                text: StringResource.Time,
                                                font_size: 13,
                                                colour:
                                                    ColorResource.color9d9da9,
                                                font_family: FontFamilyResource
                                                    .PoppinsMedium,
                                              ),
                                              trailing: Text_Widget(
                                                text: "06:49 PM",
                                                font_size: 13,
                                                colour:
                                                    ColorResource.color1c1d22,
                                                font_family: FontFamilyResource
                                                    .PoppinsMedium,
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      height: 35,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: ColorResource.color1464b0,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10.0),
                                          topRight: Radius.circular(10.0),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 15.0,
                                          vertical: 10.0,
                                        ),
                                        child: Row(
                                          children: [
                                            Text_Widget(
                                              text: StringResource
                                                  .PREPAID_TRAVEL_CARD,
                                              font_size: 10,
                                              colour: Colors.white,
                                              font_family: FontFamilyResource
                                                  .PoppinsMedium,
                                            ),
                                            Spacer(),
                                            Text_Widget(
                                              text: "",
                                              font_size: 10,
                                              colour: Colors.white,
                                              font_family: FontFamilyResource
                                                  .PoppinsMedium,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15.0),
                                      child: Container(
                                        width: double.infinity,
                                        height: 146,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              child: Center(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text_Widget(
                                                      text:
                                                          "4829 XXXX XXXX 0124",
                                                      font_size: 16,
                                                      colour: ColorResource
                                                          .color616267,
                                                      font_family:
                                                          FontFamilyResource
                                                              .PoppinsMedium,
                                                    ),
                                                    Spacer(),
                                                    Container(
                                                      width: 49,
                                                      height: 16,
                                                      child: Image.asset(
                                                        ImageResource.visa,
                                                        width: 151,
                                                        height: 70,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10),
                              GestureDetector(
                                onTap: () {
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) => ExpenseScreen()));
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
                                          text: StringResource
                                              .other_transaction_details,
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
                              SizedBox(height: 10),
                              GestureDetector(
                                onTap: () {
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) => ExpenseScreen()));
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
                                          text: StringResource.add_receipt,
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
                              SizedBox(height: 10),
                              GestureDetector(
                                onTap: () {
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) => ExpenseScreen()));
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
                                          text: StringResource.write_a_note,
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
                              SizedBox(height: 38),
                            ],
                          ),
                        )
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
