import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

// part 'delete_event.dart';
// part 'delete_state.dart';

enum DeleteEvent {
  increment,
  decrement,
  error,
}

/// {@template counter_bloc}
/// A simple [Bloc] which manages an `int` as its state.
/// {@endtemplate}
class DeleteBloc extends Bloc<DeleteEvent, int> {
  /// {@macro counter_bloc}
  DeleteBloc() : super(1);

  @override
  Stream<int> mapEventToState(DeleteEvent event) async* {
    switch (event) {
      case DeleteEvent.decrement:
        yield state - 1;
        break;
      case DeleteEvent.increment:
        yield state + 1;
        break;
      case DeleteEvent.error:
        addError(Exception('unsupported event'));
    }
  }
}
