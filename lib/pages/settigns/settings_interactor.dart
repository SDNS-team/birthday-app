import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';

import '../../components/skins/skin.dart';
import '../../providers.dart';

class SettingsInteractor {
  SettingsInteractor(this.isar);
  final Isar isar;

  Future<void> setSkin(WidgetRef ref, bool isIPhone) async {
    final pageStateHolder = ref.watch(settingsPageStateHolder.notifier);
    pageStateHolder.setIPhone1Skin(isIPhone);

    // wait for switcher animation
    await Future<void>.delayed(const Duration(milliseconds: 300));

    final stateHolder = ref.read(settingsProvider.notifier);
    stateHolder.setSkin(isIPhone ? Skin.iphone1 : Skin.classic);
  }
}
