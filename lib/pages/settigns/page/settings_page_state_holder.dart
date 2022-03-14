import 'package:state_notifier/state_notifier.dart';

import 'page_state.dart';

class SettingsPageStateHolder extends StateNotifier<SettingsPageState> {
  SettingsPageStateHolder(SettingsPageState state) : super(state);

  void setIPhone1Skin(bool value) =>
      state = state.copyWith(isIphone1Skin: value);
}
