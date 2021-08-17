part of 'transactionspage_bloc.dart';

abstract class TransactionspageState extends Equatable {
  const TransactionspageState();

  @override
  List<Object> get props => [];
}

class TransactionspageInitial extends TransactionspageState {}

class TransactionspageLoadedState extends TransactionspageState {}

class TransactionspageLoadingState extends TransactionspageState {}

class TransactionspageFailureState extends TransactionspageState {}
