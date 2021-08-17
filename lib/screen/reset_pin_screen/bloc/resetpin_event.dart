part of 'resetpin_bloc.dart';

abstract class ResetpinEvent extends Equatable {
  const ResetpinEvent();

  @override
  List<Object> get props => [];
}

class ResetpinInitialEvent extends ResetpinEvent {}

class ResetpinClickBtn1Event extends ResetpinEvent {}

class ResetpinClickBtn2Event extends ResetpinEvent {}
