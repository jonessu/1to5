import 'package:flutter/material.dart';
import 'package:digitatravelmoney/Widget/transaction_card.dart';
import 'package:digitatravelmoney/Home/Constant/home_constant.dart';

class transactionspageScreen extends StatelessWidget {
  const transactionspageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        centerTitle: true,
        title: Text(
          "Recent Transactions",
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontFamily: 'Poppins-Regular',
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
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
                  Row(
                    children: [
                      Text(
                        "sort & filter",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontFamily: 'Poppins-Bold',
                        ),
                      ),
                      SizedBox(width: 10),
                      Image.asset(
                        'images/home/tab_1/sort.png',
                        width: 6,
                        height: 11,
                      ),
                    ],
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
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
    );
  }
}
