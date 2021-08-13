part of 'pinverification_bloc.dart';

abstract class PinverificationState extends Equatable {
  const PinverificationState();

  @override
  List<Object> get props => [];
}

class PinverificationInitial extends PinverificationState {}

class PinverificationSuccess extends PinverificationState {}

class PinverificationFailure extends PinverificationState {}
