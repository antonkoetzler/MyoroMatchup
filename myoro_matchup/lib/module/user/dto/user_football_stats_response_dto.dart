part of 'user_stats_response_dto.dart';

/// [UserStatsResponseDto] for [SportsEnum.football].
@myoroModel
@JsonSerializable()
final class UserFootballStatsResponseDto extends UserStatsResponseDto with _$UserFootballStatsResponseDtoMixin {
  /// Default constructor.
  const UserFootballStatsResponseDto({
    required super.rating,
    required this.attack,
    required this.defense,
    required this.striking,
    required this.skills,
  });

  /// Fake constructor.
  factory UserFootballStatsResponseDto.fake() {
    return UserFootballStatsResponseDto(
      rating: faker.randomGenerator.integer(100),
      attack: faker.randomGenerator.integer(100),
      defense: faker.randomGenerator.integer(100),
      striking: faker.randomGenerator.integer(100),
      skills: faker.randomGenerator.integer(100),
    );
  }

  /// From JSON.
  factory UserFootballStatsResponseDto.fromJson(Map<String, dynamic> json) {
    return _$UserFootballStatsResponseDtoFromJson(json);
  }

  /// Attack.
  final int attack;

  /// Defense.
  final int defense;

  /// Striking.
  final int striking;

  /// Skills.
  final int skills;

  /// To JSON.
  @override
  Map<String, dynamic> toJson() {
    return _$UserFootballStatsResponseDtoToJson(this);
  }
}
