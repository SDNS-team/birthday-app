// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'filters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DateTimeFilter {
  DateTime? get equals => throw _privateConstructorUsedError;
  List<DateTime>? get inList => throw _privateConstructorUsedError;
  List<DateTime>? get notInList => throw _privateConstructorUsedError;
  DateTime? get lt => throw _privateConstructorUsedError;
  DateTime? get lte => throw _privateConstructorUsedError;
  DateTime? get gt => throw _privateConstructorUsedError;
  DateTime? get gte => throw _privateConstructorUsedError;
  DateTimeFilter? get not => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DateTimeFilterCopyWith<DateTimeFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateTimeFilterCopyWith<$Res> {
  factory $DateTimeFilterCopyWith(
          DateTimeFilter value, $Res Function(DateTimeFilter) then) =
      _$DateTimeFilterCopyWithImpl<$Res>;
  $Res call(
      {DateTime? equals,
      List<DateTime>? inList,
      List<DateTime>? notInList,
      DateTime? lt,
      DateTime? lte,
      DateTime? gt,
      DateTime? gte,
      DateTimeFilter? not});

  $DateTimeFilterCopyWith<$Res>? get not;
}

/// @nodoc
class _$DateTimeFilterCopyWithImpl<$Res>
    implements $DateTimeFilterCopyWith<$Res> {
  _$DateTimeFilterCopyWithImpl(this._value, this._then);

  final DateTimeFilter _value;
  // ignore: unused_field
  final $Res Function(DateTimeFilter) _then;

  @override
  $Res call({
    Object? equals = freezed,
    Object? inList = freezed,
    Object? notInList = freezed,
    Object? lt = freezed,
    Object? lte = freezed,
    Object? gt = freezed,
    Object? gte = freezed,
    Object? not = freezed,
  }) {
    return _then(_value.copyWith(
      equals: equals == freezed
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      inList: inList == freezed
          ? _value.inList
          : inList // ignore: cast_nullable_to_non_nullable
              as List<DateTime>?,
      notInList: notInList == freezed
          ? _value.notInList
          : notInList // ignore: cast_nullable_to_non_nullable
              as List<DateTime>?,
      lt: lt == freezed
          ? _value.lt
          : lt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lte: lte == freezed
          ? _value.lte
          : lte // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gt: gt == freezed
          ? _value.gt
          : gt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gte: gte == freezed
          ? _value.gte
          : gte // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      not: not == freezed
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
    ));
  }

  @override
  $DateTimeFilterCopyWith<$Res>? get not {
    if (_value.not == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.not!, (value) {
      return _then(_value.copyWith(not: value));
    });
  }
}

/// @nodoc
abstract class _$$_DateTimeFilterCopyWith<$Res>
    implements $DateTimeFilterCopyWith<$Res> {
  factory _$$_DateTimeFilterCopyWith(
          _$_DateTimeFilter value, $Res Function(_$_DateTimeFilter) then) =
      __$$_DateTimeFilterCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime? equals,
      List<DateTime>? inList,
      List<DateTime>? notInList,
      DateTime? lt,
      DateTime? lte,
      DateTime? gt,
      DateTime? gte,
      DateTimeFilter? not});

  @override
  $DateTimeFilterCopyWith<$Res>? get not;
}

/// @nodoc
class __$$_DateTimeFilterCopyWithImpl<$Res>
    extends _$DateTimeFilterCopyWithImpl<$Res>
    implements _$$_DateTimeFilterCopyWith<$Res> {
  __$$_DateTimeFilterCopyWithImpl(
      _$_DateTimeFilter _value, $Res Function(_$_DateTimeFilter) _then)
      : super(_value, (v) => _then(v as _$_DateTimeFilter));

  @override
  _$_DateTimeFilter get _value => super._value as _$_DateTimeFilter;

  @override
  $Res call({
    Object? equals = freezed,
    Object? inList = freezed,
    Object? notInList = freezed,
    Object? lt = freezed,
    Object? lte = freezed,
    Object? gt = freezed,
    Object? gte = freezed,
    Object? not = freezed,
  }) {
    return _then(_$_DateTimeFilter(
      equals: equals == freezed
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      inList: inList == freezed
          ? _value._inList
          : inList // ignore: cast_nullable_to_non_nullable
              as List<DateTime>?,
      notInList: notInList == freezed
          ? _value._notInList
          : notInList // ignore: cast_nullable_to_non_nullable
              as List<DateTime>?,
      lt: lt == freezed
          ? _value.lt
          : lt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lte: lte == freezed
          ? _value.lte
          : lte // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gt: gt == freezed
          ? _value.gt
          : gt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gte: gte == freezed
          ? _value.gte
          : gte // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      not: not == freezed
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
    ));
  }
}

