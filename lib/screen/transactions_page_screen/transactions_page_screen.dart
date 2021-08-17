import 'package:digitatravelmoney/screen/transactions_page_screen/bloc/transactionspage_bloc.dart';
import 'package:digitatravelmoney/utils/color_resource.dart';
import 'package:digitatravelmoney/utils/fontFamily_resource.dart';
import 'package:digitatravelmoney/utils/image_resource.dart';
import 'package:digitatravelmoney/utils/string_resources.dart';
import 'package:flutter/material.dart';
import 'package:digitatravelmoney/Widget/transaction_card.dart';
import 'package:digitatravelmoney/Constant/transaction_list_constant.dart';
import 'package:digitatravelmoney/Widget/text_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class transactionspageScreen extends StatefulWidget {
  const transactionspageScreen({Key? key}) : super(key: key);

  @override
  _transactionspageScreenState createState() => _transactionspageScreenState();
}

class _transactionspageScreenState extends State<transactionspageScreen> {
  late TransactionspageBloc _transactionspageBloc;
  late var text;
  @override
  void initState() {
    super.initState();
    _transactionspageBloc = TransactionspageBloc()
      ..add(TransactionspageInitialEvent());
  }

  final List _pages = [
    {
      StringResource.title: StringResource.SortBy,
      StringResource.widget: sortbytabScreen()
    },
    {
      StringResource.title: StringResource.Currency,
      StringResource.widget: currencytabScreen()
    },
    {
      StringResource.title: StringResource.Category,
      StringResource.widget: categorytabScreen()
    },
    {
      StringResource.title: StringResource.Filters,
      StringResource.widget: filtertabScreen()
    }
  ];

