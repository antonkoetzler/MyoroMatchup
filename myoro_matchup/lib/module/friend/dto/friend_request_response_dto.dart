import 'package:faker/faker.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:myoro_matchup/myoro_matchup.dart';

part 'friend_request_response_dto.g.dart';

/// Friend request response DTO.
@immutable
@myoroModel
@JsonSerializable(createToJson: false)
final class FriendRequestResponseDto with _$FriendRequestResponseDtoMixin {
  /// Default constructor.
  const FriendRequestResponseDto({
    required this.id,
    required this.requesterName,
    required this.recipientName,
    required this.status,
    required this.createdAt,
    required this.respondedAt,
  });

  /// From JSON.
  factory FriendRequestResponseDto.fromJson(Map<String, dynamic> json) {
    return _$FriendRequestResponseDtoFromJson(json);
  }

  /// Fake constructor.
  factory FriendRequestResponseDto.fake() {
    final createdAt = myoroFake<DateTime>();
    final respondedAt = createdAt.add(const Duration(days: 1));

    return FriendRequestResponseDto(
      id: faker.randomGenerator.integer(100000, min: 1),
      requesterName: faker.person.name(),
      recipientName: faker.person.name(),
      status: FriendRequestStatusEnum.fake(),
      createdAt: createdAt,
      respondedAt: respondedAt,
    );
  }

  /// Friend request identifier.
  final int id;

  /// Name of the user who sent the friend request.
  final String requesterName;

  /// Name of the user receiving the friend request.
  final String recipientName;

  /// Status of the friend request.
  final FriendRequestStatusEnum status;

  /// When the friend request was created.
  final DateTime createdAt;

  /// When the recipient responded.
  final DateTime? respondedAt;
}
