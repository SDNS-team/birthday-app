import 'package:api_mock/api_mock.dart';
import 'package:core/core.dart';
import 'package:firebase_auth/firebase_auth.dart' as fire;

import '../../ui/ui.dart';
import '../router/router.dart';
import 'sign_in/sign_in_provider.dart';

final _log = Logger('Account');

final loggedInProvider = Provider(
    (ref) => ref
        .watch(_fireUserProvider)
        .maybeWhen(data: (u) => u != null, orElse: () => false),
    name: 'loggedInProvider');

final tokensProvider = FutureProvider<Tokens?>(
  (ref) async {
    final fireUser = ref.watch(_fireUserProvider);
    return await fireUser.maybeWhen(
      data: (fUser) async {
        if (fUser == null) return null;
        final refresh = fUser.refreshToken;
        final access = await fUser.getIdToken();
        if (refresh == null) {
          throw ChainedException.origin('Refresh token was null');
        }

        return Tokens(accessToken: access, refreshToken: refresh);
      },
      orElse: () => Future.value(),
    );
  },
  name: 'tokensProvider',
);

final userProvider = FutureProvider.autoDispose<User>(
  (ref) async {
    final fireUser = ref.watch(_fireUserProvider);
    return await fireUser.maybeWhen(
      data: (fUser) async {
        if (fUser == null) return User.anonymous();
        _log.info(fUser);
        final token = await fUser.getIdToken();
        return ref.watch(loginApiProvider).me(token);
      },
      orElse: () => Future.value(User.anonymous()),
    );
  },
  name: 'userProvider',
);

final _fireUserProvider = StreamProvider<fire.User?>(
  (ref) {
    return fire.FirebaseAuth.instance.idTokenChanges();
  },
  name: '_fireUserProvider',
);

final apiProvider = FutureProvider.autoDispose<Api>(
  (ref) async {
    final user = await ref.watch(userProvider.future);
    final api = MockApi(user);
    ref.onDispose(api.dispose);
    return api;
  },
  name: 'apiProvider',
);

final loginApiProvider = Provider.autoDispose<LoginApi>(
  (ref) => const MockLoginApi(
    User(
      id: '__fake__',
      email: 'fake@email.com',
      name: 'Крутой перец 💪',
    ),
  ),
  name: 'loginApiProvider',
);

final loginInteractorProvider = Provider.autoDispose(
  (ref) => LoginInteractor(ref.read),
  name: 'loginInteractorProvider',
);

class LoginInteractor {
  final Reader _read;
  const LoginInteractor(this._read);

  Future<void> login(SignInProvider signInProvider) async {
    await signInProvider.signIn();

    _read(routerGuardProvider).login();
  }

  Future<void> logout() async {
    await fire.FirebaseAuth.instance.signOut();
    _read(routerGuardProvider).logout();
    _read(routerProvider).refresh();
  }
}
