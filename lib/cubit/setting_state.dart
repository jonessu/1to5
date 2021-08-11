part of 'setting_cubit.dart';

class SettingState extends Equatable {
  // ignore: non_constant_identifier_names
  final bool everything_value;
  final bool atm_value;
  final bool retail_value;
  final bool online_value;
  final bool tab_value;

  const SettingState({
    required this.everything_value,
    required this.atm_value,
    required this.retail_value,
    required this.online_value,
    required this.tab_value,
  });

  SettingState copyWith({
    required bool everyting,
  }) {
    return SettingState(
      everything_value: everything_value ?? this.everything_value,
      atm_value: atm_value ?? this.atm_value,
      retail_value: retail_value ?? this.retail_value,
      online_value: online_value ?? this.online_value,
      tab_value: tab_value ?? this.tab_value,
    );
  }

  @override
  List<Object> get props => [
        everything_value,
        atm_value,
        retail_value,
        online_value,
        tab_value,
      ];
}
