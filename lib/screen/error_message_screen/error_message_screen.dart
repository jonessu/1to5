import 'package:digitatravelmoney/Widget/text_widget.dart';
import 'package:digitatravelmoney/screen/error_message_screen/bloc/errormessage_bloc.dart';
import 'package:digitatravelmoney/utils/color_resource.dart';
import 'package:digitatravelmoney/utils/fontFamily_resource.dart';
import 'package:digitatravelmoney/utils/image_resource.dart';
import 'package:digitatravelmoney/utils/string_resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class errormessageScreen extends StatefulWidget {
  const errormessageScreen({Key? key}) : super(key: key);

  @override
  _errormessageScreenState createState() => _errormessageScreenState();
}

class _errormessageScreenState extends State<errormessageScreen> {
  late ErrormessageBloc _errormessageBloc;
  @override
  void initState() {
    super.initState();
    _errormessageBloc = ErrormessageBloc()..add(ErrormessageInitialEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ErrormessageBloc, ErrormessageState>(
      bloc: _errormessageBloc,
      listener: (context, state) {
        // TODO: implement listener
      },
      child: BlocBuilder<ErrormessageBloc, ErrormessageState>(
        bloc: _errormessageBloc,
        builder: (context, state) {
          if (state is ErrormessageLoadingState) {
            return Scaffold(
                body: Center(
              child: CircularProgressIndicator(),
            ));
          } else if (state is ErrormessageLoadedState) {
            return Scaffold(
              body: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(ImageResource.error, width: 136, height: 140),
                    SizedBox(height: 20),
                    Text_Widget(
                      text: StringResource.No_Internet_Connection,
                      font_size: 16,
                      colour: ColorResource.color1c1d22,
                      font_family: FontFamilyResource.PoppinsSemiBold,
                    ),
                    SizedBox(height: 10),
                    Text_Widget(
                      text: StringResource
                          .Please_check_your_connection_and_try_again,
                      font_size: 10,
                      colour: ColorResource.color9d9da9,
                      font_family: FontFamilyResource.PoppinsMedium,
                    ),
                    SizedBox(height: 40),
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => pinverificationScreen()));
                      },
                      child: Container(
                        width: 295,
                        height: 42,
                        decoration: BoxDecoration(
                          color: ColorResource.color0066cc,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text_Widget(
                            text: StringResource.Try_Again,
                            font_size: 12,
                            colour: Colors.white,
                            font_family: FontFamilyResource.PoppinsSemiBold,
                          ),
                        ),
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
    );
  }
}
