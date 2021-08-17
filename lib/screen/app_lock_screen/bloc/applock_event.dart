part of 'applock_bloc.dart';

abstract class ApplockEvent extends Equatable {
  const ApplockEvent();

  @override
  List<Object> get props => [];
}

class ApplockInitialEvent extends ApplockEvent {}
