import 'package:faker/faker.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'invitation_response_dto.g.dart';

/// Invitation response DTO.
@immutable
@myoroModel
@JsonSerializable(createToJson: false)
final class InvitationResponseDto with _$InvitationResponseDtoMixin {
  /// Default constructor.
  const InvitationResponseDto({
    required this.id,
    required this.game,
    required this.inviterName,
    required this.status,
    required this.createdAt,
    required this.expiresAt,
    required this.respondedAt,
    required this.message,
  });

  /// From JSON.
  factory InvitationResponseDto.fromJson(Map<String, dynamic> json) {
    return _$InvitationResponseDtoFromJson(json);
  }

  /// Fake constructor.
  factory InvitationResponseDto.fake() {
    final createdAt = myoroFake<DateTime>();
    final expiresAt = createdAt.add(const Duration(days: 7));
    final respondedAt = createdAt.add(const Duration(days: 1));

    return InvitationResponseDto(
      id: faker.randomGenerator.integer(100000, min: 1),
      game: InvitationGameResponseDto.fake(),
      inviterName: faker.person.name(),
      status: InvitationStatusEnum.fake(),
      createdAt: createdAt,
      expiresAt: expiresAt,
      respondedAt: respondedAt,
      message: faker.randomGenerator.boolean() ? faker.lorem.sentence() : kMyoroEmptyString,
    );
  }

  /// Game being invited to.
  final InvitationGameResponseDto game;

  /// Invitation identifier.
  final int id;

  /// Name of the user who sent the invitation.
  final String inviterName;

  /// Status of the invitation.
  final InvitationStatusEnum status;

  /// When the invitation was created.
  final DateTime createdAt;

  /// When the invitation expires.
  final DateTime expiresAt;

  /// When the invitee responded.
  final DateTime? respondedAt;

  /// Optional message from the inviter.
  @JsonKey(defaultValue: kMyoroEmptyString)
  final String message;
}
