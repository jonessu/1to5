part of 'applockoptions_bloc.dart';

abstract class ApplockoptionsEvent extends Equatable {
  const ApplockoptionsEvent();

  @override
  List<Object> get props => [];
}

class ApplockoptionsInitialEvent extends ApplockoptionsEvent {}

class ApplockoptionsChangeEvent extends ApplockoptionsEvent {
  final int lock_value;
  ApplockoptionsChangeEvent({required this.lock_value});
}
