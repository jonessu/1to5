import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'settingstab_event.dart';
part 'settingstab_state.dart';

class SettingstabBloc extends Bloc<SettingstabEvent, SettingstabState> {
  SettingstabBloc() : super(SettingstabState(switch_1: false));
  bool switch_1 = false;
  bool switch_2 = false;
  bool switch_3 = false;
  bool switch_4 = false;
  bool switch_5 = false;

  // @override
  // SettingstabState get InitialState =>
  //     SettingstabState(switch_1: false, switch_2: false);

  @override
  Stream<SettingstabState> mapEventToState(
    SettingstabEvent event,
  ) async* {
    if (event is Switch1Change) {
      yield SettingstabState(switch_1: event.newvalue);
    }
  }
}
