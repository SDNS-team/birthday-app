import 'package:hive_flutter/hive_flutter.dart';

import '../bootstrap/bootstrap.dart';

class RestoreHive extends StartupHook {
  @override
  Future<void> bootstrap() async {
    await Hive.initFlutter();
  }
}
