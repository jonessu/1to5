import 'package:connectivity_plus/connectivity_plus.dart';

import 'package:digitatravelmoney/cubit/internet_cubit.dart';
import 'package:digitatravelmoney/data/repositories/post_repo.dart';
import 'package:digitatravelmoney/screen/bloc_post_api_screen/bloc/post_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:digitatravelmoney/screen/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // transparent status bar
  ));

  runApp(MyApp(connectivity: Connectivity()));
}

class MyApp extends StatelessWidget {
  final Connectivity connectivity;

  const MyApp({Key? key, required this.connectivity}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<PostBloc>(
            create: (BuildContext context) =>
                PostBloc(InitialState(), PostRepository()),
          ),
          BlocProvider<InternetCubit>(
            create: (BuildContext context) =>
                InternetCubit(connectivity: connectivity),
          ),
        ],
        child: MaterialApp(
          title: 'Splash Screen',
          theme: ThemeData(
            primarySwatch: Colors.green,
          ),
          debugShowCheckedModeBanner: false,
          home: splashScreen(),
        ));
  }
}
