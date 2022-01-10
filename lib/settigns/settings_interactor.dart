import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers.dart';
import '../skin_switcher/skin.dart';

class SettingsInteractor {
  Future<void> setSkin(WidgetRef ref, bool isIPhone) async {
    final pageStateHolder = ref.watch(settingsPageStateHolder.notifier);
    pageStateHolder.setIPhone1Skin(isIPhone);

    // wait for switcher animation
    await Future<void>.delayed(const Duration(milliseconds: 300));

    final stateHolder = ref.read(settingsStateProvider.notifier);
    stateHolder.setSkin(isIPhone ? Skin.iphone1 : Skin.classic);
  }
}
