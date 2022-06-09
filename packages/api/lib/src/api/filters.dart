import 'package:freezed_annotation/freezed_annotation.dart';

part 'filters.freezed.dart';

enum SortOrder { asc, desc }

@freezed
class DateTimeFilter with _$DateTimeFilter {
  const factory DateTimeFilter({
    DateTime? equals,
    List<DateTime>? inList,
    List<DateTime>? notInList,
    DateTime? lt,
    DateTime? lte,
    DateTime? gt,
    DateTime? gte,
    DateTimeFilter? not,
  }) = _DateTimeFilter;
}

@freezed
class StringFilter with _$StringFilter {
  const factory StringFilter({
    String? equals,
    List<String>? inList,
    List<String>? notInList,
    String? lt,
    String? lte,
    String? gt,
    String? gte,
    String? contains,
    String? startsWith,
    String? endsWith,
    @Default(true) bool caseSensitive,
    StringFilter? not,
  }) = _StringFilter;
}

@freezed
class FriendWith with _$FriendWith {
  const FriendWith._();

  const factory FriendWith({
    List<FriendWith>? and,
    List<FriendWith>? or,
    List<FriendWith>? not,
    DateTimeFilter? createdAt,
    StringFilter? name,
    DateTimeFilter? birthday,
  }) = _FriendWhereClosure;

  bool get isEmpty =>
      and == null &&
      or == null &&
      not == null &&
      createdAt == null &&
      name == null &&
      birthday == null;
  bool get isNotEmpty => !isEmpty;
}
