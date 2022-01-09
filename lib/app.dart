import 'package:birthday_app/components/skins/scaffold/scaffold_classic.dart';
import 'package:birthday_app/components/skins/scaffold/scaffold_iphone1.dart';
import 'package:birthday_app/components/skins/scaffold/skin_scaffold.dart';
import 'package:birthday_app/friends/page/friends_ipone1.dart';
import 'package:birthday_app/settigns/page/settings_classic.dart';
import 'package:birthday_app/settigns/page/settings_iphone1.dart';
import 'package:birthday_app/settigns/settings_interactor.dart';
import 'package:birthday_app/skin_switcher.dart';
import 'package:flutter/material.dart';

import 'friends/contacts_interactor.dart';
import 'friends/page/friends_classic.dart';
import 'settigns/settings.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Birthday App Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SkinSwitcher(
      skins: {
        Skin.classic: (context) => ClassicScaffold(
              bottomPages: [
                TabPage(
                  (context) => FriendsPage(
                    interactor: FriendsInteractor(),
                  ),
                  const BottomNavigationBarItem(
                      icon: Icon(Icons.ac_unit), label: ''),
                ),
                TabPage(
                  (context) => SettingsPage(
                    interactor: SettingsInteractor(),
                  ),
                  const BottomNavigationBarItem(
                      icon: Icon(Icons.settings), label: ''),
                ),
              ],
            ),
        Skin.iphone1: (context) => IPhoneScaffold(
              bottomPages: [
                TabPage(
                  (context) => FriendsIphone1Page(
                    interactor: FriendsInteractor(),
                  ),
                  const BottomNavigationBarItem(
                      icon: Icon(Icons.ac_unit), label: ''),
                ),
                TabPage(
                  (context) => SettingsIphone1Page(
                    interactor: SettingsInteractor(),
                  ),
                  const BottomNavigationBarItem(
                      icon: Icon(Icons.settings), label: ''),
                ),
              ],
            ),
      },
    );
  }
}
