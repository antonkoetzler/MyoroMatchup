import 'package:faker/faker.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Enum containing all of the supported sports in MyoroMatchup.
@JsonEnum()
enum SportsEnum {
  @JsonValue('FOOTBALL')
  football,
  @JsonValue('FUTSAL')
  futsal,
  @JsonValue('FUT7')
  fut7,
  @JsonValue('VOLLEYBALL')
  volleyball;

  factory SportsEnum.fake() {
    return values[faker.randomGenerator.integer(values.length)];
  }

  /// Formatted name.
  String get formattedName {
    return switch (this) {
      football => localization.sportsEnumFootballLabel,
      futsal => localization.sportsEnumFutsalLabel,
      fut7 => localization.sportsEnumFut7Label,
      volleyball => localization.sportsEnumVolleyballLabel,
    };
  }

  /// Minimum amount of players needed.
  int get minPlayers {
    return switch (this) {
      football => 22,
      futsal => 10,
      fut7 => 14,
      volleyball => 12,
    };
  }

  bool get isFootball => this == football;
  bool get isFutsal => this == futsal;
  bool get isVolleyball => this == volleyball;
}
