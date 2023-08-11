import 'package:core/core.dart';

import '../../screens/404/unknown_page.dart';
import '../../screens/add_friend/view/add_friend_screen.dart';
import '../../screens/home/home_screen.dart';
import '../../screens/login/login_screen.dart';
import '../../ui/ui.dart';
import '../account/account_providers.dart';

final _log = Logger('Client Router');

final routerGuardProvider = Provider(
  (ref) {
    return RouterGuardState._();
  },
  name: 'routerGuardProvider',
);

class RouterGuardState {
  final _log = Logger('RouterGuardState');
  bool _isLoggedIn = false;

  RouterGuardState._();

  /// Разрешает нахождение на любых страницах кроме входа
  void login() {
    _log.info('Called login()');
    _isLoggedIn = true;
  }

  /// Запрещает нахождение на любых страницах кроме входа
  void logout() {
    _log.info('Called logout()');
    _isLoggedIn = false;
  }
}

final routerProvider = Provider(
  (ref) {
    final guard = ref.watch(routerGuardProvider);

    final router = GoRouter(
      debugLogDiagnostics: false,
      redirect: (state) {
        final loggedIn = guard._isLoggedIn;
        final isOnLofinScreen = state.subloc == '/login';
        if (!loggedIn && !isOnLofinScreen) {
          return state.namedLocationTyped(LoginRouteData(state.location));
        }
        if (loggedIn && isOnLofinScreen) return '/';
        return null;
      },
      routes: [
        GoRoute(
          path: '/',
          redirect: (state) {
            const defaultData = HomeRouteData(HomeTab.friends);
            final loc = state.namedLocationTyped(defaultData);
            return loc;
          },
        ),
        // должен быть над 'home' чтобы login не стал названием вкладки:)
        GoRoute(
          name: 'login',
          path: '/login',
          builder: (context, state) => LoginScreen(
            LoginRouteData.fromState(state),
          ),
        ),
        GoRoute(
          name: 'home',
          path: '/:tab',
          builder: (context, state) {
            final routeData = HomeRouteData.fromState(state);
            return HomeScreen(tabIndex: routeData.index);
          },
          routes: [
            GoRoute(
              name: 'add_friend',
              path: 'add',
              builder: (context, state) => const AddFriendScreen(),
            ),
          ],
        ),
      ],
      errorBuilder: (context, state) {
        _log.severe('Routing error', state.error, StackTrace.current);
        return UnknownPage(routeName: state.name);
      },
    );

    ref.listen<bool>(
      loggedInProvider,
      (prev, next) {
        guard._isLoggedIn = next;
        if (prev != next) router.refresh();
      },
    );

    return router;
  },
  name: 'routerProvider',
);
