import 'package:faker/faker.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'invitation_game_response_dto.g.dart';

/// Invitation game response DTO.
@immutable
@myoroModel
@JsonSerializable(createToJson: false)
final class InvitationGameResponseDto with _$InvitationGameResponseDtoMixin {
  /// Default constructor.
  const InvitationGameResponseDto({required this.name, required this.sport});

  /// From JSON.
  factory InvitationGameResponseDto.fromJson(Map<String, dynamic> json) {
    return _$InvitationGameResponseDtoFromJson(json);
  }

  /// Fake constructor.
  factory InvitationGameResponseDto.fake() {
    return InvitationGameResponseDto(name: faker.lorem.word(), sport: SportsEnum.fake());
  }

  /// Game name.
  final String name;

  /// Sport being played.
  final SportsEnum sport;
}
