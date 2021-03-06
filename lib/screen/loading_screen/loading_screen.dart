import 'dart:async';
import 'package:digitatravelmoney/screen/loading_screen/bloc/loading_bloc.dart';
import 'package:digitatravelmoney/utils/color_resource.dart';
import 'package:digitatravelmoney/utils/image_resource.dart';
import 'package:digitatravelmoney/utils/string_resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class loadingScreen extends StatefulWidget {
  const loadingScreen({Key? key}) : super(key: key);

  @override
  _loadingScreenState createState() => _loadingScreenState();
}

class _loadingScreenState extends State<loadingScreen> {
  late LoadingBloc _loadingBloc;
  late var text;
  @override
  void initState() {
    super.initState();
    _loadingBloc = LoadingBloc()..add(LoadingInitialEvent());
  }

  @override
  Widget build(BuildContext context) {
    final controller = PageController(viewportFraction: 0.8);

    return BlocListener<LoadingBloc, LoadingState>(
      bloc: _loadingBloc,
      listener: (context, state) {
        // TODO: implement listener
      },
      child: BlocBuilder<LoadingBloc, LoadingState>(
        bloc: _loadingBloc,
        builder: (context, state) {
          if (state is LoadingLoadingState) {
            return Scaffold(
                body: Center(
              child: CircularProgressIndicator(),
            ));
          } else if (state is LoadingLoadedState) {
            return Scaffold(
              body: Center(
                child: RaisedButton(
                  onPressed: () async {
                    Timer timer;
                    int dot_value = 0;
                    bool first_dot = true,
                        second_dot = false,
                        third_dot = false;
                    timer = Timer.periodic(Duration(milliseconds: 10), (timer) {
                      setState(() {
                        dot_value++;
                        if (dot_value % 3 == 0) {
                          first_dot = true;
                          second_dot = false;
                          third_dot = false;
                        } else if (dot_value % 3 == 1) {
                          first_dot = false;
                          second_dot = true;
                          third_dot = false;
                        } else {
                          first_dot = false;
                          second_dot = false;
                          third_dot = true;
                        }
                      });
                    });
                    Timer(Duration(seconds: 3), () {
                      Navigator.pop(context);
                      timer.cancel();
                    });

                    await showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        content: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: ColorResource.colorFFFFFF,
                            borderRadius: BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                ImageResource.visa_logo,
                                width: 47,
                                height: 40,
                              ),
                              SizedBox(height: 15),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  custom_line_dot(dot_value: first_dot),
                                  custom_line_dot(dot_value: second_dot),
                                  custom_line_dot(dot_value: third_dot),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  child: Text(StringResource.loading),
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

class custom_line_dot extends StatelessWidget {
  const custom_line_dot({
    Key? key,
    required this.dot_value,
  }) : super(key: key);

  final bool dot_value;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: dot_value ? 5 : 3,
      width: dot_value ? 5 : 3,
      decoration: BoxDecoration(
        color:
            dot_value ? ColorResource.color616267 : ColorResource.colorb9b9bf,
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
  }
}
