part of 'atmlocation_bloc.dart';

abstract class AtmlocationEvent extends Equatable {
  const AtmlocationEvent();

  @override
  List<Object> get props => [];
}

class AtmLocationInitial extends AtmlocationEvent {}