  @override
  Widget build(BuildContext context) {
    return BlocListener<TransactionspageBloc, TransactionspageState>(
      bloc: _transactionspageBloc,
      listener: (context, state) {
        // TODO: implement listener
      },
      child: BlocBuilder<TransactionspageBloc, TransactionspageState>(
        bloc: _transactionspageBloc,
        builder: (context, state) {
          if (state is TransactionspageLoadingState) {
            return Scaffold(
                body: Center(
              child: CircularProgressIndicator(),
            ));
          } else if (state is TransactionspageLoadedState) {
            return Scaffold(
              backgroundColor: ColorResource.colorf5f5f7,
              body: SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(ImageResource.rectanglecopy),
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (context) => menuScreen(),
                                //   ),
                                //);
                              },
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                            ),
                            Text_Widget(
                              text: StringResource.RecentTransactions,
                              font_size: 12,
                              font_family: FontFamilyResource.PoppinsRegular,
                              colour: Colors.white,
                            ),
                            Text("")
                          ],
                        ),
                        SizedBox(height: 40),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              StringResource.Transactions2400,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: FontFamilyResource.PoppinsRegular,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                showModalBottomSheet(
                                  context: context,
                                  backgroundColor: Colors.transparent,
                                  isScrollControlled: true,
                                  builder: (context) => Wrap(
                                    children: [
                                      Padding(
                                        padding:
                                            MediaQuery.of(context).viewInsets,
                                        child: StatefulBuilder(
                                          builder: (BuildContext context,
                                              StateSetter setState) {
                                            return Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: 520,
                                              decoration: BoxDecoration(
                                                // color: colorPrimary,
                                                color: Colors.white,
                                                borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(18.0),
                                                  topRight:
                                                      const Radius.circular(
                                                          18.0),
                                                ),
                                              ),
                                              child: DefaultTabController(
                                                length: _pages.length,
                                                child: Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      vertical: 10,
                                                      horizontal: 12),
                                                  child: Scaffold(
                                                    appBar: AppBar(
                                                      backgroundColor:
                                                          Colors.white,
                                                      elevation: 0.0,
                                                      leadingWidth: 0.0,
                                                      title: Row(
                                                        children: [
                                                          Container(
                                                            height: 20,
                                                            width: 80,
                                                            child: Text_Widget(
                                                              text: StringResource
                                                                  .sortandfilter,
                                                              font_size: 16,
                                                              font_family:
                                                                  FontFamilyResource
                                                                      .PoppinsBold,
                                                              colour: ColorResource
                                                                  .color1c1d22,
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
                                                            text: StringResource
                                                                .RESET,
                                                            font_size: 13,
                                                            font_family:
                                                                FontFamilyResource
                                                                    .PoppinsMedium,
                                                            colour: ColorResource
                                                                .color1a1f71,
                                                          ),
                                                        ),
                                                      ],
                                                      bottom: PreferredSize(
                                                        preferredSize:
                                                            Size.fromHeight(
                                                                kToolbarHeight),
                                                        child: Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: TabBar(
                                                              labelPadding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          30.0),
                                                              isScrollable:
                                                                  true,
                                                              indicatorColor:
                                                                  ColorResource
                                                                      .color0857ab,
                                                              labelColor:
                                                                  Colors.black,
                                                              unselectedLabelColor:
                                                                  Colors.grey,
                                                              tabs: _pages
                                                                  .map((page) => Tab(
                                                                      text: page[
                                                                          StringResource
                                                                              .title]))
                                                                  .toList()),
                                                        ),
                                                      ),
                                                    ),
                                                    body: TabBarView(
                                                        children: _pages
                                                            .map((page) => Tab(
                                                                child: page[
                                                                    StringResource
                                                                        .widget]))
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
                                  Text(
                                    StringResource.sortandfilter,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontFamily:
                                          FontFamilyResource.PoppinsBold,
                                    ),
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
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Column(
                            children: [
                              ListView.builder(
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
                                itemCount: trans_list.length,
                              ),
                              SizedBox(height: 20),
                              GestureDetector(
                                onTap: () {
                                  // Navigator.push(context,
                                  //     MaterialPageRoute(builder: (context) => Login3()));
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: 42,
                                  decoration: BoxDecoration(
                                    color: ColorResource.color0066cc,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Center(
                                      child: Text(
                                    StringResource.LoadMore,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily:
                                            FontFamilyResource.PoppinsSemiBold,
                                        fontSize: 12),
                                  )),
                                ),
                              ),
                              SizedBox(height: 11)
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

class sortbytabScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        children: [
          ListTile(
            leading: Text_Widget(
              text: StringResource.NewestFirst,
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
              text: StringResource.OldestFirst,
              font_size: 14,
              colour: ColorResource.color1c1d22,
              font_family: FontFamilyResource.PoppinsRegular,
            ),
          ),
          ListTile(
            leading: Text_Widget(
              text: StringResource.LowtoHighPrice,
              font_size: 14,
              colour: ColorResource.color1c1d22,
              font_family: FontFamilyResource.PoppinsRegular,
            ),
          ),
          ListTile(
            leading: Text_Widget(
              text: StringResource.HightoLowPrice,
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
                  colour: Colors.white,
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

class currencytabScreen extends StatelessWidget {
  bool _value = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        children: [
          ListTile(
            leading: Text_Widget(
              text: StringResource.AllCurrencies,
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
              text: "\$USD",
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
              text: "₹INR",
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
              text: "\$CAD",
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
              text: "\$SGD",
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
                  colour: Colors.white,
                  font_family: FontFamilyResource.PoppinsRegular,
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

class categorytabScreen extends StatelessWidget {
  bool _value = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        children: [
          ListTile(
            leading: Text_Widget(
              text: StringResource.AllCurrencies,
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
              text: StringResource.Exchanges,
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
              text: StringResource.Withdrawals,
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
              text: StringResource.FoodandBeverages,
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
              text: StringResource.Fashion,
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
                  colour: Colors.white,
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

class filtertabScreen extends StatelessWidget {
  bool _value = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        children: [
          ListTile(
            leading: Text_Widget(
              text: StringResource.WithNotes,
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
              text: StringResource.WithTags,
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
              text: StringResource.IncludeDeclinedTransactions,
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
              text: StringResource.ExcludeDeclinedTransactions,
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
                  colour: Colors.white,
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
