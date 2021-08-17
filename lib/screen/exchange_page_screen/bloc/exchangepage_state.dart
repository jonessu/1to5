part of 'exchangepage_bloc.dart';

abstract class ExchangepageState extends Equatable {
  const ExchangepageState();

  @override
  List<Object> get props => [];
}

class ExchangepageInitial extends ExchangepageState {}

class ExchangepageLoadedState extends ExchangepageState {}

class ExchangepageLoadingState extends ExchangepageState {}

class ExchangepageFailureState extends ExchangepageState {}
