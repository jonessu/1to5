import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'applockoptions_event.dart';
part 'applockoptions_state.dart';

class ApplockoptionsBloc
    extends Bloc<ApplockoptionsEvent, ApplockoptionsState> {
  ApplockoptionsBloc() : super(ApplockoptionsInitial());

  @override
  ApplockoptionsState get initialState => ApplockoptionsState();

  @override
  Stream<ApplockoptionsState> mapEventToState(
    ApplockoptionsEvent event,
  ) async* {
    if (event is ApplockoptionsInitialEvent) {
      //yield ApplockoptionsLoadedState();
    }
    if (event is ApplockoptionsChangeEvent) {
      print(event.lock_value);
      //yield ApplockoptionsNavigationPopState();
    }
  }
}
