import 'package:core/core.dart';

import 'features/router/router.dart';
import 'ui/ui.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      observers: [_ProviderObserver()],
      child: Consumer(
        builder: (context, ref, child) {
          final router = ref.watch(routerProvider);

          return CupertinoApp.router(
            debugShowCheckedModeBanner: false,
            // routeInformationProvider: router.routeInformationProvider,
            routeInformationParser: router.routeInformationParser,
            routerDelegate: router.routerDelegate,
          );
        },
      ),
    );
  }
}

final _log = Logger('Providers');

class _ProviderObserver implements ProviderObserver {
  @override
  void didAddProvider(
      ProviderBase provider, Object? value, ProviderContainer container) {
    _log.info('Added ${provider.name} with $value');
  }

  @override
  void didDisposeProvider(ProviderBase provider, ProviderContainer container) {
    _log.info('Disposed ${provider.name}');
  }

  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    _log.info('Updated ${provider.name}: $previousValue -> $newValue');
  }

  @override
  void providerDidFail(
    ProviderBase provider,
    Object error,
    StackTrace stackTrace,
    ProviderContainer container,
  ) {
    _log.severe('${provider.name} throwed:\n$error\n$stackTrace');
  }
}
