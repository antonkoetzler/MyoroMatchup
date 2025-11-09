import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';

part 'game_frequency_day_time_time_dto.g.dart';

/// DTO representing a [GameFrequencyDayTime]'s time.
@immutable
@myoroModel
@JsonSerializable()
final class GameFrequencyDayTimeTimeDto with _$GameFrequencyDayTimeTimeDtoMixin {
  /// From JSON for [TimeOfDay].
  static TimeOfDay _timeOfDayFromJson(Map<String, dynamic> json) {
    return TimeOfDay(hour: json['hour'] as int, minute: json['minute'] as int);
  }

  /// To JSON for [TimeOfDay].
  static Map<String, dynamic> _timeOfDayToJson(TimeOfDay time) {
    return {'hour': time.hour, 'minute': time.minute};
  }

  /// Default constructor.
  const GameFrequencyDayTimeTimeDto({required this.startTime, required this.endTime});

  /// Fake constructor.
  factory GameFrequencyDayTimeTimeDto.fake() {
    return const GameFrequencyDayTimeTimeDto(startTime: TimeOfDay(hour: 10, minute: 0), endTime: TimeOfDay(hour: 11, minute: 0));
  }

  /// From JSON.
  factory GameFrequencyDayTimeTimeDto.fromJson(Map<String, dynamic> json) {
    return _$GameFrequencyDayTimeTimeDtoFromJson(json);
  }

  /// Start time.
  @JsonKey(toJson: _timeOfDayToJson, fromJson: _timeOfDayFromJson)
  final TimeOfDay startTime;

  /// End time.
  @JsonKey(toJson: _timeOfDayToJson, fromJson: _timeOfDayFromJson)
  final TimeOfDay endTime;

  /// To JSON.
  Map<String, dynamic> toJson() {
    return _$GameFrequencyDayTimeTimeDtoToJson(this);
  }
}
