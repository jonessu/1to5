// import 'dart:async';

// import 'package:bloc/bloc.dart';
// import 'package:digitatravelmoney/Constant/enum.dart';
// import 'package:equatable/equatable.dart';
// import 'package:connectivity_plus/connectivity_plus.dart';

// part 'internet_event.dart';
// part '../screen/bloc_post_api_screen/bloc/internet_state.dart';

// class InternetBloc extends Bloc<InternetEvent, InternetState> {
//   final Connectivity connectivity;
//   InternetBloc(this.connectivity) : super(InternetInitial());

//   @override
//   Stream<InternetState> mapEventToState(
//     InternetEvent event,
//   ) async* {
//     if (event is CheckConnectivity) {
//       try {
//         ConnectivityResult connectivityResult =
//             await (Connectivity().checkConnectivity());
//         if (connectivityResult == ConnectivityResult.wifi) {
//           yield InternetConnected(connectivity: connectivity);
//         } else if (connectivityResult == ConnectivityResult.mobile) {
//           yield InternetConnected(connectivity: connectivity);
//         } else if (connectivityResult == ConnectivityResult.none) {
//           yield InternetDisconnected();
//         }
//       } catch (e) {}
//     }
//   }
// }

// class InternetEvent {
// }
