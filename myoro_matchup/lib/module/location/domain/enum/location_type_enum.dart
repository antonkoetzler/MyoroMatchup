import 'package:faker/faker.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

/// Enum encapsulating the types of location that can be queried in [MmLocationInput].
enum LocationTypeEnum {
  /// Specific address / place.
  place,

  /// City.
  city,

  /// State.
  state,

  /// Country.
  country,

  /// Continent.
  continent;

  factory LocationTypeEnum.fake() {
    return values[faker.randomGenerator.integer(values.length)];
  }

  /// Label.
  String get label {
    return switch (this) {
      place => localization.mmLocationInputTypeEnumPlaceLabel,
      city => localization.mmLocationInputTypeEnumCityLabel,
      state => localization.mmLocationInputTypeEnumStateLabel,
      country => localization.mmLocationInputTypeEnumCountryLabel,
      continent => localization.mmLocationInputTypeEnumContinentLabel,
    };
  }

  bool get isPlace => this == place;
  bool get isCity => this == city;
  bool get isState => this == state;
  bool get isCountry => this == country;
  bool get isContinent => this == continent;
}
