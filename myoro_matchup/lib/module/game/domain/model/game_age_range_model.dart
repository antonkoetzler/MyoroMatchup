import 'package:faker/faker.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';

part 'game_age_range_model.g.dart';

/// Model representing a game age range.
@immutable
@myoroModel
@JsonSerializable()
final class GameAgeRangeModel with _$GameAgeRangeModelMixin {
  /// Default constructor.
  const GameAgeRangeModel({required this.minAge, required this.maxAge});

  /// From JSON.
  factory GameAgeRangeModel.fromJson(Map<String, dynamic> json) {
    return _$GameAgeRangeModelFromJson(json);
  }

  /// Fake constructor.
  GameAgeRangeModel.fake() : minAge = faker.randomGenerator.integer(100), maxAge = faker.randomGenerator.integer(100);

  /// Minimum age.
  final int minAge;

  /// Maximum age.
  final int maxAge;

  /// To JSON.
  Map<String, dynamic> toJson() {
    return _$GameAgeRangeModelToJson(this);
  }
}
