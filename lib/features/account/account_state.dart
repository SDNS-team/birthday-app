import 'package:api_mock/api_mock.dart';
import 'package:core/core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

import '../db/hive.dart';

final loggedInProvider = Provider((ref) => ref.watch(tokensProvider) != null);

final tokensProvider = StateProvider<Tokens?>((ref) => null);

final loginInteractorProvider =
    Provider.autoDispose((ref) => LoginInteractor());

Future<void> restoreLogin() async {}

class LoginInteractor {}

class InitAccount extends StartupHook {
  @override
  Future<void> bootstrap() async {
    await Hive.openBox<Map>('login_data');
  }

  @override
  Set<Type> deps() => {InitHive};
}
