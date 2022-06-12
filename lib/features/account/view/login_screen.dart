import 'package:api_mock/api_mock.dart';
import 'package:birthday_app/features/account/account_providers.dart';

import '../../../app.dart';
import '../../../ui.dart';

class LoginRouteData extends TypedRouteData {
  const LoginRouteData(this.from);
  LoginRouteData.fromState(GoRouterState state)
      : from = state.typedParams.queryString('from');

  final String? from;

  @override
  String name() => 'login';

  @override
  TypedParamsBuilder get query => TypedParamsBuilder()..withParam('from', from);
}

class LoginScreen extends HookConsumerWidget {
  const LoginScreen(this.data, {super.key});

  final LoginRouteData data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CupertinoPageScaffold(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CupertinoButton.filled(
              child: const Text('Залогиниться ➡️'),
              onPressed: () => _login(ref, 'Крутой перец 💪'),
            ),
          ],
        ),
      ),
    );
  }

  void _login(WidgetRef ref, String name) {
    ref.read(userProvider.notifier).state = User(
      id: '__fake__',
      email: 'fake@email.com',
      name: name,
    );
    ref.read(tokensProvider.notifier).state = const Tokens(
      accessToken: 'hello',
      refreshToken: 'world',
    );

    AppState.instance.login();
  }
}
