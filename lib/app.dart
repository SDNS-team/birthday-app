import 'package:birthday_app/features/account/account_providers.dart';
import 'package:birthday_app/features/router/router.dart';

import 'ui.dart';

class AppState extends ChangeNotifier {
  bool _isLoggedIn = false;

  AppState._();
  static final instance = AppState._();

  bool get isLoggedIn => _isLoggedIn;

  void login() {
    _isLoggedIn = true;
    notifyListeners();
  }

  void logout() {
    _isLoggedIn = false;
    notifyListeners();
  }
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: CupertinoApp.router(
        debugShowCheckedModeBanner: false,
        routeInformationParser: router.routeInformationParser,
        routerDelegate: router.routerDelegate,
      ),
    );
  }
}

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final username = ref.watch(userProvider.select((u) => u.name));

    return CupertinoPageScaffold(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Ура! Вы залогинились как $username'),
            const SizedBox(height: 16 * 3),
            CupertinoButton.filled(
              child: const Text('Выйти вон 🚪'),
              onPressed: () => AppState.instance.logout(),
            ),
          ],
        ),
      ),
    );
  }
}
