import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'photo.freezed.dart';
part 'photo.g.dart';

@freezed
@Collection()
class Photo with _$Photo {
  factory Photo({
    @Default(isarAutoIncrementId) int id,
    required String url,
  }) = _Photo;
}
