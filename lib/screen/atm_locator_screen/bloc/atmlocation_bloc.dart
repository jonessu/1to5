import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:geolocator/geolocator.dart';

part 'atmlocation_event.dart';
part 'atmlocation_state.dart';

class AtmlocationBloc extends Bloc<AtmlocationEvent, AtmlocationState> {
  AtmlocationBloc() : super(AtmlocationInitial());

  late double latitude;
  late double longtitude;

  @override
  Stream<AtmlocationState> mapEventToState(
    AtmlocationEvent event,
  ) async* {
    if (event is AtmLocationInitial) {
      yield AtmlocationLoading();
      try {
        Position position = await getcurrentlocation();
        latitude = position.latitude;
        longtitude = position.longitude;
        print(position);
        yield GetCurrentLocationSuccess();
      } catch (e) {
        yield GetCurrentLocationFaliure();
      }
    }
  }
}

Future<Position> getcurrentlocation() async {
  Position position;
  position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high);
  return Position.fromMap(position);
}
