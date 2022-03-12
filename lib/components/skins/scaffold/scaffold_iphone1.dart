import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../providers.dart';
import '../concrete_skin.dart';
import '../skin.dart';
import '../widget_skins.dart';

class IPhoneScaffold extends ConsumerStatefulWidget {
  const IPhoneScaffold({Key? key, required this.bottomPages}) : super(key: key);

  final List<TabPageSkins> bottomPages;

  @override
  ConsumerState<IPhoneScaffold> createState() => _IPhoneScaffoldState();
}

class _IPhoneScaffoldState extends ConsumerState<IPhoneScaffold>
    with ConcreteSkin {
  @override
  Skin get skin => Skin.iphone1;

  @override
  Widget build(BuildContext context) {
    final current = ref.watch(bottomNavBarPage);
    final stateHolder = ref.watch(bottomNavBarPage.notifier);

    return CupertinoTabScaffold(
      tabBuilder: (context, idx) => Material(
        child: widget.bottomPages[idx].skinnedBuilder,
      ),
      tabBar: CupertinoTabBar(
        currentIndex: current,
        items: widget.bottomPages
            .map((p) => p.navigationBarItemSkins.get(skin))
            .toList(),
        onTap: (index) => stateHolder.navigateTo(index),
      ),
    );
  }
}
