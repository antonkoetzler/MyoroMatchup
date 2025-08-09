import 'package:faker/faker.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Enum containing all of the supported sports in MyoroMatchup.
enum SportsEnum {
  football,
  futsal,
  fut7,
  volleyball;

  factory SportsEnum.fake() {
    return values[faker.randomGenerator.integer(values.length)];
  }

  /// Formatted name.
  String get formattedName => name.capitalized;

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
