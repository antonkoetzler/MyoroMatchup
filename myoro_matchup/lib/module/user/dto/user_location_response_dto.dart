import 'package:faker/faker.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'user_location_response_dto.g.dart';

/// User location response DTO.
@immutable
@myoroModel
@JsonSerializable()
final class UserLocationResponseDto with _$UserLocationResponseDtoMixin {
  /// Default constructor.
  const UserLocationResponseDto({required this.country, required this.state, required this.city});

  /// Fake constructor.
  UserLocationResponseDto.fake()
    : country = faker.randomGenerator.element(MyoroCountryEnum.values),
      state = faker.randomGenerator.boolean() ? faker.lorem.word() : kMyoroEmptyString,
      city = faker.randomGenerator.boolean() ? faker.lorem.word() : kMyoroEmptyString;

  /// From JSON.
  factory UserLocationResponseDto.fromJson(Map<String, dynamic> json) {
    return _$UserLocationResponseDtoFromJson(json);
  }

  /// Country.
  final MyoroCountryEnum country;

  /// State.
  final String? state;

  /// City.
  final String? city;

  /// To JSON.
  Map<String, dynamic> toJson() {
    return _$UserLocationResponseDtoToJson(this);
  }
}
