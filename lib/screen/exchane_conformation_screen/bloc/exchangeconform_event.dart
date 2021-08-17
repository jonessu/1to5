part of 'exchangeconform_bloc.dart';

abstract class ExchangeconformEvent extends Equatable {
  const ExchangeconformEvent();

  @override
  List<Object> get props => [];
}

class ExchangeconformInitialEvent extends ExchangeconformEvent {}
