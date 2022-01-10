// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SettingsPageStateTearOff {
  const _$SettingsPageStateTearOff();

  _SettingsPageState call({bool isIphone1Skin = false}) {
    return _SettingsPageState(
      isIphone1Skin: isIphone1Skin,
    );
  }
}

/// @nodoc
const $SettingsPageState = _$SettingsPageStateTearOff();

/// @nodoc
mixin _$SettingsPageState {
  bool get isIphone1Skin => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsPageStateCopyWith<SettingsPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsPageStateCopyWith<$Res> {
  factory $SettingsPageStateCopyWith(
          SettingsPageState value, $Res Function(SettingsPageState) then) =
      _$SettingsPageStateCopyWithImpl<$Res>;
  $Res call({bool isIphone1Skin});
}

/// @nodoc
class _$SettingsPageStateCopyWithImpl<$Res>
    implements $SettingsPageStateCopyWith<$Res> {
  _$SettingsPageStateCopyWithImpl(this._value, this._then);

  final SettingsPageState _value;
  // ignore: unused_field
  final $Res Function(SettingsPageState) _then;

  @override
  $Res call({
    Object? isIphone1Skin = freezed,
  }) {
    return _then(_value.copyWith(
      isIphone1Skin: isIphone1Skin == freezed
          ? _value.isIphone1Skin
          : isIphone1Skin // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SettingsPageStateCopyWith<$Res>
    implements $SettingsPageStateCopyWith<$Res> {
  factory _$SettingsPageStateCopyWith(
          _SettingsPageState value, $Res Function(_SettingsPageState) then) =
      __$SettingsPageStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isIphone1Skin});
}

/// @nodoc
class __$SettingsPageStateCopyWithImpl<$Res>
    extends _$SettingsPageStateCopyWithImpl<$Res>
    implements _$SettingsPageStateCopyWith<$Res> {
  __$SettingsPageStateCopyWithImpl(
      _SettingsPageState _value, $Res Function(_SettingsPageState) _then)
      : super(_value, (v) => _then(v as _SettingsPageState));

  @override
  _SettingsPageState get _value => super._value as _SettingsPageState;

  @override
  $Res call({
    Object? isIphone1Skin = freezed,
  }) {
    return _then(_SettingsPageState(
      isIphone1Skin: isIphone1Skin == freezed
          ? _value.isIphone1Skin
          : isIphone1Skin // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SettingsPageState implements _SettingsPageState {
  const _$_SettingsPageState({this.isIphone1Skin = false});

  @JsonKey()
  @override
  final bool isIphone1Skin;

  @override
  String toString() {
    return 'SettingsPageState(isIphone1Skin: $isIphone1Skin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SettingsPageState &&
            const DeepCollectionEquality()
                .equals(other.isIphone1Skin, isIphone1Skin));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(isIphone1Skin));

  @JsonKey(ignore: true)
  @override
  _$SettingsPageStateCopyWith<_SettingsPageState> get copyWith =>
      __$SettingsPageStateCopyWithImpl<_SettingsPageState>(this, _$identity);
}

abstract class _SettingsPageState implements SettingsPageState {
  const factory _SettingsPageState({bool isIphone1Skin}) = _$_SettingsPageState;

  @override
  bool get isIphone1Skin;
  @override
  @JsonKey(ignore: true)
  _$SettingsPageStateCopyWith<_SettingsPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
