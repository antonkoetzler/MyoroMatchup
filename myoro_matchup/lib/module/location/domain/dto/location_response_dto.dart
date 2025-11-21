import 'package:faker/faker.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'location_response_dto.g.dart';

/// DTO for a location response.
@immutable
@myoroModel
@JsonSerializable()
final class LocationResponseDto with _$LocationResponseDtoMixin {
  /// Default constructor.
  const LocationResponseDto({required this.name, required this.city, required this.state, required this.country});

  /// Fake constructor.
  factory LocationResponseDto.fake() {
    return LocationResponseDto(
      name: faker.randomGenerator.boolean() ? faker.lorem.word() : kMyoroEmptyString,
      city: faker.randomGenerator.boolean() ? faker.lorem.word() : kMyoroEmptyString,
      state: faker.randomGenerator.boolean() ? faker.lorem.word() : kMyoroEmptyString,
      country: faker.randomGenerator.element(MyoroCountryEnum.values),
    );
  }

  /// Name of the location.
  final String name;

  /// City of the location.
  final String city;

  /// State of the location.
  final String state;

  /// Country of the location.
  final MyoroCountryEnum? country;

  /// From JSON.
  factory LocationResponseDto.fromJson(Map<String, dynamic> json) {
    return _$LocationResponseDtoFromJson(json);
  }

  /// To JSON.
  Map<String, dynamic> toJson() {
    return _$LocationResponseDtoToJson(this);
  }
}
