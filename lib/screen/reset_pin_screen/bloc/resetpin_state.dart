part of 'resetpin_bloc.dart';

abstract class ResetpinState extends Equatable {
  const ResetpinState();

  @override
  List<Object> get props => [];
}

class ResetpinInitial extends ResetpinState {}

class ResetpinLoadedState extends ResetpinState {}

class ResetpinLoadingState extends ResetpinState {}

class ResetpinFailureState extends ResetpinState {}

class ResetpinNavigatePopState extends ResetpinState {}
