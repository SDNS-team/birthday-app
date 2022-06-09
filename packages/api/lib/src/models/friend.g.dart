// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friend.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Friend _$$_FriendFromJson(Map<String, dynamic> json) => _$_Friend(
      id: json['id'] as String,
      name: json['name'] as String,
      birthday: DateTime.parse(json['birthday'] as String),
      description: json['description'] as String?,
      notes: (json['notes'] as List<dynamic>)
          .map((e) => Note.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FriendToJson(_$_Friend instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'birthday': instance.birthday.toIso8601String(),
      'description': instance.description,
      'notes': instance.notes,
    };
