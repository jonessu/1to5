part of 'expense_bloc.dart';

abstract class ExpenseState extends Equatable {
  const ExpenseState();

  @override
  List<Object> get props => [];
}

class ExpenseInitial extends ExpenseState {}

class ExpenseLoadedState extends ExpenseState {}

class ExpenseLoadingState extends ExpenseState {}

class ExpenseFailureState extends ExpenseState {}
