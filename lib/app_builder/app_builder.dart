import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../components/skins/scaffold/scaffold_classic.dart';
import '../components/skins/scaffold/scaffold_iphone1.dart';
import '../components/skins/skin_builder.dart';
import '../components/skins/widget_skins.dart';
import '../pages/friends/page/friends_classic.dart';
import '../pages/friends/page/friends_ipone1.dart';
import '../pages/settigns/page/settings_classic.dart';
import '../pages/settigns/page/settings_iphone1.dart';
import '../providers.dart';

class AppBuilder extends StatefulWidget {
  const AppBuilder({Key? key}) : super(key: key);

  @override
  State<AppBuilder> createState() => _AppBuilderState();
}

class _AppBuilderState extends State<AppBuilder> {
  @override
  Widget build(BuildContext context) {
    return const BottomNavBuilder();
  }
}

class BottomNavBuilder extends ConsumerWidget {
  const BottomNavBuilder({Key? key}) : super(key: key);

  BottomNavigationBarItem _navItem(IconData icon, String label) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fInteractor = ref.watch(friendsInteractor);
    final sInteractor = ref.watch(settingsInteractor);

    final friendsPage = TabPageSkins(
      navigationBarItemSkins: SafeSkinGetter(
        classic: _navItem(Icons.contacts, 'Friends'),
        iphone1: _navItem(CupertinoIcons.person_2, 'Friends'),
      ),
      skinnedBuilder: SkinnedBuilder(
        skins: SafeSkinGetter(
          classic: (context) => FriendsPage(interactor: fInteractor),
          iphone1: (context) => FriendsIphone1Page(interactor: fInteractor),
        ),
      ),
    );

    final settingsPage = TabPageSkins(
      navigationBarItemSkins: SafeSkinGetter(
        classic: _navItem(Icons.settings, 'Settings'),
        iphone1: _navItem(CupertinoIcons.settings, 'Settings'),
      ),
      skinnedBuilder: SkinnedBuilder(
        skins: SafeSkinGetter(
          classic: (context) => SettingsPage(interactor: sInteractor),
          iphone1: (context) => SettingsIphone1Page(interactor: sInteractor),
        ),
      ),
    );

    final pages = [friendsPage, settingsPage];

    return SkinnedBuilder(
      skins: SafeSkinGetter(
        classic: (context) => ClassicScaffold(bottomPages: pages),
        iphone1: (context) => IPhoneScaffold(bottomPages: pages),
      ),
    );
  }
}
