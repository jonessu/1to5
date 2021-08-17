part of 'alertmodal_bloc.dart';

abstract class AlertmodalState extends Equatable {
  const AlertmodalState();

  @override
  List<Object> get props => [];
}

class AlertmodalInitial extends AlertmodalState {}

class AlertmodalLoadedState extends AlertmodalState {}

class AlertmodalLoadingState extends AlertmodalState {}

class AlertmodalFailureState extends AlertmodalState {}
