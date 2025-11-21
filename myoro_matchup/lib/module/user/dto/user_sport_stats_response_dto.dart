import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'user_sport_stats_response_dto.g.dart';

/// DTO with the stats of every [SportsEnum].
@immutable
@myoroModel
@JsonSerializable()
final class UserSportStatsResponseDto with _$UserSportStatsResponseDtoMixin {
  /// Default constructor.
  const UserSportStatsResponseDto({
    required this.football,
    required this.futsal,
    required this.fut7,
    required this.volleyball,
  });

  /// Fake constructor.
  factory UserSportStatsResponseDto.fake() {
    return UserSportStatsResponseDto(
      football: UserFootballStatsResponseDto.fake(),
      futsal: UserFutsalStatsResponseDto.fake(),
      fut7: UserFut7StatsResponseDto.fake(),
      volleyball: UserVolleyballStatsResponseDto.fake(),
    );
  }

  /// From JSON.
  factory UserSportStatsResponseDto.fromJson(Map<String, dynamic> json) {
    return _$UserSportStatsResponseDtoFromJson(json);
  }

  /// Football stats.
  final UserFootballStatsResponseDto football;

  /// Futsal stats.
  final UserFutsalStatsResponseDto futsal;

  /// Fut7 stats.
  final UserFut7StatsResponseDto fut7;

  /// Volleyball stats.
  final UserVolleyballStatsResponseDto volleyball;

  /// To JSON.
  Map<String, dynamic> toJson() {
    return _$UserSportStatsResponseDtoToJson(this);
  }
}
