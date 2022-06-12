import 'package:birthday_app/app.dart';
import 'package:birthday_app/features/404/unknown_page.dart';
import 'package:birthday_app/features/account/view/login_screen.dart';
import 'package:flutter/foundation.dart';

import '../../ui.dart';

final router = GoRouter(
  debugLogDiagnostics: kDebugMode,
  refreshListenable: AppState.instance,
  redirect: (state) {
    final loggedIn = AppState.instance.isLoggedIn;
    final loginLocation = state.namedLocation('login');
    final isOnLofinScreen = state.subloc == loginLocation;
    if (!loggedIn && !isOnLofinScreen) return loginLocation;
    if (loggedIn && isOnLofinScreen) return '/';
    return null;
  },
  routes: [
    GoRoute(
      name: 'home',
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      name: 'login',
      path: '/login',
      builder: (context, state) => LoginScreen(
        LoginRouteData.fromState(state),
      ),
    ),
  ],
  errorBuilder: (context, state) {
    print(state.error);
    return UnknownPage(routeName: state.name);
  },
);
