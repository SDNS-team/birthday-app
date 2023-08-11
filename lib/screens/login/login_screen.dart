import '../../features/account/account_providers.dart';
import '../../features/account/sign_in/google_sign_in_provider.dart';
import '../../ui/ui.dart';

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
    final interactor = ref.watch(loginInteractorProvider);
    return CupertinoPageScaffold(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CupertinoButton.filled(
              onPressed: () {
                interactor
                    .login(GoogleSignInProvider())
                    .then((_) => context.goToLocation(data.from ?? '/'));
              },
              child: const Text('Залогиниться ➡️'),
            ),
          ],
        ),
      ),
    );
  }
}
