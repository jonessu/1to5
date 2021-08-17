part of 'loading_bloc.dart';

abstract class LoadingState extends Equatable {
  const LoadingState();

  @override
  List<Object> get props => [];
}

class LoadingInitial extends LoadingState {}

class LoadingLoadedState extends LoadingState {}

class LoadingLoadingState extends LoadingState {}

class LoadingFailureState extends LoadingState {}
