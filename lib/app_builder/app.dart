import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app_builder.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Birthday App Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const AppBuilder(),
      ),
    );
  }
}
