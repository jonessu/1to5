import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'resetpin_event.dart';
part 'resetpin_state.dart';

class ResetpinBloc extends Bloc<ResetpinEvent, ResetpinState> {
  ResetpinBloc() : super(ResetpinInitial());

  @override
  Stream<ResetpinState> mapEventToState(
    ResetpinEvent event,
  ) async* {
    if (event is ResetpinClickBtn1Event) {
      yield ResetpinNavigatePopState();
    }
    if (event is ResetpinClickBtn2Event) {
      yield ResetpinNavigatePopState();
    }
  }
}
