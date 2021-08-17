part of 'exchangeconform_bloc.dart';

abstract class ExchangeconformState extends Equatable {
  const ExchangeconformState();

  @override
  List<Object> get props => [];
}

class ExchangeconformInitial extends ExchangeconformState {}

class ExchangeconformLoadedState extends ExchangeconformState {}

class ExchangeconformLoadingState extends ExchangeconformState {}

class ExchangeconformFailureState extends ExchangeconformState {}
