// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_model.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [GameModel] once the code is generated.
///
/// ```dart
/// class GameModel with _$GameModelMixin {}
/// ```
mixin _$GameModelMixin {
  GameModel get self => this as GameModel;

  GameModel copyWith({
    String? name,
    SportsEnum? sport,
    GameFrequencyDayTimeDto? frequencyDayTime,
    LocationResponseDto? location,
    GamePriceDto? price,
    GameAgeRangeModel? ageRange,
    GameVisibilityEnum? visibility,
    String? profilePicture,
    String? banner,
  }) {
    return GameModel(
      name: name ?? self.name,
      sport: sport ?? self.sport,
      frequencyDayTime: frequencyDayTime ?? self.frequencyDayTime,
      location: location ?? self.location,
      price: price ?? self.price,
      ageRange: ageRange ?? self.ageRange,
      visibility: visibility ?? self.visibility,
      profilePicture: profilePicture ?? self.profilePicture,
      banner: banner ?? self.banner,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is GameModel &&
        other.runtimeType == runtimeType &&
        other.name == self.name &&
        other.sport == self.sport &&
        other.frequencyDayTime == self.frequencyDayTime &&
        other.location == self.location &&
        other.price == self.price &&
        other.ageRange == self.ageRange &&
        other.visibility == self.visibility &&
        other.profilePicture == self.profilePicture &&
        other.banner == self.banner;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.name,
      self.sport,
      self.frequencyDayTime,
      self.location,
      self.price,
      self.ageRange,
      self.visibility,
      self.profilePicture,
      self.banner,
    );
  }

  @override
  String toString() =>
      'GameModel(\n'
      '  name: ${self.name},\n'
      '  sport: ${self.sport},\n'
      '  frequencyDayTime: ${self.frequencyDayTime},\n'
      '  location: ${self.location},\n'
      '  price: ${self.price},\n'
      '  ageRange: ${self.ageRange},\n'
      '  visibility: ${self.visibility},\n'
      '  profilePicture: ${self.profilePicture},\n'
      '  banner: ${self.banner},\n'
      ');';
}
