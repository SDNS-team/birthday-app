import 'package:core/core.dart';
import 'package:firebase_core/firebase_core.dart';

import 'app.dart';
import 'features/account/init_account.dart';
import 'features/db/init_hive.dart';
import 'features/logging/init_logging.dart';
import 'firebase_options.dart';
import 'ui/ui.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterError.demangleStackTrace = CoreTrace.demangleForFlutter;

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

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
