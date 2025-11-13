import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';
import 'package:json_annotation/json_annotation.dart';

part 'game_frequency_day_time_dto.g.dart';

/// DTO representing a [Game]'s frequency day time.
@immutable
@myoroModel
@JsonSerializable()
final class GameFrequencyDayTimeDto with _$GameFrequencyDayTimeDtoMixin {
  /// From JSON for [TimeOfDay].
  static TimeOfDay _timeOfDayFromJson(String json) {
    final parts = json.split(':');
    return TimeOfDay(hour: int.parse(parts[0]), minute: int.parse(parts[1]));
  }

  /// To JSON for [TimeOfDay].
  static String _timeOfDayToJson(TimeOfDay time) {
    return '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
  }

  /// From JSON for [TimeOfDay?].
  static TimeOfDay? _timeOfDayFromJsonNullable(Object? json) {
    if (json == null) return null;
    final parts = (json as String).split(':');
    return TimeOfDay(hour: int.parse(parts[0]), minute: int.parse(parts[1]));
  }

  /// To JSON for [TimeOfDay?].
  static String? _timeOfDayToJsonNullable(TimeOfDay? time) {
    if (time == null) return null;
    return '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
  }

  /// Default constructor.
  const GameFrequencyDayTimeDto({
    required this.frequency,
    required this.primaryDay,
    this.biWeeklyDay,
    required this.primaryStartTime,
    required this.primaryEndTime,
    this.biWeeklyStartTime,
    this.biWeeklyEndTime,
  });

  /// Fake constructor.
  factory GameFrequencyDayTimeDto.fake() {
    return const GameFrequencyDayTimeDto(
      frequency: GameFrequencyEnum.weekly,
      primaryDay: MyoroDayEnum.monday,
      biWeeklyDay: MyoroDayEnum.tuesday,
      primaryStartTime: TimeOfDay(hour: 10, minute: 0),
      primaryEndTime: TimeOfDay(hour: 11, minute: 0),
      biWeeklyStartTime: TimeOfDay(hour: 14, minute: 0),
      biWeeklyEndTime: TimeOfDay(hour: 15, minute: 0),
    );
  }

  /// From JSON.
  factory GameFrequencyDayTimeDto.fromJson(Map<String, dynamic> json) {
    return _$GameFrequencyDayTimeDtoFromJson(json);
  }

  /// Frequency of the game.
  final GameFrequencyEnum frequency;

  /// Primary day of the game.
  final MyoroDayEnum primaryDay;

  /// Bi-weekly day of the game. Required only when frequency is BI_WEEKLY.
  @JsonKey(includeIfNull: false)
  final MyoroDayEnum? biWeeklyDay;

  /// Primary start time of the game.
  @JsonKey(toJson: _timeOfDayToJson, fromJson: _timeOfDayFromJson)
  final TimeOfDay primaryStartTime;

  /// Primary end time of the game.
  @JsonKey(toJson: _timeOfDayToJson, fromJson: _timeOfDayFromJson)
  final TimeOfDay primaryEndTime;

  /// Bi-weekly start time of the game. Required only when frequency is BI_WEEKLY.
  @JsonKey(toJson: _timeOfDayToJsonNullable, fromJson: _timeOfDayFromJsonNullable, includeIfNull: false)
  final TimeOfDay? biWeeklyStartTime;

  /// Bi-weekly end time of the game. Required only when frequency is BI_WEEKLY.
  @JsonKey(toJson: _timeOfDayToJsonNullable, fromJson: _timeOfDayFromJsonNullable, includeIfNull: false)
  final TimeOfDay? biWeeklyEndTime;

  /// To JSON.
  Map<String, dynamic> toJson() {
    return _$GameFrequencyDayTimeDtoToJson(this);
  }
}
