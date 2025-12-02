import 'package:faker/faker.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';

part 'game_player_response_dto.g.dart';

/// Game player response DTO.
@immutable
@myoroModel
@JsonSerializable()
final class GamePlayerResponseDto with _$GamePlayerResponseDtoMixin {
  /// Default constructor.
  const GamePlayerResponseDto({required this.id, required this.username, required this.name});

  /// Fake constructor.
  factory GamePlayerResponseDto.fake() {
    return GamePlayerResponseDto(
      id: faker.randomGenerator.integer(999999),
      username: faker.internet.userName(),
      name: faker.person.name(),
    );
  }

  /// From JSON.
  factory GamePlayerResponseDto.fromJson(Map<String, dynamic> json) {
    return _$GamePlayerResponseDtoFromJson(json);
  }

  /// User ID.
  final int id;

  /// Username.
  final String username;

  /// Name.
  final String name;

  /// To JSON.
  Map<String, dynamic> toJson() {
    return _$GamePlayerResponseDtoToJson(this);
  }
}