/// @nodoc

class _$_DateTimeFilter implements _DateTimeFilter {
  const _$_DateTimeFilter(
      {this.equals,
      final List<DateTime>? inList,
      final List<DateTime>? notInList,
      this.lt,
      this.lte,
      this.gt,
      this.gte,
      this.not})
      : _inList = inList,
        _notInList = notInList;

  @override
  final DateTime? equals;
  final List<DateTime>? _inList;
  @override
  List<DateTime>? get inList {
    final value = _inList;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DateTime>? _notInList;
  @override
  List<DateTime>? get notInList {
    final value = _notInList;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTime? lt;
  @override
  final DateTime? lte;
  @override
  final DateTime? gt;
  @override
  final DateTime? gte;
  @override
  final DateTimeFilter? not;

  @override
  String toString() {
    return 'DateTimeFilter(equals: $equals, inList: $inList, notInList: $notInList, lt: $lt, lte: $lte, gt: $gt, gte: $gte, not: $not)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DateTimeFilter &&
            const DeepCollectionEquality().equals(other.equals, equals) &&
            const DeepCollectionEquality().equals(other._inList, _inList) &&
            const DeepCollectionEquality()
                .equals(other._notInList, _notInList) &&
            const DeepCollectionEquality().equals(other.lt, lt) &&
            const DeepCollectionEquality().equals(other.lte, lte) &&
            const DeepCollectionEquality().equals(other.gt, gt) &&
            const DeepCollectionEquality().equals(other.gte, gte) &&
            const DeepCollectionEquality().equals(other.not, not));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(equals),
      const DeepCollectionEquality().hash(_inList),
      const DeepCollectionEquality().hash(_notInList),
      const DeepCollectionEquality().hash(lt),
      const DeepCollectionEquality().hash(lte),
      const DeepCollectionEquality().hash(gt),
      const DeepCollectionEquality().hash(gte),
      const DeepCollectionEquality().hash(not));

  @JsonKey(ignore: true)
  @override
  _$$_DateTimeFilterCopyWith<_$_DateTimeFilter> get copyWith =>
      __$$_DateTimeFilterCopyWithImpl<_$_DateTimeFilter>(this, _$identity);
}

abstract class _DateTimeFilter implements DateTimeFilter {
  const factory _DateTimeFilter(
      {final DateTime? equals,
      final List<DateTime>? inList,
      final List<DateTime>? notInList,
      final DateTime? lt,
      final DateTime? lte,
      final DateTime? gt,
      final DateTime? gte,
      final DateTimeFilter? not}) = _$_DateTimeFilter;

