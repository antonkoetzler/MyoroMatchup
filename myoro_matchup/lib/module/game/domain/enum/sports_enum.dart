import 'package:faker/faker.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Enum containing all of the supported sports in MyoroMatchup.
@JsonEnum()
enum SportsEnum {
  @JsonValue(footballJsonKey)
  football,
  @JsonValue(futsalJsonKey)
  futsal,
  @JsonValue(fut7JsonKey)
  fut7,
  @JsonValue(volleyballJsonKey)
  volleyball;

  /// [football]'s JSON key.
  static const footballJsonKey = 'FOOTBALL';

  /// [futsal]'s JSON key.
  static const futsalJsonKey = 'FUTSAL';

  /// [fut7]'s JSON key.
  static const fut7JsonKey = 'FUT7';

  /// [volleyball]'s JSON key.
  static const volleyballJsonKey = 'VOLLEYBALL';

  /// From JSON key.
  static SportsEnum? tryFromJsonKey(String jsonKey) {
    return switch (jsonKey) {
      footballJsonKey => football,
      futsalJsonKey => futsal,
      fut7JsonKey => fut7,
      volleyballJsonKey => volleyball,
      _ => null,
    };
  }

  /// Fake constructor.
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

  /// Is football.
  bool get isFootball {
    return this == football;
  }

  /// Is futsal.
  bool get isFutsal {
    return this == futsal;
  }

  /// Is fut7.
  bool get isVolleyball {
    return this == volleyball;
  }
}
