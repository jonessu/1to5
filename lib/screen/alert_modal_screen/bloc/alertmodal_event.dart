part of 'alertmodal_bloc.dart';

abstract class AlertmodalEvent extends Equatable {
  const AlertmodalEvent();

  @override
  List<Object> get props => [];
}

class AlertmodalInitialEvent extends AlertmodalEvent {}
