import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

import 'friend.dart';

part 'note.freezed.dart';
part 'note.g.dart';

@freezed
@Collection()
class Note with _$Note {
  Note._();
  factory Note({
    @Default(isarAutoIncrementId) int id,
    required String title,
    required String description,
    // metadata
    String? uuid,
    DateTime? createdAt,
    DateTime? updatedAt,
    @Default(false) bool deleted,
  }) = _Note;

  @Backlink(to: 'notes')
  final friend = IsarLink<Friend>();
}
