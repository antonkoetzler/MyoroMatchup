import 'package:faker/faker.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'location_address.g.dart';

/// Address of a [Location].
@immutable
@myoroModel
@JsonSerializable()
final class LocationAddress with _$LocationAddressMixin {
  /// Default constructor.
  const LocationAddress({required this.city, required this.country});

  /// From JSON constructor.
  factory LocationAddress.fromJson(Map<dynamic, dynamic> json) {
    return _$LocationAddressFromJson(json as Map<String, dynamic>);
  }

  /// Fake constructor.
  LocationAddress.fake()
    : city = faker.randomGenerator.boolean() ? faker.address.city() : kMyoroEmptyString,
      country = MyoroCountryEnum.values[faker.randomGenerator.integer(MyoroCountryEnum.values.length)];

  /// City.
  @JsonKey(defaultValue: kMyoroEmptyString)
  final String city;

  /// Country of the address.
  @JsonKey(name: 'country_code')
  final MyoroCountryEnum country;

  /// To JSON constructor.
  Map<String, dynamic> toJson() {
    return _$LocationAddressToJson(this);
  }
}
