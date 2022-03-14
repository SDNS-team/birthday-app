import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

import 'note.dart';
import 'photo.dart';
import 'user.dart';

part 'friend.freezed.dart';
part 'friend.g.dart';

@freezed
@Collection()
class Friend with _$Friend {
  Friend._();
  factory Friend({
    @Default(isarAutoIncrementId) int id,
    required String name,
    required DateTime birthday,
    String? phoneCode,
    int? phone,
    String? description,
    // metadata
    String? uuid,
    DateTime? createdAt,
    DateTime? updatedAt,
    @Default(false) bool deleted,
  }) = _Friend;

  @Index()
  int get birthdaySorting => birthday.month * 100 + birthday.day;
  int get idMirror => id;

  final photo = IsarLink<Photo>();
  @Backlink(to: 'friends')
  final owner = IsarLink<User>();
  final notes = IsarLinks<Note>();
}
