import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:equatable/equatable.dart';

part 'internet_event.dart';
part 'internet_state.dart';

class InternetBloc extends Bloc<InternetEvent, InternetState> {
  InternetBloc() : super(InternetInitial());

  @override
  Stream<InternetState> mapEventToState(
    InternetEvent event,
  ) async* {
    if (event is isConnected) {
      var connectivityResult = await (Connectivity().checkConnectivity());
      if (connectivityResult == ConnectivityResult.wifi) {
        yield InternetConnected();
      } else if (connectivityResult == ConnectivityResult.mobile) {
        yield InternetConnected();
      } else {
        print("none");
        yield InternetDisconnected();
      }
    }
  }
}
