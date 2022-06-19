import 'package:core/core.dart';
import 'package:hive/hive.dart';

import '../db/init_hive.dart';

class InitAccount extends StartupHook {
  @override
  Future<void> bootstrap() async {
    await Hive.openBox<Map>('login_data');
  }

  @override
  Set<Type> deps() => {InitHive};
}
