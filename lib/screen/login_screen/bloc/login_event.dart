part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class SignInWithGoogle extends LoginEvent {}

class SignInWithPin extends LoginEvent {
  final String _email;
  SignInWithPin(this._email);
}
