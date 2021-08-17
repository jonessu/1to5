import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'welcome_event.dart';
part 'welcome_state.dart';

class WelcomeBloc extends Bloc<WelcomeEvent, WelcomeState> {
  WelcomeBloc() : super(WelcomeInitial());

  @override
  Stream<WelcomeState> mapEventToState(
    WelcomeEvent event,
  ) async* {
    if (event is WelcomeTapInitial) {
      try {
        User? user = FirebaseAuth.instance.currentUser;
        if (user != null) {
          print(user.email);
        }
      } catch (e) {
        print(e);
      }
      yield HomeTapSuccess();
    } else if (event is ClickTap) {
      if (event._selectedState == 0) {
        yield HomeTapSuccess();
      } else if (event._selectedState == 1) {
        yield OffersTapSuccess();
      } else if (event._selectedState == 2) {
        yield SettingsTapSuccess();
      }
    }
  }
}
