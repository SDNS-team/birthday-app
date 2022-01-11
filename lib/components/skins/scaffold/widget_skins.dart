import 'package:flutter/material.dart';

import '../../../skin_switcher/skin.dart';

class TabPageSkins {
  final SafeSkinGetter<BottomNavigationBarItem> navigationBarItemSkins;
  final WidgetSkinBuilder skins;

  const TabPageSkins({
    required this.navigationBarItemSkins,
    required this.skins,
  });
}

class WidgetSkinBuilder {
  final SafeSkinGetter<WidgetBuilder> skins;

  const WidgetSkinBuilder(this.skins);

  Widget build(Skin skin, BuildContext context) {
    final builder = skins.get(skin);

    return builder(context);
  }
}

class SafeSkinGetter<T> {
  final T classic;
  final T iphone1;

  const SafeSkinGetter({required this.classic, required this.iphone1});

  T get(Skin skin) {
    switch (skin) {
      case Skin.classic:
        return classic;
      case Skin.iphone1:
        return iphone1;
    }
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
