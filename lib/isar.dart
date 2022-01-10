import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart';
import 'package:isar_connect/isar_connect.dart';
import 'package:path_provider/path_provider.dart';

late final Isar isar;

Future<void> initializeIzar() async {
  if (kDebugMode) {
    initializeIsarConnect();
  }

  Directory? dir;

  try {
    dir = await getTemporaryDirectory();
  } on Exception catch (_) {
    print('fuck this');
  } finally {
    dir ??= Directory.current;
  }

  isar = await Isar.open(
    schemas: [],
    directory: dir.path,
  );
}
