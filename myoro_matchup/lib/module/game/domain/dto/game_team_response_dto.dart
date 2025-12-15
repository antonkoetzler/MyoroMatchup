import 'package:faker/faker.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'game_player_response_dto.dart';

part 'game_team_response_dto.g.dart';

/// Game team response DTO.
@immutable
@myoroModel
@JsonSerializable()
final class GameTeamResponseDto with _$GameTeamResponseDtoMixin {
  /// Default constructor.
  const GameTeamResponseDto({required this.index, required this.players, required this.substitutes});

  /// Fake constructor.
  factory GameTeamResponseDto.fake() {
    final playerCount = faker.randomGenerator.integer(11, min: 1);
    final substituteCount = faker.randomGenerator.integer(5);
    return GameTeamResponseDto(
      index: faker.randomGenerator.integer(10),
      players: List.generate(playerCount, (_) => GamePlayerResponseDto.fake()),
      substitutes: List.generate(substituteCount, (_) => GamePlayerResponseDto.fake()),
    );
  }

  /// From JSON.
  factory GameTeamResponseDto.fromJson(Map<String, dynamic> json) {
    return _$GameTeamResponseDtoFromJson(json);
  }

  /// Team index (0-based, used to generate "Team #1", "Team #2", etc.).
  final int index;

  /// Players in the team.
  final List<GamePlayerResponseDto> players;

  /// Substitutes for the team.
  final List<GamePlayerResponseDto> substitutes;

  /// To JSON.
  Map<String, dynamic> toJson() {
    return _$GameTeamResponseDtoToJson(this);
  }
}
