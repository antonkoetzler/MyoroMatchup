import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'game_model.g.dart';

/// Model representing a game.
@immutable
@myoroModel
class GameModel with _$GameModelMixin {
  /// Default constructor.
  const GameModel({
    required this.name,
    required this.sport,
    required this.frequencyDayTime,
    required this.location,
    required this.price,
    required this.ageRange,
    required this.visibility,
    required this.profilePicture,
    required this.banner,
  });

  /// Name of the [Game].
  final String name;

  /// Sport being played.
  final SportsEnum sport;

  /// Frequency of the game.
  final GameFrequencyDayTimeDto frequencyDayTime;

  /// Location of the game.
  final LocationResponseDto location;

  /// Price of the game.
  final GamePriceDto price;

  /// Age range of the [Game].
  final GameAgeRangeModel ageRange;

  /// Visibility of the [Game].
  final GameVisibilityEnum visibility;

  /// Profile picture of the [Game].
  @JsonKey(defaultValue: kMyoroEmptyString)
  final String profilePicture;

  /// Banner of the [Game].
  @JsonKey(defaultValue: kMyoroEmptyString)
  final String banner;
}
