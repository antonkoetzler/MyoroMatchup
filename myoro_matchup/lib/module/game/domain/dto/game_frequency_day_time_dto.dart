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
  /// Default constructor.
  const GameFrequencyDayTimeDto({required this.frequency, required this.days, required this.times});

  /// Fake constructor.
  factory GameFrequencyDayTimeDto.fake() {
    return GameFrequencyDayTimeDto(
      frequency: FrequencyEnum.fake(),
      days: MyoroDayEnum.values.toList(),
      times: GameFrequencyDayTimeTimeDto.fake(),
    );
  }

  /// From JSON.
  factory GameFrequencyDayTimeDto.fromJson(Map<String, dynamic> json) {
    return _$GameFrequencyDayTimeDtoFromJson(json);
  }

  /// Frequency of the game.
  final FrequencyEnum frequency;

  /// Days of the game.
  final List<MyoroDayEnum> days;

  /// Times of the game.
  final GameFrequencyDayTimeTimeDto times;

  /// To JSON.
  Map<String, dynamic> toJson() {
    return _$GameFrequencyDayTimeDtoToJson(this);
  }
}
