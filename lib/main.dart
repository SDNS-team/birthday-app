import 'package:birthday_app/features/account/account_state.dart';
import 'package:birthday_app/features/db/hive.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final bootstrap = Bootstrap(
    [InitHive(), InitAccount()],
    enableLogs: true,
  );

  await bootstrap();

  runApp(const App());
}
