import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'exchangeconform_event.dart';
part 'exchangeconform_state.dart';

class ExchangeconformBloc
    extends Bloc<ExchangeconformEvent, ExchangeconformState> {
  ExchangeconformBloc() : super(ExchangeconformInitial());

  @override
  Stream<ExchangeconformState> mapEventToState(
    ExchangeconformEvent event,
  ) async* {
    if (event is ExchangeconformInitialEvent) {
      yield ExchangeconformLoadedState();
    }
  }
}
