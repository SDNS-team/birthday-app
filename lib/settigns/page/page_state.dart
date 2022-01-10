import 'package:freezed_annotation/freezed_annotation.dart';

part 'page_state.freezed.dart';

@freezed
class SettingsPageState with _$SettingsPageState {
  const factory SettingsPageState({
    @Default(false) bool isIphone1Skin,
  }) = _SettingsPageState;
}
