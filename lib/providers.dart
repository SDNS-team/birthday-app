import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';

import 'app_builder/bottom_nav_page_state_holder.dart';
import 'pages/friends/friends_interactor.dart';
import 'pages/settigns/page/page_state.dart';
import 'pages/settigns/page/settings_page_state_holder.dart';
import 'pages/settigns/settings.dart';
import 'pages/settigns/settings_interactor.dart';
import 'pages/settigns/settings_state_holder.dart';

final settingsProvider = StateNotifierProvider<SettingsStateHolder, Settings>(
  (ref) => SettingsStateHolder(const Settings()),
);

final settingsPageStateHolder =
    StateNotifierProvider<SettingsPageStateHolder, SettingsPageState>(
  (ref) => SettingsPageStateHolder(const SettingsPageState()),
);

final bottomNavBarPage =
    StateNotifierProvider<BottomNavPageIndexStateHolder, int>(
  (ref) => BottomNavPageIndexStateHolder(0),
);

final settingsInteractor =
    Provider((ref) => SettingsInteractor(ref.watch(isarProvider)));
final friendsInteractor =
    Provider((ref) => FriendsInteractor(ref.watch(isarProvider)));

late final Provider<Isar> isarProvider;
