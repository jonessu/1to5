part of 'applock_bloc.dart';

abstract class ApplockState extends Equatable {
  const ApplockState();

  @override
  List<Object> get props => [];
}

class ApplockInitial extends ApplockState {}

class ApplockLoadedState extends ApplockState {}

class ApplockLoadingState extends ApplockState {}

class ApplockFailureState extends ApplockState {}
