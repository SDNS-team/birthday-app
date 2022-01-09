import 'package:flutter/material.dart';

class TabPage {
  final WidgetBuilder pageBuilder;
  final BottomNavigationBarItem navigationBarItem;

  const TabPage(this.pageBuilder, this.navigationBarItem);
}

abstract class SkinScaffold {
  WidgetBuilder get builder;
  Widget build(BuildContext context);
  Widget buildScaffold(BuildContext context, covariant Widget bottomNavBar);
}
