part of 'menu_bloc.dart';

abstract class MenuState extends Equatable {
  const MenuState();

  @override
  List<Object> get props => [];
}

class MenuInitial extends MenuState {}

class MenuLoadedState extends MenuState {}

class MenuLoadingState extends MenuState {}

class MenuFailureState extends MenuState {}
