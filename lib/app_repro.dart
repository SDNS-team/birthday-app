import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:logging/logging.dart';

final _localLogger = Logger('Local');

Future<void> main() async {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen(print);
  runApp(const App());
}

GoRouter createRouter() => GoRouter(
      debugLogDiagnostics: true,
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const HomePage(),
        ),
      ],
    );

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = createRouter();
    return MaterialApp.router(
      routeInformationProvider: router.routeInformationProvider,
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    _localLogger.info('initState');
  }

  @override
  Widget build(BuildContext context) {
    _localLogger.info('build');
    return const Scaffold(
      body: Center(child: Text('Hello!')),
    );
  }
}
