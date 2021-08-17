part of 'errormessage_bloc.dart';

abstract class ErrormessageState extends Equatable {
  const ErrormessageState();

  @override
  List<Object> get props => [];
}

class ErrormessageInitial extends ErrormessageState {}

class ErrormessageLoadedState extends ErrormessageState {}

class ErrormessageLoadingState extends ErrormessageState {}

class ErrormessageFailureState extends ErrormessageState {}
