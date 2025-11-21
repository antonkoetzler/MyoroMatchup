part of 'user_stats_response_dto.dart';

/// [UserStatsResponseDto] for [SportsEnum.futsal].
@myoroModel
@JsonSerializable()
final class UserFutsalStatsResponseDto extends UserStatsResponseDto with _$UserFutsalStatsResponseDtoMixin {
  /// Default constructor.
  const UserFutsalStatsResponseDto({
    required super.rating,
    required this.attack,
    required this.defense,
    required this.striking,
    required this.skills,
  });

  /// Fake constructor.
  factory UserFutsalStatsResponseDto.fake() {
    return UserFutsalStatsResponseDto(
      rating: faker.randomGenerator.integer(100),
      attack: faker.randomGenerator.integer(100),
      defense: faker.randomGenerator.integer(100),
      striking: faker.randomGenerator.integer(100),
      skills: faker.randomGenerator.integer(100),
    );
  }

  /// From JSON.
  factory UserFutsalStatsResponseDto.fromJson(Map<String, dynamic> json) {
    return _$UserFutsalStatsResponseDtoFromJson(json);
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
    return _$UserFutsalStatsResponseDtoToJson(this);
  }
}