  @override
  DateTime? get equals => throw _privateConstructorUsedError;
  @override
  List<DateTime>? get inList => throw _privateConstructorUsedError;
  @override
  List<DateTime>? get notInList => throw _privateConstructorUsedError;
  @override
  DateTime? get lt => throw _privateConstructorUsedError;
  @override
  DateTime? get lte => throw _privateConstructorUsedError;
  @override
  DateTime? get gt => throw _privateConstructorUsedError;
  @override
  DateTime? get gte => throw _privateConstructorUsedError;
  @override
  DateTimeFilter? get not => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DateTimeFilterCopyWith<_$_DateTimeFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StringFilter {
  String? get equals => throw _privateConstructorUsedError;
  List<String>? get inList => throw _privateConstructorUsedError;
  List<String>? get notInList => throw _privateConstructorUsedError;
  String? get lt => throw _privateConstructorUsedError;
  String? get lte => throw _privateConstructorUsedError;
  String? get gt => throw _privateConstructorUsedError;
  String? get gte => throw _privateConstructorUsedError;
  String? get contains => throw _privateConstructorUsedError;
  String? get startsWith => throw _privateConstructorUsedError;
  String? get endsWith => throw _privateConstructorUsedError;
  bool get caseSensitive => throw _privateConstructorUsedError;
  StringFilter? get not => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StringFilterCopyWith<StringFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StringFilterCopyWith<$Res> {
  factory $StringFilterCopyWith(
          StringFilter value, $Res Function(StringFilter) then) =
      _$StringFilterCopyWithImpl<$Res>;
  $Res call(
      {String? equals,
      List<String>? inList,
      List<String>? notInList,
      String? lt,
      String? lte,
      String? gt,
      String? gte,
      String? contains,
      String? startsWith,
      String? endsWith,
      bool caseSensitive,
      StringFilter? not});

  $StringFilterCopyWith<$Res>? get not;
}

/// @nodoc
class _$StringFilterCopyWithImpl<$Res> implements $StringFilterCopyWith<$Res> {
  _$StringFilterCopyWithImpl(this._value, this._then);

  final StringFilter _value;
  // ignore: unused_field
  final $Res Function(StringFilter) _then;

  @override
  $Res call({
    Object? equals = freezed,
    Object? inList = freezed,
    Object? notInList = freezed,
    Object? lt = freezed,
    Object? lte = freezed,
    Object? gt = freezed,
    Object? gte = freezed,
    Object? contains = freezed,
    Object? startsWith = freezed,
    Object? endsWith = freezed,
    Object? caseSensitive = freezed,
    Object? not = freezed,
  }) {
    return _then(_value.copyWith(
      equals: equals == freezed
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as String?,
      inList: inList == freezed
          ? _value.inList
          : inList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      notInList: notInList == freezed
          ? _value.notInList
          : notInList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      lt: lt == freezed
          ? _value.lt
          : lt // ignore: cast_nullable_to_non_nullable
              as String?,
      lte: lte == freezed
          ? _value.lte
          : lte // ignore: cast_nullable_to_non_nullable
              as String?,
      gt: gt == freezed
          ? _value.gt
          : gt // ignore: cast_nullable_to_non_nullable
              as String?,
      gte: gte == freezed
          ? _value.gte
          : gte // ignore: cast_nullable_to_non_nullable
              as String?,
      contains: contains == freezed
          ? _value.contains
          : contains // ignore: cast_nullable_to_non_nullable
              as String?,
      startsWith: startsWith == freezed
          ? _value.startsWith
          : startsWith // ignore: cast_nullable_to_non_nullable
              as String?,
      endsWith: endsWith == freezed
          ? _value.endsWith
          : endsWith // ignore: cast_nullable_to_non_nullable
              as String?,
      caseSensitive: caseSensitive == freezed
          ? _value.caseSensitive
          : caseSensitive // ignore: cast_nullable_to_non_nullable
              as bool,
      not: not == freezed
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
    ));
  }

  @override
  $StringFilterCopyWith<$Res>? get not {
    if (_value.not == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.not!, (value) {
      return _then(_value.copyWith(not: value));
    });
  }
}

/// @nodoc
abstract class _$$_StringFilterCopyWith<$Res>
    implements $StringFilterCopyWith<$Res> {
  factory _$$_StringFilterCopyWith(
          _$_StringFilter value, $Res Function(_$_StringFilter) then) =
      __$$_StringFilterCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? equals,
      List<String>? inList,
      List<String>? notInList,
      String? lt,
      String? lte,
      String? gt,
      String? gte,
      String? contains,
      String? startsWith,
      String? endsWith,
      bool caseSensitive,
      StringFilter? not});

