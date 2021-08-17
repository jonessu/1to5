import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'currencymanage_event.dart';
part 'currencymanage_state.dart';

class CurrencymanageBloc
    extends Bloc<CurrencymanageEvent, CurrencymanageState> {
  CurrencymanageBloc() : super(CurrencymanageInitial());

  @override
  Stream<CurrencymanageState> mapEventToState(
    CurrencymanageEvent event,
  ) async* {
    if (event is CurrencymanageInitialEvent) {
      yield CurrencymanageLoadedState();
    }
  }
}
