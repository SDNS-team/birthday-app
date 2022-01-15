import 'package:flutter/material.dart';

import 'skin.dart';
import 'skin_builder.dart';

class TabPageSkins {
  final SafeSkinGetter<BottomNavigationBarItem> navigationBarItemSkins;
  final SkinnedBuilder skinnedBuilder;

  const TabPageSkins({
    required this.navigationBarItemSkins,
    required this.skinnedBuilder,
  });
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
