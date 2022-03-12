import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers.dart';
import 'widget_skins.dart';

class SkinnedBuilder extends ConsumerWidget {
  const SkinnedBuilder({
    Key? key,
    required this.skins,
  }) : super(key: key);

  final SafeSkinGetter<WidgetBuilder> skins;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final skin = ref.watch(settingsProvider.select((s) => s.skin));
    return skins.get(skin)(context);
  }
}
