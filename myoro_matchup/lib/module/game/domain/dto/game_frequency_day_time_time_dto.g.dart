// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_frequency_day_time_time_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameFrequencyDayTimeTimeDto _$GameFrequencyDayTimeTimeDtoFromJson(Map<String, dynamic> json) =>
    GameFrequencyDayTimeTimeDto(
      startTime: GameFrequencyDayTimeTimeDto._timeOfDayFromJson(json['startTime'] as Map<String, dynamic>),
      endTime: GameFrequencyDayTimeTimeDto._timeOfDayFromJson(json['endTime'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GameFrequencyDayTimeTimeDtoToJson(GameFrequencyDayTimeTimeDto instance) => <String, dynamic>{
  'startTime': GameFrequencyDayTimeTimeDto._timeOfDayToJson(instance.startTime),
  'endTime': GameFrequencyDayTimeTimeDto._timeOfDayToJson(instance.endTime),
};

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [GameFrequencyDayTimeTimeDto] once the code is generated.
///
/// ```dart
/// class GameFrequencyDayTimeTimeDto with _$GameFrequencyDayTimeTimeDtoMixin {}
/// ```
mixin _$GameFrequencyDayTimeTimeDtoMixin {
  GameFrequencyDayTimeTimeDto get self => this as GameFrequencyDayTimeTimeDto;

  GameFrequencyDayTimeTimeDto copyWith({TimeOfDay? startTime, TimeOfDay? endTime}) {
    return GameFrequencyDayTimeTimeDto(startTime: startTime ?? self.startTime, endTime: endTime ?? self.endTime);
  }

  @override
  bool operator ==(Object other) {
    return other is GameFrequencyDayTimeTimeDto &&
        other.runtimeType == runtimeType &&
        other.startTime == self.startTime &&
        other.endTime == self.endTime;
  }

  @override
  int get hashCode {
    return Object.hash(self.startTime, self.endTime);
  }

  @override
  String toString() =>
      'GameFrequencyDayTimeTimeDto(\n'
      '  startTime: ${self.startTime},\n'
      '  endTime: ${self.endTime},\n'
      ');';
}
