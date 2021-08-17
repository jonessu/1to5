part of 'currencymanage_bloc.dart';

abstract class CurrencymanageState extends Equatable {
  const CurrencymanageState();

  @override
  List<Object> get props => [];
}

class CurrencymanageInitial extends CurrencymanageState {}

class CurrencymanageLoadedState extends CurrencymanageState {}

class CurrencymanageLoadingState extends CurrencymanageState {}

class CurrencymanageFailureState extends CurrencymanageState {}
