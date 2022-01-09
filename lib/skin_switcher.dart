import 'package:birthday_app/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'settigns/settings.dart';

/// Переключает скины приложения.
class SkinSwitcher extends ConsumerWidget {
  const SkinSwitcher({Key? key, required this.skins}) : super(key: key);

  final Map<Skin, WidgetBuilder> skins;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final skin = ref.watch(settingsStateProvider.select((s) => s.skin));

    final builder = skins[skin];
    if (builder != null) {
      return builder(context);
    }
    return const _UnknownSkin();
  }
}

class _UnknownSkin extends StatelessWidget {
  const _UnknownSkin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('😢'),
      ),
      body: const Center(
        child: Text('Unknown Skin!'),
      ),
    );
  }
}
