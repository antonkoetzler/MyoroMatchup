// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_frequency_day_time_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameFrequencyDayTimeDto _$GameFrequencyDayTimeDtoFromJson(
  Map<String, dynamic> json,
) => GameFrequencyDayTimeDto(
  frequency: $enumDecode(_$GameFrequencyEnumEnumMap, json['frequency']),
  primaryDay: $enumDecode(_$MyoroDayEnumEnumMap, json['primaryDay']),
  biWeeklyDay: $enumDecodeNullable(_$MyoroDayEnumEnumMap, json['biWeeklyDay']),
  primaryStartTime: GameFrequencyDayTimeDto._timeOfDayFromJson(
    json['primaryStartTime'] as String,
  ),
  primaryEndTime: GameFrequencyDayTimeDto._timeOfDayFromJson(
    json['primaryEndTime'] as String,
  ),
  biWeeklyStartTime: GameFrequencyDayTimeDto._timeOfDayFromJsonNullable(
    json['biWeeklyStartTime'],
  ),
  biWeeklyEndTime: GameFrequencyDayTimeDto._timeOfDayFromJsonNullable(
    json['biWeeklyEndTime'],
  ),
);

Map<String, dynamic> _$GameFrequencyDayTimeDtoToJson(
  GameFrequencyDayTimeDto instance,
) => <String, dynamic>{
  'frequency': _$GameFrequencyEnumEnumMap[instance.frequency]!,
  'primaryDay': _$MyoroDayEnumEnumMap[instance.primaryDay]!,
  'biWeeklyDay': ?_$MyoroDayEnumEnumMap[instance.biWeeklyDay],
  'primaryStartTime': GameFrequencyDayTimeDto._timeOfDayToJson(
    instance.primaryStartTime,
  ),
  'primaryEndTime': GameFrequencyDayTimeDto._timeOfDayToJson(
    instance.primaryEndTime,
  ),
  'biWeeklyStartTime': ?GameFrequencyDayTimeDto._timeOfDayToJsonNullable(
    instance.biWeeklyStartTime,
  ),
  'biWeeklyEndTime': ?GameFrequencyDayTimeDto._timeOfDayToJsonNullable(
    instance.biWeeklyEndTime,
  ),
};

const _$GameFrequencyEnumEnumMap = {
  GameFrequencyEnum.weekly: 'WEEKLY',
  GameFrequencyEnum.biWeekly: 'BI_WEEKLY',
  GameFrequencyEnum.monthly: 'MONTHLY',
  GameFrequencyEnum.yearly: 'YEARLY',
};

const _$MyoroDayEnumEnumMap = {
  MyoroDayEnum.monday: 'MONDAY',
  MyoroDayEnum.tuesday: 'TUESDAY',
  MyoroDayEnum.wednesday: 'WEDNESDAY',
  MyoroDayEnum.thursday: 'THURSDAY',
  MyoroDayEnum.friday: 'FRIDAY',
  MyoroDayEnum.saturday: 'SATURDAY',
  MyoroDayEnum.sunday: 'SUNDAY',
};

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [GameFrequencyDayTimeDto] once the code is generated.
///
/// ```dart
/// class GameFrequencyDayTimeDto with _$GameFrequencyDayTimeDtoMixin {}
/// ```
mixin _$GameFrequencyDayTimeDtoMixin {
  GameFrequencyDayTimeDto get self => this as GameFrequencyDayTimeDto;

  GameFrequencyDayTimeDto copyWith({
    GameFrequencyEnum? frequency,
    MyoroDayEnum? primaryDay,
    MyoroDayEnum? biWeeklyDay,
    bool biWeeklyDayProvided = true,
    TimeOfDay? primaryStartTime,
    TimeOfDay? primaryEndTime,
    TimeOfDay? biWeeklyStartTime,
    bool biWeeklyStartTimeProvided = true,
    TimeOfDay? biWeeklyEndTime,
    bool biWeeklyEndTimeProvided = true,
  }) {
    return GameFrequencyDayTimeDto(
      frequency: frequency ?? self.frequency,
      primaryDay: primaryDay ?? self.primaryDay,
      biWeeklyDay: biWeeklyDayProvided
          ? (biWeeklyDay ?? self.biWeeklyDay)
          : null,
      primaryStartTime: primaryStartTime ?? self.primaryStartTime,
      primaryEndTime: primaryEndTime ?? self.primaryEndTime,
      biWeeklyStartTime: biWeeklyStartTimeProvided
          ? (biWeeklyStartTime ?? self.biWeeklyStartTime)
          : null,
      biWeeklyEndTime: biWeeklyEndTimeProvided
          ? (biWeeklyEndTime ?? self.biWeeklyEndTime)
          : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is GameFrequencyDayTimeDto &&
        other.runtimeType == runtimeType &&
        other.frequency == self.frequency &&
        other.primaryDay == self.primaryDay &&
        other.biWeeklyDay == self.biWeeklyDay &&
        other.primaryStartTime == self.primaryStartTime &&
        other.primaryEndTime == self.primaryEndTime &&
        other.biWeeklyStartTime == self.biWeeklyStartTime &&
        other.biWeeklyEndTime == self.biWeeklyEndTime;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.frequency,
      self.primaryDay,
      self.biWeeklyDay,
      self.primaryStartTime,
      self.primaryEndTime,
      self.biWeeklyStartTime,
      self.biWeeklyEndTime,
    );
  }

  @override
  String toString() =>
      'GameFrequencyDayTimeDto(\n'
      '  frequency: ${self.frequency},\n'
      '  primaryDay: ${self.primaryDay},\n'
      '  biWeeklyDay: ${self.biWeeklyDay},\n'
      '  primaryStartTime: ${self.primaryStartTime},\n'
      '  primaryEndTime: ${self.primaryEndTime},\n'
      '  biWeeklyStartTime: ${self.biWeeklyStartTime},\n'
      '  biWeeklyEndTime: ${self.biWeeklyEndTime},\n'
      ');';
}
