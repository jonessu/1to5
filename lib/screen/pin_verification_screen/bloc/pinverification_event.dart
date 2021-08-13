part of 'pinverification_bloc.dart';

abstract class PinverificationEvent extends Equatable {
  const PinverificationEvent();

  @override
  List<Object> get props => [];
}

class PinVerification extends PinverificationEvent {
  final String _email;
  final String _OTP;
  PinVerification(this._email, this._OTP);
}
