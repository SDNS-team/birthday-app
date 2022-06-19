import 'package:core/core.dart';
import 'package:flutter/material.dart';

import 'app.dart';
import 'features/account/init_account.dart';
import 'features/db/init_hive.dart';
import 'features/logging/init_logging.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterError.demangleStackTrace = CoreTrace.demangleForFlutter;

  final bootstrap = Bootstrap(
    [
      InitLogging(),
      InitHive(),
      InitAccount(),
    ],
    enableLogs: true,
  );

  await bootstrap();

  runApp(const App());
}
