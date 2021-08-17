part of 'errormessage_bloc.dart';

abstract class ErrormessageEvent extends Equatable {
  const ErrormessageEvent();

  @override
  List<Object> get props => [];
}

class ErrormessageInitialEvent extends ErrormessageEvent {}
