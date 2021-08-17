import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'transactionspage_event.dart';
part 'transactionspage_state.dart';

class TransactionspageBloc
    extends Bloc<TransactionspageEvent, TransactionspageState> {
  TransactionspageBloc() : super(TransactionspageInitial());

  @override
  Stream<TransactionspageState> mapEventToState(
    TransactionspageEvent event,
  ) async* {
    if (event is TransactionspageInitialEvent) {
      yield TransactionspageLoadedState();
    }
  }
}
