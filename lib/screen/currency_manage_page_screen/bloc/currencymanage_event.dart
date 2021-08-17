part of 'currencymanage_bloc.dart';

abstract class CurrencymanageEvent extends Equatable {
  const CurrencymanageEvent();

  @override
  List<Object> get props => [];
}

class CurrencymanageInitialEvent extends CurrencymanageEvent {}
