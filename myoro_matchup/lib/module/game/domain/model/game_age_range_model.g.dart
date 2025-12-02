// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_age_range_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameAgeRangeModel _$GameAgeRangeModelFromJson(Map<String, dynamic> json) =>
    GameAgeRangeModel(
      minAge: (json['minAge'] as num).toInt(),
      maxAge: (json['maxAge'] as num).toInt(),
    );

Map<String, dynamic> _$GameAgeRangeModelToJson(GameAgeRangeModel instance) =>
    <String, dynamic>{'minAge': instance.minAge, 'maxAge': instance.maxAge};

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [GameAgeRangeModel] once the code is generated.
///
/// ```dart
/// class GameAgeRangeModel with _$GameAgeRangeModelMixin {}
/// ```
mixin _$GameAgeRangeModelMixin {
  GameAgeRangeModel get self => this as GameAgeRangeModel;

  GameAgeRangeModel copyWith({int? minAge, int? maxAge}) {
    return GameAgeRangeModel(
      minAge: minAge ?? self.minAge,
      maxAge: maxAge ?? self.maxAge,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is GameAgeRangeModel &&
        other.runtimeType == runtimeType &&
        other.minAge == self.minAge &&
        other.maxAge == self.maxAge;
  }

  @override
  int get hashCode {
    return Object.hash(self.minAge, self.maxAge);
  }

  @override
  String toString() =>
      'GameAgeRangeModel(\n'
      '  minAge: ${self.minAge},\n'
      '  maxAge: ${self.maxAge},\n'
      ');';
}
