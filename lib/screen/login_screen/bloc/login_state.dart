part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginState {}

class SignInGoogleSuccess extends LoginState {}

class SignInGoogleFailure extends LoginState {}

class SignInGoogleLoaded extends LoginState {}

class SignInPinLoaded extends LoginState {}

class SignInPinSuccess extends LoginState {}

class SignInPinFailure extends LoginState {}
