import 'package:birthday_app/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'settings.dart';

class SettingsInteractor {
  void setSkin(WidgetRef ref, Skin skin) {
    final stateHolder = ref.read(settingsStateProvider.notifier);
    stateHolder.setSkin(skin);
  }
}
