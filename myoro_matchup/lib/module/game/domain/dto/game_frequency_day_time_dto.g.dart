// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_frequency_day_time_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameFrequencyDayTimeDto _$GameFrequencyDayTimeDtoFromJson(
  Map<String, dynamic> json,
) => GameFrequencyDayTimeDto(
  frequency: $enumDecode(_$FrequencyEnumEnumMap, json['frequency']),
  days: (json['days'] as List<dynamic>)
      .map((e) => $enumDecode(_$MyoroDayEnumEnumMap, e))
      .toList(),
  times: GameFrequencyDayTimeTimeDto.fromJson(
    json['times'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$GameFrequencyDayTimeDtoToJson(
  GameFrequencyDayTimeDto instance,
) => <String, dynamic>{
  'frequency': _$FrequencyEnumEnumMap[instance.frequency]!,
  'days': instance.days.map((e) => _$MyoroDayEnumEnumMap[e]!).toList(),
  'times': instance.times,
};

const _$FrequencyEnumEnumMap = {
  FrequencyEnum.weekly: 'weekly',
  FrequencyEnum.biWeekly: 'biWeekly',
  FrequencyEnum.monthly: 'monthly',
  FrequencyEnum.yearly: 'yearly',
};

const _$MyoroDayEnumEnumMap = {
  MyoroDayEnum.monday: 'monday',
  MyoroDayEnum.tuesday: 'tuesday',
  MyoroDayEnum.wednesday: 'wednesday',
  MyoroDayEnum.thursday: 'thursday',
  MyoroDayEnum.friday: 'friday',
  MyoroDayEnum.saturday: 'saturday',
  MyoroDayEnum.sunday: 'sunday',
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
    FrequencyEnum? frequency,
    List<MyoroDayEnum>? days,
    GameFrequencyDayTimeTimeDto? times,
  }) {
    return GameFrequencyDayTimeDto(
      frequency: frequency ?? self.frequency,
      days: days ?? self.days,
      times: times ?? self.times,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is GameFrequencyDayTimeDto &&
        other.runtimeType == runtimeType &&
        other.frequency == self.frequency &&
        other.days == self.days &&
        other.times == self.times;
  }

  @override
  int get hashCode {
    return Object.hash(self.frequency, self.days, self.times);
  }

  @override
  String toString() =>
      'GameFrequencyDayTimeDto(\n'
      '  frequency: ${self.frequency},\n'
      '  days: ${self.days},\n'
      '  times: ${self.times},\n'
      ');';
}
