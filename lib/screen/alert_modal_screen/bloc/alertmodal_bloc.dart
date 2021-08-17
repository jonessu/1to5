import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'alertmodal_event.dart';
part 'alertmodal_state.dart';

class AlertmodalBloc extends Bloc<AlertmodalEvent, AlertmodalState> {
  AlertmodalBloc() : super(AlertmodalInitial());

  @override
  Stream<AlertmodalState> mapEventToState(
    AlertmodalEvent event,
  ) async* {
    if (event is AlertmodalInitialEvent) {
      yield AlertmodalLoadedState();
    }
  }
}
