// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'friend.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Friend _$FriendFromJson(Map<String, dynamic> json) {
  return _Friend.fromJson(json);
}

/// @nodoc
mixin _$Friend {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime get birthday => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<Note> get notes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FriendCopyWith<Friend> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendCopyWith<$Res> {
  factory $FriendCopyWith(Friend value, $Res Function(Friend) then) =
      _$FriendCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      DateTime birthday,
      String? description,
      List<Note> notes});
}

/// @nodoc
class _$FriendCopyWithImpl<$Res> implements $FriendCopyWith<$Res> {
  _$FriendCopyWithImpl(this._value, this._then);

  final Friend _value;
  // ignore: unused_field
  final $Res Function(Friend) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? birthday = freezed,
    Object? description = freezed,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: birthday == freezed
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
    ));
  }
}

/// @nodoc
abstract class _$$_FriendCopyWith<$Res> implements $FriendCopyWith<$Res> {
  factory _$$_FriendCopyWith(_$_Friend value, $Res Function(_$_Friend) then) =
      __$$_FriendCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      DateTime birthday,
      String? description,
      List<Note> notes});
}

/// @nodoc
class __$$_FriendCopyWithImpl<$Res> extends _$FriendCopyWithImpl<$Res>
    implements _$$_FriendCopyWith<$Res> {
  __$$_FriendCopyWithImpl(_$_Friend _value, $Res Function(_$_Friend) _then)
      : super(_value, (v) => _then(v as _$_Friend));

  @override
  _$_Friend get _value => super._value as _$_Friend;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? birthday = freezed,
    Object? description = freezed,
    Object? notes = freezed,
  }) {
    return _then(_$_Friend(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: birthday == freezed
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: notes == freezed
          ? _value._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Friend implements _Friend {
  _$_Friend(
      {required this.id,
      required this.name,
      required this.birthday,
      this.description,
      required final List<Note> notes})
      : _notes = notes;

  factory _$_Friend.fromJson(Map<String, dynamic> json) =>
      _$$_FriendFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final DateTime birthday;
  @override
  final String? description;
  final List<Note> _notes;
  @override
  List<Note> get notes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notes);
  }

  @override
  String toString() {
    return 'Friend(id: $id, name: $name, birthday: $birthday, description: $description, notes: $notes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Friend &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.birthday, birthday) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other._notes, _notes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(birthday),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(_notes));

  @JsonKey(ignore: true)
  @override
  _$$_FriendCopyWith<_$_Friend> get copyWith =>
      __$$_FriendCopyWithImpl<_$_Friend>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FriendToJson(this);
  }
}

abstract class _Friend implements Friend {
  factory _Friend(
      {required final String id,
      required final String name,
      required final DateTime birthday,
      final String? description,
      required final List<Note> notes}) = _$_Friend;

  factory _Friend.fromJson(Map<String, dynamic> json) = _$_Friend.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  DateTime get birthday => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  List<Note> get notes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FriendCopyWith<_$_Friend> get copyWith =>
      throw _privateConstructorUsedError;
}
