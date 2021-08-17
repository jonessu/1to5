part of 'welcome_bloc.dart';

abstract class WelcomeState extends Equatable {
  const WelcomeState();

  @override
  List<Object> get props => [];
}

class WelcomeInitial extends WelcomeState {}

class HomeTapSuccess extends WelcomeState {}

class OffersTapSuccess extends WelcomeState {}

class SettingsTapSuccess extends WelcomeState {}
