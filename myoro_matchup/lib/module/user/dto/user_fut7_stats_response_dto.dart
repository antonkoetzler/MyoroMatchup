part of 'user_stats_response_dto.dart';

/// [UserStatsResponseDto] for [SportsEnum.fut7].
@myoroModel
@JsonSerializable()
final class UserFut7StatsResponseDto extends UserStatsResponseDto with _$UserFut7StatsResponseDtoMixin {
  /// Default constructor.
  const UserFut7StatsResponseDto({
    required super.rating,
    required this.attack,
    required this.defense,
    required this.striking,
    required this.skills,
  });

  /// Fake constructor.
  factory UserFut7StatsResponseDto.fake() {
    return UserFut7StatsResponseDto(
      rating: faker.randomGenerator.integer(100),
      attack: faker.randomGenerator.integer(100),
      defense: faker.randomGenerator.integer(100),
      striking: faker.randomGenerator.integer(100),
      skills: faker.randomGenerator.integer(100),
    );
  }

  /// From JSON.
  factory UserFut7StatsResponseDto.fromJson(Map<String, dynamic> json) {
    return _$UserFut7StatsResponseDtoFromJson(json);
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
    return _$UserFut7StatsResponseDtoToJson(this);
  }
}
