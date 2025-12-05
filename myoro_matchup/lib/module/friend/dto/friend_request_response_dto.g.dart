// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friend_request_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FriendRequestResponseDto _$FriendRequestResponseDtoFromJson(Map<String, dynamic> json) => FriendRequestResponseDto(
  id: (json['id'] as num).toInt(),
  requesterName: json['requesterName'] as String,
  recipientName: json['recipientName'] as String,
  status: $enumDecode(_$FriendRequestStatusEnumEnumMap, json['status']),
  createdAt: DateTime.parse(json['createdAt'] as String),
  respondedAt: json['respondedAt'] == null ? null : DateTime.parse(json['respondedAt'] as String),
);

const _$FriendRequestStatusEnumEnumMap = {
  FriendRequestStatusEnum.pending: 'PENDING',
  FriendRequestStatusEnum.accepted: 'ACCEPTED',
  FriendRequestStatusEnum.rejected: 'REJECTED',
};

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [FriendRequestResponseDto] once the code is generated.
///
/// ```dart
/// class FriendRequestResponseDto with _$FriendRequestResponseDtoMixin {}
/// ```
mixin _$FriendRequestResponseDtoMixin {
  FriendRequestResponseDto get self => this as FriendRequestResponseDto;

  FriendRequestResponseDto copyWith({
    int? id,
    String? requesterName,
    String? recipientName,
    FriendRequestStatusEnum? status,
    DateTime? createdAt,
    DateTime? respondedAt,
    bool respondedAtProvided = true,
  }) {
    return FriendRequestResponseDto(
      id: id ?? self.id,
      requesterName: requesterName ?? self.requesterName,
      recipientName: recipientName ?? self.recipientName,
      status: status ?? self.status,
      createdAt: createdAt ?? self.createdAt,
      respondedAt: respondedAtProvided ? (respondedAt ?? self.respondedAt) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is FriendRequestResponseDto &&
        other.runtimeType == runtimeType &&
        other.id == self.id &&
        other.requesterName == self.requesterName &&
        other.recipientName == self.recipientName &&
        other.status == self.status &&
        other.createdAt == self.createdAt &&
        other.respondedAt == self.respondedAt;
  }

  @override
  int get hashCode {
    return Object.hash(self.id, self.requesterName, self.recipientName, self.status, self.createdAt, self.respondedAt);
  }

  @override
  String toString() =>
      'FriendRequestResponseDto(\n'
      '  id: ${self.id},\n'
      '  requesterName: ${self.requesterName},\n'
      '  recipientName: ${self.recipientName},\n'
      '  status: ${self.status},\n'
      '  createdAt: ${self.createdAt},\n'
      '  respondedAt: ${self.respondedAt},\n'
      ');';
}
