import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'offersinnerpage_event.dart';
part 'offersinnerpage_state.dart';

class OffersinnerpageBloc
    extends Bloc<OffersinnerpageEvent, OffersinnerpageState> {
  OffersinnerpageBloc() : super(OffersinnerpageInitial());

  @override
  Stream<OffersinnerpageState> mapEventToState(
    OffersinnerpageEvent event,
  ) async* {
    if (event is InitialOffersPage) {}
  }
}
