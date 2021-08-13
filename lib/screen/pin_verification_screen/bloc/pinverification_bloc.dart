import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:email_auth/email_auth.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'pinverification_event.dart';
part 'pinverification_state.dart';

class PinverificationBloc
    extends Bloc<PinverificationEvent, PinverificationState> {
  PinverificationBloc() : super(PinverificationInitial());

  late String _verifiedemailController;
  TextEditingController _verifiedOTPController = TextEditingController();

  @override
  Stream<PinverificationState> mapEventToState(
    PinverificationEvent event,
  ) async* {
    if (event is PinVerification) {
      try {
        bool res =
            EmailAuth.validate(receiverMail: event._email, userOTP: event._OTP);
        if (res) {
          yield PinverificationSuccess();
        } else {
          yield PinverificationFailure();
        }
      } catch (e) {
        yield PinverificationFailure();
      }
    }
  }
}
