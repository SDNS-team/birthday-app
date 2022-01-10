import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app_builder/bottom_nav_page_state_holder.dart';
import 'friends/contacts_interactor.dart';
import 'settigns/page/page_state.dart';
import 'settigns/page/settings_page_state_holder.dart';
import 'settigns/settings.dart';
import 'settigns/settings_interactor.dart';
import 'settigns/settings_state_holder.dart';

final settingsStateProvider =
    StateNotifierProvider<SettingsStateHolder, Settings>(
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

final settingsInteractor = Provider((ref) => SettingsInteractor());
final friendsInteractor = Provider((ref) => FriendsInteractor());
