// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_sport_stats_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserSportStatsResponseDto _$UserSportStatsResponseDtoFromJson(Map<String, dynamic> json) => UserSportStatsResponseDto(
  football: UserFootballStatsResponseDto.fromJson(json['football'] as Map<String, dynamic>),
  futsal: UserFutsalStatsResponseDto.fromJson(json['futsal'] as Map<String, dynamic>),
  fut7: UserFut7StatsResponseDto.fromJson(json['fut7'] as Map<String, dynamic>),
  volleyball: UserVolleyballStatsResponseDto.fromJson(json['volleyball'] as Map<String, dynamic>),
);

Map<String, dynamic> _$UserSportStatsResponseDtoToJson(UserSportStatsResponseDto instance) => <String, dynamic>{
  'football': instance.football,
  'futsal': instance.futsal,
  'fut7': instance.fut7,
  'volleyball': instance.volleyball,
};

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [UserSportStatsResponseDto] once the code is generated.
///
/// ```dart
/// class UserSportStatsResponseDto with _$UserSportStatsResponseDtoMixin {}
/// ```
mixin _$UserSportStatsResponseDtoMixin {
  UserSportStatsResponseDto get self => this as UserSportStatsResponseDto;

  UserSportStatsResponseDto copyWith({
    UserFootballStatsResponseDto? football,
    UserFutsalStatsResponseDto? futsal,
    UserFut7StatsResponseDto? fut7,
    UserVolleyballStatsResponseDto? volleyball,
  }) {
    return UserSportStatsResponseDto(
      football: football ?? self.football,
      futsal: futsal ?? self.futsal,
      fut7: fut7 ?? self.fut7,
      volleyball: volleyball ?? self.volleyball,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is UserSportStatsResponseDto &&
        other.runtimeType == runtimeType &&
        other.football == self.football &&
        other.futsal == self.futsal &&
        other.fut7 == self.fut7 &&
        other.volleyball == self.volleyball;
  }

  @override
  int get hashCode {
    return Object.hash(self.football, self.futsal, self.fut7, self.volleyball);
  }

  @override
  String toString() =>
      'UserSportStatsResponseDto(\n'
      '  football: ${self.football},\n'
      '  futsal: ${self.futsal},\n'
      '  fut7: ${self.fut7},\n'
      '  volleyball: ${self.volleyball},\n'
      ');';
}
