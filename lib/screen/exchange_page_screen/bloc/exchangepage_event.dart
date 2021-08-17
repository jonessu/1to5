part of 'exchangepage_bloc.dart';

abstract class ExchangepageEvent extends Equatable {
  const ExchangepageEvent();

  @override
  List<Object> get props => [];
}

class ExchangepageInitialEvent extends ExchangepageEvent {}
