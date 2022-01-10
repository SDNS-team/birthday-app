import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../components/skins/scaffold/page_skins.dart';
import '../components/skins/scaffold/scaffold_classic.dart';
import '../components/skins/scaffold/scaffold_iphone1.dart';
import '../friends/page/friends_classic.dart';
import '../friends/page/friends_ipone1.dart';
import '../providers.dart';
import '../settigns/page/settings_classic.dart';
import '../settigns/page/settings_iphone1.dart';
import '../skin_switcher/skin.dart';
import '../skin_switcher/skin_switcher.dart';

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

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const friendsTabIcon = BottomNavigationBarItem(
      icon: Icon(Icons.ac_unit),
      label: '',
    );
    const settingsTabIcon = BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: '',
    );

    final fInteractor = ref.watch(friendsInteractor);
    final sInteractor = ref.watch(settingsInteractor);

    final friendsPage = TabPageSkins(
      navigationBarItem: friendsTabIcon,
      skins: PageSkins(
        {
          Skin.classic: (context) => FriendsPage(interactor: fInteractor),
          Skin.iphone1: (context) =>
              FriendsIphone1Page(interactor: fInteractor),
        },
      ),
    );

    final settingsPage = TabPageSkins(
      navigationBarItem: settingsTabIcon,
      skins: PageSkins(
        {
          Skin.classic: (context) => SettingsPage(interactor: sInteractor),
          Skin.iphone1: (context) =>
              SettingsIphone1Page(interactor: sInteractor),
        },
      ),
    );

    final pages = [friendsPage, settingsPage];

    return SkinSwitcher(
      skins: {
        Skin.classic: (context) => ClassicScaffold(bottomPages: pages),
        Skin.iphone1: (context) => IPhoneScaffold(bottomPages: pages),
      },
    );
  }
}
