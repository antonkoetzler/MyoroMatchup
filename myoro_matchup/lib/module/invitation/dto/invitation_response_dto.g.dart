// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invitation_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvitationResponseDto _$InvitationResponseDtoFromJson(
  Map<String, dynamic> json,
) => InvitationResponseDto(
  id: (json['id'] as num).toInt(),
  game: InvitationGameResponseDto.fromJson(
    json['game'] as Map<String, dynamic>,
  ),
  inviterName: json['inviterName'] as String,
  status: $enumDecode(_$InvitationStatusEnumEnumMap, json['status']),
  createdAt: DateTime.parse(json['createdAt'] as String),
  expiresAt: DateTime.parse(json['expiresAt'] as String),
  respondedAt: json['respondedAt'] == null
      ? null
      : DateTime.parse(json['respondedAt'] as String),
  message: json['message'] as String? ?? '',
);

const _$InvitationStatusEnumEnumMap = {
  InvitationStatusEnum.pending: 'PENDING',
  InvitationStatusEnum.accepted: 'ACCEPTED',
  InvitationStatusEnum.rejected: 'REJECTED',
  InvitationStatusEnum.expired: 'EXPIRED',
  InvitationStatusEnum.cancelled: 'CANCELLED',
};

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [InvitationResponseDto] once the code is generated.
///
/// ```dart
/// class InvitationResponseDto with _$InvitationResponseDtoMixin {}
/// ```
mixin _$InvitationResponseDtoMixin {
  InvitationResponseDto get self => this as InvitationResponseDto;

  InvitationResponseDto copyWith({
    InvitationGameResponseDto? game,
    int? id,
    String? inviterName,
    InvitationStatusEnum? status,
    DateTime? createdAt,
    DateTime? expiresAt,
    DateTime? respondedAt,
    bool respondedAtProvided = true,
    String? message,
  }) {
    return InvitationResponseDto(
      game: game ?? self.game,
      id: id ?? self.id,
      inviterName: inviterName ?? self.inviterName,
      status: status ?? self.status,
      createdAt: createdAt ?? self.createdAt,
      expiresAt: expiresAt ?? self.expiresAt,
      respondedAt: respondedAtProvided
          ? (respondedAt ?? self.respondedAt)
          : null,
      message: message ?? self.message,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is InvitationResponseDto &&
        other.runtimeType == runtimeType &&
        other.game == self.game &&
        other.id == self.id &&
        other.inviterName == self.inviterName &&
        other.status == self.status &&
        other.createdAt == self.createdAt &&
        other.expiresAt == self.expiresAt &&
        other.respondedAt == self.respondedAt &&
        other.message == self.message;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.game,
      self.id,
      self.inviterName,
      self.status,
      self.createdAt,
      self.expiresAt,
      self.respondedAt,
      self.message,
    );
  }

  @override
  String toString() =>
      'InvitationResponseDto(\n'
      '  game: ${self.game},\n'
      '  id: ${self.id},\n'
      '  inviterName: ${self.inviterName},\n'
      '  status: ${self.status},\n'
      '  createdAt: ${self.createdAt},\n'
      '  expiresAt: ${self.expiresAt},\n'
      '  respondedAt: ${self.respondedAt},\n'
      '  message: ${self.message},\n'
      ');';
}
