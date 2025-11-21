import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'open_street_map_location_address_response_dto.g.dart';

/// DTO for the address of a location response from the OpenStreetMap API.
@immutable
@myoroModel
@JsonSerializable()
final class OpenStreetMapLocationAddressResponseDto with _$OpenStreetMapLocationAddressResponseDtoMixin {
  /// Default constructor.
  const OpenStreetMapLocationAddressResponseDto({required this.city, required this.state, required this.country});

  /// From JSON.
  factory OpenStreetMapLocationAddressResponseDto.fromJson(Map<String, dynamic> json) {
    return _$OpenStreetMapLocationAddressResponseDtoFromJson(json);
  }

  /// City of the location.
  @JsonKey(defaultValue: kMyoroEmptyString)
  final String city;

  /// State (i.e. Alaska) of the location.
  @JsonKey(defaultValue: kMyoroEmptyString)
  final String state;

  /// Country of the location.
  ///
  /// NOTE: Camel cased JSON key because this is OpenStreetMap's JSON key, not ours.
  @JsonKey(name: 'country_code')
  final MyoroCountryEnum country;

  /// To JSON.
  Map<String, dynamic> toJson() {
    return _$OpenStreetMapLocationAddressResponseDtoToJson(this);
  }
}
