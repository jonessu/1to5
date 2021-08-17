import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'applock_event.dart';
part 'applock_state.dart';

class ApplockBloc extends Bloc<ApplockEvent, ApplockState> {
  ApplockBloc() : super(ApplockInitial());

  @override
  Stream<ApplockState> mapEventToState(
    ApplockEvent event,
  ) async* {
    if (event is ApplockInitialEvent) {
      yield ApplockLoadedState();
    }
  }
}
