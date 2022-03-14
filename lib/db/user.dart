import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

import 'friend.dart';
import 'photo.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
@Collection()
class User with _$User {
  User._();
  factory User({
    @Default(isarAutoIncrementId) int id,
    required String name,
    // metadata
    String? uuid,
    DateTime? createdAt,
    DateTime? updatedAt,
    @Default(false) bool deleted,
  }) = _User;

  final photo = IsarLink<Photo>();
  final friends = IsarLinks<Friend>();
}
