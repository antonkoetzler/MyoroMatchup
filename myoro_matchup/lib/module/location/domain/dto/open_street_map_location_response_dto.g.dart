// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_street_map_location_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpenStreetMapLocationResponseDto _$OpenStreetMapLocationResponseDtoFromJson(
  Map<String, dynamic> json,
) => OpenStreetMapLocationResponseDto(
  name: json['name'] as String,
  address: OpenStreetMapLocationAddressResponseDto.fromJson(
    json['address'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$OpenStreetMapLocationResponseDtoToJson(
  OpenStreetMapLocationResponseDto instance,
) => <String, dynamic>{
  'name': instance.name,
  'address': instance.address.toJson(),
};

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [OpenStreetMapLocationResponseDto] once the code is generated.
///
/// ```dart
/// class OpenStreetMapLocationResponseDto with _$OpenStreetMapLocationResponseDtoMixin {}
/// ```
mixin _$OpenStreetMapLocationResponseDtoMixin {
  OpenStreetMapLocationResponseDto get self =>
      this as OpenStreetMapLocationResponseDto;

  OpenStreetMapLocationResponseDto copyWith({
    String? name,
    OpenStreetMapLocationAddressResponseDto? address,
  }) {
    return OpenStreetMapLocationResponseDto(
      name: name ?? self.name,
      address: address ?? self.address,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is OpenStreetMapLocationResponseDto &&
        other.runtimeType == runtimeType &&
        other.name == self.name &&
        other.address == self.address;
  }

  @override
  int get hashCode {
    return Object.hash(self.name, self.address);
  }

  @override
  String toString() =>
      'OpenStreetMapLocationResponseDto(\n'
      '  name: ${self.name},\n'
      '  address: ${self.address},\n'
      ');';
}
