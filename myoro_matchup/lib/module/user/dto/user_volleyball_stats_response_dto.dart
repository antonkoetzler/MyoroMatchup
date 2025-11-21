part of 'user_stats_response_dto.dart';

/// [UserStatsResponseDto] for [SportsEnum.volleyball].
@myoroModel
@JsonSerializable()
final class UserVolleyballStatsResponseDto extends UserStatsResponseDto with _$UserVolleyballStatsResponseDtoMixin {
  /// Default constructor.
  const UserVolleyballStatsResponseDto({
    required super.rating,
    required this.attack,
    required this.blocking,
    required this.serving,
    required this.reception,
  });

  /// Fake constructor.
  factory UserVolleyballStatsResponseDto.fake() {
    return UserVolleyballStatsResponseDto(
      rating: faker.randomGenerator.integer(100),
      attack: faker.randomGenerator.integer(100),
      blocking: faker.randomGenerator.integer(100),
      serving: faker.randomGenerator.integer(100),
      reception: faker.randomGenerator.integer(100),
    );
  }

  /// From JSON.
  factory UserVolleyballStatsResponseDto.fromJson(Map<String, dynamic> json) {
    return _$UserVolleyballStatsResponseDtoFromJson(json);
  }

  /// Attack.
  final int attack;

  /// Defense.
  final int blocking;

  /// Striking.
  final int serving;

  /// Skills.
  final int reception;

  /// To JSON.
  @override
  Map<String, dynamic> toJson() {
    return _$UserVolleyballStatsResponseDtoToJson(this);
  }
}
