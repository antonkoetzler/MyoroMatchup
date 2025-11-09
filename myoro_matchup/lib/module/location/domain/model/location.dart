import 'package:faker/faker.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'location.g.dart';

/// Location model.
@immutable
@myoroModel
@JsonSerializable()
final class Location with _$LocationMixin {
  /// Converts a String to [MyoroCountryEnum] for JSON deserialization.
  static MyoroCountryEnum? _countryFromJson(dynamic value) {
    if (value == null) return null;
    return MyoroCountryEnum.fromOpenStreetMapApiValue(value as String);
  }

  /// Converts [MyoroCountryEnum] to its OpenStreetMap API value for JSON serialization.
  static String? _countryToJson(MyoroCountryEnum? country) => country?.openStreetMapApiValue;

  const Location({required this.name, required this.city, required this.country});

  // coverage:ignore-start
  Location.fake()
    : name = faker.address.neighborhood(),
      city = faker.address.city(),
      country = MyoroCountryEnum.values[faker.randomGenerator.integer(MyoroCountryEnum.values.length)];
  // coverage:ignore-end

  factory Location.fromJson(Map<dynamic, dynamic> json) => _$LocationFromJson(json as Map<String, dynamic>);

  /// Name of the location.
  @JsonKey(defaultValue: kMyoroEmptyString)
  final String name;

  /// City that [name] resides in.
  @JsonKey(defaultValue: kMyoroEmptyString)
  final String city;

  /// Country that [name] resides in.
  @JsonKey(fromJson: _countryFromJson, toJson: _countryToJson)
  final MyoroCountryEnum? country;

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}