  @override
  $StringFilterCopyWith<$Res>? get not;
}

/// @nodoc
class __$$_StringFilterCopyWithImpl<$Res>
    extends _$StringFilterCopyWithImpl<$Res>
    implements _$$_StringFilterCopyWith<$Res> {
  __$$_StringFilterCopyWithImpl(
      _$_StringFilter _value, $Res Function(_$_StringFilter) _then)
      : super(_value, (v) => _then(v as _$_StringFilter));

  @override
  _$_StringFilter get _value => super._value as _$_StringFilter;

  @override
  $Res call({
    Object? equals = freezed,
    Object? inList = freezed,
    Object? notInList = freezed,
    Object? lt = freezed,
    Object? lte = freezed,
    Object? gt = freezed,
    Object? gte = freezed,
    Object? contains = freezed,
    Object? startsWith = freezed,
    Object? endsWith = freezed,
    Object? caseSensitive = freezed,
    Object? not = freezed,
  }) {
    return _then(_$_StringFilter(
      equals: equals == freezed
          ? _value.equals
          : equals // ignore: cast_nullable_to_non_nullable
              as String?,
      inList: inList == freezed
          ? _value._inList
          : inList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      notInList: notInList == freezed
          ? _value._notInList
          : notInList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      lt: lt == freezed
          ? _value.lt
          : lt // ignore: cast_nullable_to_non_nullable
              as String?,
      lte: lte == freezed
          ? _value.lte
          : lte // ignore: cast_nullable_to_non_nullable
              as String?,
      gt: gt == freezed
          ? _value.gt
          : gt // ignore: cast_nullable_to_non_nullable
              as String?,
      gte: gte == freezed
          ? _value.gte
          : gte // ignore: cast_nullable_to_non_nullable
              as String?,
      contains: contains == freezed
          ? _value.contains
          : contains // ignore: cast_nullable_to_non_nullable
              as String?,
      startsWith: startsWith == freezed
          ? _value.startsWith
          : startsWith // ignore: cast_nullable_to_non_nullable
              as String?,
      endsWith: endsWith == freezed
          ? _value.endsWith
          : endsWith // ignore: cast_nullable_to_non_nullable
              as String?,
      caseSensitive: caseSensitive == freezed
          ? _value.caseSensitive
          : caseSensitive // ignore: cast_nullable_to_non_nullable
              as bool,
      not: not == freezed
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
    ));
  }
}

/// @nodoc

class _$_StringFilter implements _StringFilter {
  const _$_StringFilter(
      {this.equals,
      final List<String>? inList,
      final List<String>? notInList,
      this.lt,
      this.lte,
      this.gt,
      this.gte,
      this.contains,
      this.startsWith,
      this.endsWith,
      this.caseSensitive = true,
      this.not})
      : _inList = inList,
        _notInList = notInList;

  @override
  final String? equals;
  final List<String>? _inList;
  @override
  List<String>? get inList {
    final value = _inList;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _notInList;
  @override
  List<String>? get notInList {
    final value = _notInList;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? lt;
  @override
  final String? lte;
  @override
  final String? gt;
  @override
  final String? gte;
  @override
  final String? contains;
  @override
  final String? startsWith;
  @override
  final String? endsWith;
  @override
  @JsonKey()
  final bool caseSensitive;
  @override
  final StringFilter? not;

  @override
  String toString() {
    return 'StringFilter(equals: $equals, inList: $inList, notInList: $notInList, lt: $lt, lte: $lte, gt: $gt, gte: $gte, contains: $contains, startsWith: $startsWith, endsWith: $endsWith, caseSensitive: $caseSensitive, not: $not)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StringFilter &&
            const DeepCollectionEquality().equals(other.equals, equals) &&
            const DeepCollectionEquality().equals(other._inList, _inList) &&
            const DeepCollectionEquality()
                .equals(other._notInList, _notInList) &&
            const DeepCollectionEquality().equals(other.lt, lt) &&
            const DeepCollectionEquality().equals(other.lte, lte) &&
            const DeepCollectionEquality().equals(other.gt, gt) &&
            const DeepCollectionEquality().equals(other.gte, gte) &&
            const DeepCollectionEquality().equals(other.contains, contains) &&
            const DeepCollectionEquality()
                .equals(other.startsWith, startsWith) &&
            const DeepCollectionEquality().equals(other.endsWith, endsWith) &&
            const DeepCollectionEquality()
                .equals(other.caseSensitive, caseSensitive) &&
            const DeepCollectionEquality().equals(other.not, not));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(equals),
      const DeepCollectionEquality().hash(_inList),
      const DeepCollectionEquality().hash(_notInList),
      const DeepCollectionEquality().hash(lt),
      const DeepCollectionEquality().hash(lte),
      const DeepCollectionEquality().hash(gt),
      const DeepCollectionEquality().hash(gte),
      const DeepCollectionEquality().hash(contains),
      const DeepCollectionEquality().hash(startsWith),
      const DeepCollectionEquality().hash(endsWith),
      const DeepCollectionEquality().hash(caseSensitive),
      const DeepCollectionEquality().hash(not));

  @JsonKey(ignore: true)
  @override
  _$$_StringFilterCopyWith<_$_StringFilter> get copyWith =>
      __$$_StringFilterCopyWithImpl<_$_StringFilter>(this, _$identity);
}

abstract class _StringFilter implements StringFilter {
  const factory _StringFilter(
      {final String? equals,
      final List<String>? inList,
      final List<String>? notInList,
      final String? lt,
      final String? lte,
      final String? gt,
      final String? gte,
      final String? contains,
      final String? startsWith,
      final String? endsWith,
      final bool caseSensitive,
      final StringFilter? not}) = _$_StringFilter;

