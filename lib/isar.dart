import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'db/friend.dart';
import 'db/note.dart';
import 'db/photo.dart';
import 'db/user.dart';

late final Isar isar;

Future<Isar> initializeIzar() async {
  Directory? dir;

  try {
    dir = await getApplicationDocumentsDirectory();
  } on Exception catch (_) {
    print('fuck this');
  } finally {
    dir ??= Directory.current;
  }

  return Isar.open(
    schemas: [
      FriendSchema,
      UserSchema,
      NoteSchema,
      PhotoSchema,
    ],
    directory: dir.path,
    inspector: kDebugMode,
  );
}
