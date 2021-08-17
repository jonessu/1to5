part of 'settingstab_bloc.dart';

abstract class SettingstabEvent extends Equatable {}

class SettingstabInitialTab extends SettingstabEvent {
  @override
  List<Object> get props => [];
}

class ToggleEverythingValue extends SettingstabEvent {
  @override
  List<Object> get props => [];
}

class Switch1Change extends SettingstabEvent {
  bool newvalue;
  Switch1Change(this.newvalue);
  @override
  List<Object> get props => [];
}

// class ToggleATMValue extends SettingstabEvent {}

// class ToggleRetailValue extends SettingstabEvent {}

// class ToggleOnlineValue extends SettingstabEvent {}

// class ToggleTapValue extends SettingstabEvent {}

// class ClickAppLockPreference extends SettingstabEvent {}
