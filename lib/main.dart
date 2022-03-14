import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app_builder/app.dart';
import 'isar.dart';
import 'providers.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final isar = await initializeIzar();

  isarProvider = Provider((ref) => isar);
  runApp(const App());
}
