part of 'transactionspage_bloc.dart';

abstract class TransactionspageEvent extends Equatable {
  const TransactionspageEvent();

  @override
  List<Object> get props => [];
}

class TransactionspageInitialEvent extends TransactionspageEvent {}
