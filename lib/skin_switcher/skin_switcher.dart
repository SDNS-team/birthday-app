import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../components/skins/scaffold/widget_skins.dart';
import '../providers.dart';

/// Переключает скины приложения.
class SkinSwitcher extends ConsumerWidget {
  const SkinSwitcher({Key? key, required this.skinBuilder}) : super(key: key);

  final WidgetSkinBuilder skinBuilder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final skin = ref.watch(settingsStateProvider.select((s) => s.skin));

    return skinBuilder.build(skin, context);
  }
}
