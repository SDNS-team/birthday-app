import 'package:freezed_annotation/freezed_annotation.dart';

import '../../components/skins/skin.dart';

part 'settings.freezed.dart';

@freezed
class Settings with _$Settings {
  const factory Settings({@Default(Skin.classic) Skin skin}) = _Settings;
}
