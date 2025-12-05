import 'package:faker/faker.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../myoro_matchup.dart';

/// Friend request status enum.
@JsonEnum()
enum FriendRequestStatusEnum {
  /// Pending; awaiting response.
  @JsonValue(_pendingKey)
  pending,

  /// Accepted; recipient accepted the friend request.
  @JsonValue(_acceptedKey)
  accepted,

  /// Rejected; recipient declined the friend request.
  @JsonValue(_rejectedKey)
  rejected;

  /// [pending] key.
  static const _pendingKey = 'PENDING';

  /// [accepted] key.
  static const _acceptedKey = 'ACCEPTED';

  /// [rejected] key.
  static const _rejectedKey = 'REJECTED';

  /// Fake constructor.
  factory FriendRequestStatusEnum.fake() {
    return values[faker.randomGenerator.integer(values.length)];
  }

  /// Is pending.
  bool get isPending {
    return this == pending;
  }

  /// Is accepted.
  bool get isAccepted {
    return this == accepted;
  }

  /// Is rejected.
  bool get isRejected {
    return this == rejected;
  }

  /// Label.
  String get label {
    final friendRequestStatusEnumPendingLabel = localization.friendRequestStatusEnumPendingLabel;
    final friendRequestStatusEnumAcceptedLabel = localization.friendRequestStatusEnumAcceptedLabel;
    final friendRequestStatusEnumRejectedLabel = localization.friendRequestStatusEnumRejectedLabel;

    return switch (this) {
      pending => friendRequestStatusEnumPendingLabel,
      accepted => friendRequestStatusEnumAcceptedLabel,
      rejected => friendRequestStatusEnumRejectedLabel,
    };
  }

  /// API key.
  String get apiKey {
    return switch (this) {
      pending => _pendingKey,
      accepted => _acceptedKey,
      rejected => _rejectedKey,
    };
  }
}
