import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:digitatravelmoney/controller/authentications.dart';
import 'package:email_auth/email_auth.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial());

  late String _email_value;

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    if (event is SignInWithGoogle) {
      try {
        googleSignInmethod().whenComplete(() async* {
          User? user = FirebaseAuth.instance.currentUser;
          print(user);
        });
        yield SignInGoogleSuccess();
      } catch (e) {
        yield SignInGoogleFailure();
      }
    }
    if (event is SignInWithPin) {
      try {
        EmailAuth.sessionName = "Test Session";
        var res = await EmailAuth.sendOtp(receiverMail: event._email);
        if (res) {
          yield SignInPinSuccess();
        } else {
          yield SignInPinFailure();
        }
      } catch (e) {
        yield SignInPinFailure();
      }
    }
  }
}
