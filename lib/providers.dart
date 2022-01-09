import 'package:birthday_app/settigns/settings_state_holder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'bottom_nav_page_state_holder.dart';
import 'settigns/settings.dart';

final settingsStateProvider =
    StateNotifierProvider<SettingsStateHolder, Settings>(
  (ref) => SettingsStateHolder(const Settings()),
);

final bottomNavBarPage =
    StateNotifierProvider<BottomNavPageIndexStateHolder, int>(
  (ref) => BottomNavPageIndexStateHolder(0),
);
