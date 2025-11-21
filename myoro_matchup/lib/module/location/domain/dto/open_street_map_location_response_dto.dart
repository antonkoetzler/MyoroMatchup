import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'open_street_map_location_response_dto.g.dart';

/// DTO for a location response from the OpenStreetMap API.
///
/// Just a model to encapsulate the response from the OpenStreetMap API.
@immutable
@myoroModel
@JsonSerializable(explicitToJson: true)
final class OpenStreetMapLocationResponseDto with _$OpenStreetMapLocationResponseDtoMixin {
  /// Default constructor.
  const OpenStreetMapLocationResponseDto({required this.name, required this.address});

  /// From JSON.
  factory OpenStreetMapLocationResponseDto.fromJson(Map<String, dynamic> json) {
    return _$OpenStreetMapLocationResponseDtoFromJson(json);
  }

  /// Name of the location.
  final String name;

  /// Address of the location.
  final OpenStreetMapLocationAddressResponseDto address;

  /// To JSON.
  Map<String, dynamic> toJson() {
    return _$OpenStreetMapLocationResponseDtoToJson(this);
  }
}
