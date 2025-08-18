import 'package:faker/faker.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Enum encapsulating the types of location that can be queried in [MmLocationInput].
enum MmLocationInputTypeEnum {
  /// City.
  city,

  /// State.
  state,

  /// Country.
  country,

  /// Continent.
  continent;

  factory MmLocationInputTypeEnum.fake() {
    return values[faker.randomGenerator.integer(values.length)];
  }

  /// Label.
  String get label {
    return switch (this) {
      city => localization.mmLocationInputTypeEnumCityLabel,
      state => localization.mmLocationInputTypeEnumStateLabel,
      country => localization.mmLocationInputTypeEnumCountryLabel,
      continent => localization.mmLocationInputTypeEnumContinentLabel,
    };
  }

  bool get isCity => this == city;
  bool get isState => this == state;
  bool get isCountry => this == country;
  bool get isContinent => this == continent;
}
