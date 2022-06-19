import 'package:core/core.dart';

import '../../app.dart';
import '../../ui.dart';
import '../404/unknown_page.dart';
import '../account/view/login_screen.dart';
import '../add_friend/view/add_friend_screen.dart';

final _log = Logger('Client Router');

final routerGuardProvider = Provider((ref) => RouterGuardState._());

class RouterGuardState {
  bool _isLoggedIn = false;

  RouterGuardState._();

  /// Разрешает нахождение на любых страницах кроме входа
  void login() {
    assert(!_isLoggedIn);
    _isLoggedIn = true;
  }

  /// Запрещает нахождение на любых страницах кроме входа
  void logout() {
    assert(_isLoggedIn);
    _isLoggedIn = false;
  }
}

final routerProvider = Provider(
  (ref) {
    final guard = ref.watch(routerGuardProvider);
    return GoRouter(
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
  },
);
