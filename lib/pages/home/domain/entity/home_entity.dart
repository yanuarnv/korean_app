import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_entity.freezed.dart';
@Freezed()
abstract class HomeEntity with _$HomeEntity {
  const factory HomeEntity({
    required int application,
    required int inProgress,
    required int complete,
  }) = _HomeEntity;
}
