import 'package:birthday_app/components/skins/scaffold/skin_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../providers.dart';

class ClassicScaffold extends ConsumerStatefulWidget {
  const ClassicScaffold({Key? key, required this.bottomPages})
      : super(key: key);

  final List<TabPage> bottomPages;

  @override
  ConsumerState<ClassicScaffold> createState() => _ClassicScaffoldState();
}

class _ClassicScaffoldState extends ConsumerState<ClassicScaffold> {
  @override
  Widget build(BuildContext context) {
    final current = ref.watch(bottomNavBarPage);
    final stateHolder = ref.watch(bottomNavBarPage.notifier);

    return Scaffold(
      body: widget.bottomPages[current].pageBuilder(context),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: current,
        items: widget.bottomPages.map((p) => p.navigationBarItem).toList(),
        onTap: (index) => setState(() {
          stateHolder.navigateTo(index);
        }),
      ),
    );
  }
}
