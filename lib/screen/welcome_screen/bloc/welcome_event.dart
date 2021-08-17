part of 'welcome_bloc.dart';

abstract class WelcomeEvent extends Equatable {
  const WelcomeEvent();

  @override
  List<Object> get props => [];
}

class WelcomeTapInitial extends WelcomeEvent {}

class ClickTap extends WelcomeEvent {
  final int _selectedState;
  ClickTap(this._selectedState);
}
