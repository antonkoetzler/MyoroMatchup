import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Model representing a game.
@immutable
abstract class GameAbstract {
  /// Default constructor.
  const GameAbstract({
    required this.name,
    required this.sport,
    required this.frequencyDayTime,
    required this.location,
    required this.price,
    required this.ageRange,
    required this.visibility,
    this.profilePicture,
    this.banner,
  });

  /// Name of the [Game].
  final String name;

  /// Sport being played.
  final SportsEnum sport;

  /// Frequency of the game.
  final GameFrequencyDayTimeDto frequencyDayTime;

  /// Location of the game.
  final Location location;

  /// Price of the game.
  final GamePriceDto price;

  /// Age range of the [Game].
  final GameAgeRangeModel ageRange;

  /// Visibility of the [Game].
  final GameVisibilityEnum visibility;

  /// Profile picture of the [Game].
  @JsonKey(includeIfNull: false)
  final String? profilePicture;

  /// Banner of the [Game].
  @JsonKey(includeIfNull: false)
  final String? banner;
}
