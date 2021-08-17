import 'package:digitatravelmoney/utils/color_resource.dart';
import 'package:digitatravelmoney/utils/fontFamily_resource.dart';
import 'package:digitatravelmoney/utils/image_resource.dart';
import 'package:digitatravelmoney/utils/string_resources.dart';
import 'package:flutter/material.dart';
import 'package:digitatravelmoney/Widget/offers_card_widget.dart';
import 'package:digitatravelmoney/Widget/text_widget.dart';
import 'package:digitatravelmoney/screen/menu_screen/menu_screen.dart';
import 'package:digitatravelmoney/screen/offers_innerpage_screen/offers_innerpage_screen.dart';

class offerstabScreen extends StatefulWidget {
  const offerstabScreen({
    Key? key,
  }) : super(key: key);

  @override
  _offerstabScreenState createState() => _offerstabScreenState();
}

class _offerstabScreenState extends State<offerstabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResource.colorf5f5f7,
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(ImageResource.background),
              alignment: Alignment.topCenter,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text_Widget(
                      text: StringResource.offers,
                      font_size: 12,
                      font_family: FontFamilyResource.PoppinsRegular,
                      colour: Colors.white,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => menuScreen(),
                          ),
                        );
                      },
                      child: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Container(
                  width: double.infinity,
                  height: 38,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text_Widget(
                          text: StringResource.search,
                          font_size: 12,
                          font_family: FontFamilyResource.PoppinsMedium,
                          colour: ColorResource.color616267,
                        ),
                        Icon(Icons.search),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => offersinnerpageScreen(),
                          ),
                        );
                      },
                      child: Text_Widget(
                        text: StringResource.showing_all_new_offers,
                        font_size: 12,
                        font_family: FontFamilyResource.PoppinsRegular,
                        colour: Colors.white,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => recent_transaction(),
                        //   ),
                        // );
                      },
                      child: Row(
                        children: [
                          Text_Widget(
                            text: StringResource.sortandfilter,
                            font_size: 14,
                            font_family: FontFamilyResource.PoppinsBold,
                            colour: Colors.white,
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
                SizedBox(height: 16),
                Container(
                  width: double.infinity,
                  height: 237,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: offers_card_widget(
                    img_path: ImageResource.spuneimage,
                    title: StringResource.Apollo_Pharmacy,
                    sub_text: StringResource.Apollo_Pharmacy_Discount,
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  width: double.infinity,
                  height: 237,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: offers_card_widget(
                    img_path: ImageResource.spuneimage,
                    title: StringResource.Apollo_Pharmacy,
                    sub_text: StringResource.Apollo_Pharmacy_Discount,
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  width: double.infinity,
                  height: 237,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: offers_card_widget(
                    img_path: ImageResource.spuneimage,
                    title: StringResource.Apollo_Pharmacy,
                    sub_text: StringResource.Apollo_Pharmacy_Discount,
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
