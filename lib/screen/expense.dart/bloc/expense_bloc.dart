import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'expense_event.dart';
part 'expense_state.dart';

class ExpenseBloc extends Bloc<ExpenseEvent, ExpenseState> {
  ExpenseBloc() : super(ExpenseInitial());

  @override
  Stream<ExpenseState> mapEventToState(
    ExpenseEvent event,
  ) async* {
    if (event is ExpenseInitialEvent) {
      yield ExpenseLoadedState();
    }
  }
}