  @override
  String? get equals => throw _privateConstructorUsedError;
  @override
  List<String>? get inList => throw _privateConstructorUsedError;
  @override
  List<String>? get notInList => throw _privateConstructorUsedError;
  @override
  String? get lt => throw _privateConstructorUsedError;
  @override
  String? get lte => throw _privateConstructorUsedError;
  @override
  String? get gt => throw _privateConstructorUsedError;
  @override
  String? get gte => throw _privateConstructorUsedError;
  @override
  String? get contains => throw _privateConstructorUsedError;
  @override
  String? get startsWith => throw _privateConstructorUsedError;
  @override
  String? get endsWith => throw _privateConstructorUsedError;
  @override
  bool get caseSensitive => throw _privateConstructorUsedError;
  @override
  StringFilter? get not => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_StringFilterCopyWith<_$_StringFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FriendWith {
  List<FriendWith>? get and => throw _privateConstructorUsedError;
  List<FriendWith>? get or => throw _privateConstructorUsedError;
  List<FriendWith>? get not => throw _privateConstructorUsedError;
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  StringFilter? get name => throw _privateConstructorUsedError;
  DateTimeFilter? get birthday => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FriendWithCopyWith<FriendWith> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendWithCopyWith<$Res> {
  factory $FriendWithCopyWith(
          FriendWith value, $Res Function(FriendWith) then) =
      _$FriendWithCopyWithImpl<$Res>;
  $Res call(
      {List<FriendWith>? and,
      List<FriendWith>? or,
      List<FriendWith>? not,
      DateTimeFilter? createdAt,
      StringFilter? name,
      DateTimeFilter? birthday});

  $DateTimeFilterCopyWith<$Res>? get createdAt;
  $StringFilterCopyWith<$Res>? get name;
  $DateTimeFilterCopyWith<$Res>? get birthday;
}

/// @nodoc
class _$FriendWithCopyWithImpl<$Res> implements $FriendWithCopyWith<$Res> {
  _$FriendWithCopyWithImpl(this._value, this._then);

  final FriendWith _value;
  // ignore: unused_field
  final $Res Function(FriendWith) _then;

  @override
  $Res call({
    Object? and = freezed,
    Object? or = freezed,
    Object? not = freezed,
    Object? createdAt = freezed,
    Object? name = freezed,
    Object? birthday = freezed,
  }) {
    return _then(_value.copyWith(
      and: and == freezed
          ? _value.and
          : and // ignore: cast_nullable_to_non_nullable
              as List<FriendWith>?,
      or: or == freezed
          ? _value.or
          : or // ignore: cast_nullable_to_non_nullable
              as List<FriendWith>?,
      not: not == freezed
          ? _value.not
          : not // ignore: cast_nullable_to_non_nullable
              as List<FriendWith>?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      birthday: birthday == freezed
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
    ));
  }

  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt {
    if (_value.createdAt == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.createdAt!, (value) {
      return _then(_value.copyWith(createdAt: value));
    });
  }

  @override
  $StringFilterCopyWith<$Res>? get name {
    if (_value.name == null) {
      return null;
    }

    return $StringFilterCopyWith<$Res>(_value.name!, (value) {
      return _then(_value.copyWith(name: value));
    });
  }

  @override
  $DateTimeFilterCopyWith<$Res>? get birthday {
    if (_value.birthday == null) {
      return null;
    }

    return $DateTimeFilterCopyWith<$Res>(_value.birthday!, (value) {
      return _then(_value.copyWith(birthday: value));
    });
  }
}

/// @nodoc
abstract class _$$_FriendWhereClosureCopyWith<$Res>
    implements $FriendWithCopyWith<$Res> {
  factory _$$_FriendWhereClosureCopyWith(_$_FriendWhereClosure value,
          $Res Function(_$_FriendWhereClosure) then) =
      __$$_FriendWhereClosureCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<FriendWith>? and,
      List<FriendWith>? or,
      List<FriendWith>? not,
      DateTimeFilter? createdAt,
      StringFilter? name,
      DateTimeFilter? birthday});

