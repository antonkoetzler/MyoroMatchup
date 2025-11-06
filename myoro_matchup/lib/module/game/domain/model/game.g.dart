// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [Game] once the code is generated.
///
/// ```dart
/// class Game with _$GameMixin {}
/// ```
mixin _$GameMixin {
  Game get self => this as Game;

  Game copyWith({
    int? id,
    String? name,
    String? profilePicture,
    bool profilePictureProvided = true,
    String? banner,
    bool bannerProvided = true,
    SportsEnum? sport,
    RangeValues? ageRange,
  }) {
    return Game(
      id: id ?? self.id,
      name: name ?? self.name,
      profilePicture: profilePictureProvided ? (profilePicture ?? self.profilePicture) : null,
      banner: bannerProvided ? (banner ?? self.banner) : null,
      sport: sport ?? self.sport,
      ageRange: ageRange ?? self.ageRange,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is Game &&
        other.runtimeType == runtimeType &&
        other.id == self.id &&
        other.name == self.name &&
        other.profilePicture == self.profilePicture &&
        other.banner == self.banner &&
        other.sport == self.sport &&
        other.ageRange == self.ageRange;
  }

  @override
  int get hashCode {
    return Object.hash(self.id, self.name, self.profilePicture, self.banner, self.sport, self.ageRange);
  }

  @override
  String toString() =>
      'Game(\n'
      '  id: ${self.id},\n'
      '  name: ${self.name},\n'
      '  profilePicture: ${self.profilePicture},\n'
      '  banner: ${self.banner},\n'
      '  sport: ${self.sport},\n'
      '  ageRange: ${self.ageRange},\n'
      ');';
}
