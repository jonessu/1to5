import 'package:flutter/material.dart';
import 'package:digitatravelmoney/Widget/transaction_card.dart';
import 'package:digitatravelmoney/Constant/transaction_list_constant.dart';
import 'package:digitatravelmoney/Widget/text_widget.dart';

class transactionspageScreen extends StatefulWidget {
  const transactionspageScreen({Key? key}) : super(key: key);

  @override
  _transactionspageScreenState createState() => _transactionspageScreenState();
}

class _transactionspageScreenState extends State<transactionspageScreen> {
  final List _pages = [
    {'title': 'Sort By', 'widget': sortbytabScreen()},
    {'title': 'Currency', 'widget': currencytabScreen()},
    {'title': 'Category', 'widget': categorytabScreen()},
    {'title': 'Filters', 'widget': filtertabScreen()}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f5f7),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/home/tab_1/rectangle_copy.png'),
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
                      text: "Recent Transactions",
                      font_size: 12,
                      font_family: 'Poppins-Regular',
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
                      "2400 Transactions",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'Poppins-Regular',
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
                                padding: MediaQuery.of(context).viewInsets,
                                child: StatefulBuilder(
                                  builder: (BuildContext context,
                                      StateSetter setState) {
                                    return Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 520,
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
                                                      font_family:
                                                          'Poppins-Bold',
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
                                                    font_family:
                                                        'Poppins-Medium',
                                                    colour: Color(0xff1a1f71),
                                                  ),
                                                ),
                                              ],
                                              bottom: PreferredSize(
                                                preferredSize: Size.fromHeight(
                                                    kToolbarHeight),
                                                child: Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: TabBar(
                                                      labelPadding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 30.0),
                                                      isScrollable: true,
                                                      indicatorColor:
                                                          Color(0xff0857ab),
                                                      labelColor: Colors.black,
                                                      unselectedLabelColor:
                                                          Colors.grey,
                                                      tabs: _pages
                                                          .map((page) => Tab(
                                                              text: page[
                                                                  'title']))
                                                          .toList()),
                                                ),
                                              ),
                                            ),
                                            body: TabBarView(
                                                children: _pages
                                                    .map((page) => Tab(
                                                        child: page['widget']))
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
                            "sort & filter",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontFamily: 'Poppins-Bold',
                            ),
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
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Column(
                    children: [
                      ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return transaction_card(
                            title: trans_list[index]['title'],
                            subtitle: trans_list[index]['subtitle'],
                            img_path: trans_list[index]['img_path'],
                            price_text: trans_list[index]['price_text'],
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
                            color: Color(0xff0066cc),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                              child: Text(
                            "Load More",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Poppins-SemiBold',
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
              text: "Newest First",
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
              text: "Oldest first",
              font_size: 14,
              colour: Color(0xff1c1d22),
              font_family: 'Poppins-Regular',
            ),
          ),
          ListTile(
            leading: Text_Widget(
              text: "Low to High Price",
              font_size: 14,
              colour: Color(0xff1c1d22),
              font_family: 'Poppins-Regular',
            ),
          ),
          ListTile(
            leading: Text_Widget(
              text: "High to Low Price",
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
              text: "All Currencies",
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
              text: "\$USD",
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
              text: "₹INR",
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
              text: "\$CAD",
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
              text: "\$SGD",
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
                text: "Cancel",
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
              text: "All Categories",
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
              text: "Exchanges",
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
              text: "Withdrawals",
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
              text: "Food & Beverages",
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
              text: "Fashion",
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
                text: "Cancel",
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
              text: "With Notes",
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
              text: "With Tags",
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
              text: "Include Declined Transactions",
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
              text: "Exclude Declined Transactions",
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
                text: "Cancel",
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