  @override
  $DateTimeFilterCopyWith<$Res>? get createdAt;
  @override
  $StringFilterCopyWith<$Res>? get name;
  @override
  $DateTimeFilterCopyWith<$Res>? get birthday;
}

/// @nodoc
class __$$_FriendWhereClosureCopyWithImpl<$Res>
    extends _$FriendWithCopyWithImpl<$Res>
    implements _$$_FriendWhereClosureCopyWith<$Res> {
  __$$_FriendWhereClosureCopyWithImpl(
      _$_FriendWhereClosure _value, $Res Function(_$_FriendWhereClosure) _then)
      : super(_value, (v) => _then(v as _$_FriendWhereClosure));

  @override
  _$_FriendWhereClosure get _value => super._value as _$_FriendWhereClosure;

  @override
  $Res call({
    Object? and = freezed,
    Object? or = freezed,
    Object? not = freezed,
    Object? createdAt = freezed,
    Object? name = freezed,
    Object? birthday = freezed,
  }) {
    return _then(_$_FriendWhereClosure(
      and: and == freezed
          ? _value._and
          : and // ignore: cast_nullable_to_non_nullable
              as List<FriendWith>?,
      or: or == freezed
          ? _value._or
          : or // ignore: cast_nullable_to_non_nullable
              as List<FriendWith>?,
      not: not == freezed
          ? _value._not
          : not // ignore: cast_nullable_to_non_nullable
              as List<FriendWith>?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as StringFilter?,
      birthday: birthday == freezed
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTimeFilter?,
    ));
  }
}

/// @nodoc

class _$_FriendWhereClosure extends _FriendWhereClosure {
  const _$_FriendWhereClosure(
      {final List<FriendWith>? and,
      final List<FriendWith>? or,
      final List<FriendWith>? not,
      this.createdAt,
      this.name,
      this.birthday})
      : _and = and,
        _or = or,
        _not = not,
        super._();

  final List<FriendWith>? _and;
  @override
  List<FriendWith>? get and {
    final value = _and;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FriendWith>? _or;
  @override
  List<FriendWith>? get or {
    final value = _or;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FriendWith>? _not;
  @override
  List<FriendWith>? get not {
    final value = _not;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTimeFilter? createdAt;
  @override
  final StringFilter? name;
  @override
  final DateTimeFilter? birthday;

  @override
  String toString() {
    return 'FriendWith(and: $and, or: $or, not: $not, createdAt: $createdAt, name: $name, birthday: $birthday)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FriendWhereClosure &&
            const DeepCollectionEquality().equals(other._and, _and) &&
            const DeepCollectionEquality().equals(other._or, _or) &&
            const DeepCollectionEquality().equals(other._not, _not) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.birthday, birthday));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_and),
      const DeepCollectionEquality().hash(_or),
      const DeepCollectionEquality().hash(_not),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(birthday));

  @JsonKey(ignore: true)
  @override
  _$$_FriendWhereClosureCopyWith<_$_FriendWhereClosure> get copyWith =>
      __$$_FriendWhereClosureCopyWithImpl<_$_FriendWhereClosure>(
          this, _$identity);
}

abstract class _FriendWhereClosure extends FriendWith {
  const factory _FriendWhereClosure(
      {final List<FriendWith>? and,
      final List<FriendWith>? or,
      final List<FriendWith>? not,
      final DateTimeFilter? createdAt,
      final StringFilter? name,
      final DateTimeFilter? birthday}) = _$_FriendWhereClosure;
  const _FriendWhereClosure._() : super._();

  @override
  List<FriendWith>? get and => throw _privateConstructorUsedError;
  @override
  List<FriendWith>? get or => throw _privateConstructorUsedError;
  @override
  List<FriendWith>? get not => throw _privateConstructorUsedError;
  @override
  DateTimeFilter? get createdAt => throw _privateConstructorUsedError;
  @override
  StringFilter? get name => throw _privateConstructorUsedError;
  @override
  DateTimeFilter? get birthday => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FriendWhereClosureCopyWith<_$_FriendWhereClosure> get copyWith =>
      throw _privateConstructorUsedError;
}
