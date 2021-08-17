import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'errormessage_event.dart';
part 'errormessage_state.dart';

class ErrormessageBloc extends Bloc<ErrormessageEvent, ErrormessageState> {
  ErrormessageBloc() : super(ErrormessageInitial());

  @override
  Stream<ErrormessageState> mapEventToState(
    ErrormessageEvent event,
  ) async* {
    if (event is ErrormessageInitialEvent) {
      yield ErrormessageLoadedState();
    }
  }
}
