import 'package:birthday_app/components/skins/scaffold/skin_scaffold.dart';
import 'package:birthday_app/providers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class IPhoneScaffold extends ConsumerStatefulWidget {
  const IPhoneScaffold({Key? key, required this.bottomPages}) : super(key: key);

  final List<TabPage> bottomPages;

  @override
  ConsumerState<IPhoneScaffold> createState() => _IPhoneScaffoldState();
}

class _IPhoneScaffoldState extends ConsumerState<IPhoneScaffold> {
  @override
  Widget build(BuildContext context) {
    final current = ref.watch(bottomNavBarPage);
    final stateHolder = ref.watch(bottomNavBarPage.notifier);

    return CupertinoTabScaffold(
      tabBuilder: (context, idx) =>
          Material(child: widget.bottomPages[idx].pageBuilder(context)),
      tabBar: CupertinoTabBar(
        currentIndex: current,
        items: widget.bottomPages.map((p) => p.navigationBarItem).toList(),
        onTap: (index) => setState(() {
          stateHolder.navigateTo(index);
        }),
      ),
    );
  }
}
