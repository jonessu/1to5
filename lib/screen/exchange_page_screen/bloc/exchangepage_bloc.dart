import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'exchangepage_event.dart';
part 'exchangepage_state.dart';

class ExchangepageBloc extends Bloc<ExchangepageEvent, ExchangepageState> {
  ExchangepageBloc() : super(ExchangepageInitial());

  @override
  Stream<ExchangepageState> mapEventToState(
    ExchangepageEvent event,
  ) async* {
    if (event is ExchangepageInitialEvent) {
      yield ExchangepageLoadedState();
    }
  }
}
