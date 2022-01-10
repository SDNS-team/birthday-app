import 'package:flutter/material.dart';

import '../../../skin_switcher/skin.dart';

class TabPageSkins {
  final BottomNavigationBarItem navigationBarItem;
  final PageSkins skins;

  const TabPageSkins({required this.navigationBarItem, required this.skins});
}

class PageSkins {
  final Map<Skin, WidgetBuilder> skins;

  const PageSkins(this.skins);

  Widget build(Skin skin, BuildContext context) {
    final builder = skins[skin];
    if (builder == null) {
      throw SkinNotFound(skin);
    }

    return builder(context);
  }
}

class SkinNotFound extends Error {
  final Skin skin;

  SkinNotFound(this.skin);

  @override
  String toString() {
    return 'No widget found for $skin!';
  }
}
