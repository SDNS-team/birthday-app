import 'package:state_notifier/state_notifier.dart';

import 'settings.dart';

class SettingsStateHolder extends StateNotifier<Settings> {
  SettingsStateHolder(Settings state) : super(state);

  void setSkin(Skin skin) => state = state.copyWith(skin: skin);
}