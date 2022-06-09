import 'package:freezed_annotation/freezed_annotation.dart';

import 'note.dart';

part 'friend.freezed.dart';
part 'friend.g.dart';

@freezed
class Friend with _$Friend {
  factory Friend({
    required String id,
    required String name,
    required DateTime birthday,
    String? description,
    required List<Note> notes,
  }) = _Friend;

  factory Friend.fromJson(Map<String, dynamic> json) => _$FriendFromJson(json);
}
