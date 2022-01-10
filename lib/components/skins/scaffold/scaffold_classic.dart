import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../providers.dart';
import '../../../skin_switcher/skin.dart';
import '../concrete_skin.dart';
import 'page_skins.dart';

class ClassicScaffold extends ConsumerStatefulWidget {
  const ClassicScaffold({Key? key, required this.bottomPages})
      : super(key: key);

  final List<TabPageSkins> bottomPages;

  @override
  ConsumerState<ClassicScaffold> createState() => _ClassicScaffoldState();
}

class _ClassicScaffoldState extends ConsumerState<ClassicScaffold>
    with ConcreteSkin {
  @override
  Skin get skin => Skin.classic;

  @override
  Widget build(BuildContext context) {
    final current = ref.watch(bottomNavBarPage);
    final stateHolder = ref.watch(bottomNavBarPage.notifier);

    return Scaffold(
      body: widget.bottomPages[current].skins.build(skin, context),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: current,
        items: widget.bottomPages.map((p) => p.navigationBarItem).toList(),
        onTap: (index) => setState(() => stateHolder.navigateTo(index)),
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}
