import 'package:core/core.dart';
import 'package:hive_flutter/hive_flutter.dart';

class InitHive extends StartupHook {
  @override
  Future<void> bootstrap() async {
    await Hive.initFlutter();
  }
}
