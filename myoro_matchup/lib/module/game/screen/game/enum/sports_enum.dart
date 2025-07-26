import 'package:faker/faker.dart';

/// Enum containing all of the supported sports in MyoroMatchup.
enum SportsEnum {
  football('Football'),
  futsal('Futsal'),
  volleyball('Volleyball');

  const SportsEnum(this.name);

  factory SportsEnum.fake() {
    return values[faker.randomGenerator.integer(values.length)];
  }

  /// Name of the sport.
  final String name;

  bool get isFootball => this == football;
  bool get isFutsal => this == futsal;
  bool get isVolleyball => this == volleyball;
}
