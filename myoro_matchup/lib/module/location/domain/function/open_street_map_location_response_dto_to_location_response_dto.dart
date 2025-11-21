import 'package:myoro_matchup/myoro_matchup.dart';

/// [OpenStreetMapLocationResponseDto] to [LocationResponseDto] mapper.
LocationResponseDto openStreetMapLocationResponseDtoToLocationResponseDto(
  OpenStreetMapLocationResponseDto openStreetMapLocationResponseDto,
) {
  return LocationResponseDto(
    name: openStreetMapLocationResponseDto.name,
    city: openStreetMapLocationResponseDto.address.city,
    state: openStreetMapLocationResponseDto.address.state,
    country: openStreetMapLocationResponseDto.address.country,
  );
}
