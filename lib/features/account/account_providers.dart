import 'package:api_mock/api_mock.dart';

import '../../ui.dart';
import '../router/router.dart';

final loggedInProvider = Provider((ref) => ref.watch(tokensProvider) != null);

final tokensProvider = StateProvider<Tokens?>((ref) => null);

final userProvider = StateProvider<User>(
  (ref) => User.anonymous(),
);

final apiProvider = Provider.autoDispose((ref) {
  final user = ref.watch(userProvider);
  final api = MockApi(user);
  ref.onDispose(api.dispose);
  return api;
});

final loginInteractorProvider =
    Provider.autoDispose((ref) => LoginInteractor(ref.read));

class LoginInteractor {
  final Reader _read;
  const LoginInteractor(this._read);

  Future<void> login() async {
    _read(userProvider.notifier).state = const User(
      id: '__fake__',
      email: 'fake@email.com',
      name: 'Крутой перец 💪',
    );
    _read(tokensProvider.notifier).state = const Tokens(
      accessToken: 'hello',
      refreshToken: 'world',
    );

    _read(routerGuardProvider).login();
  }

  Future<void> logout(BuildContext context) async {
    _read(routerGuardProvider).logout();
    // Run redirects to send user to login page
    GoRouter.of(context).refresh();
  }
}
