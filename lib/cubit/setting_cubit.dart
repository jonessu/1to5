import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

part 'setting_state.dart';

class SettingCubit extends Cubit<SettingState> {
  SettingCubit()
      : super(
          SettingState(
            everything_value: false,
            atm_value: false,
            online_value: false,
            retail_value: false,
            tab_value: false,
          ),
        );

  void toggleEvery_value(bool newvalue) =>
      emit(state.copyWith(everyting: newvalue));
}
