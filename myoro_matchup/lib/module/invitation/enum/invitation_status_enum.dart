import 'package:faker/faker.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../myoro_matchup.dart';

/// Invitation status enum.
@JsonEnum()
enum InvitationStatusEnum {
  /// Pending; awaiting response.
  @JsonValue(_pendingKey)
  pending,

  /// Accepted; invitee accepted the invitation.
  @JsonValue(_acceptedKey)
  accepted,

  /// Rejected; invitee declined the invitation.
  @JsonValue(_rejectedKey)
  rejected,

  /// Expired; invitation past expiration date.
  @JsonValue(_expiredKey)
  expired,

  /// Cancelled; inviter cancelled the invitation.
  @JsonValue(_cancelledKey)
  cancelled;

  /// [pending] key.
  static const _pendingKey = 'PENDING';

  /// [accepted] key.
  static const _acceptedKey = 'ACCEPTED';

  /// [rejected] key.
  static const _rejectedKey = 'REJECTED';

  /// [expired] key.
  static const _expiredKey = 'EXPIRED';

  /// [cancelled] key.
  static const _cancelledKey = 'CANCELLED';

  /// Fake constructor.
  factory InvitationStatusEnum.fake() {
    return values[faker.randomGenerator.integer(values.length)];
  }

  /// Label.
  String get label {
    final invitationStatusEnumPendingLabel = localization.invitationStatusEnumPendingLabel;
    final invitationStatusEnumAcceptedLabel = localization.invitationStatusEnumAcceptedLabel;
    final invitationStatusEnumRejectedLabel = localization.invitationStatusEnumRejectedLabel;
    final invitationStatusEnumExpiredLabel = localization.invitationStatusEnumExpiredLabel;
    final invitationStatusEnumCancelledLabel = localization.invitationStatusEnumCancelledLabel;

    return switch (this) {
      pending => invitationStatusEnumPendingLabel,
      accepted => invitationStatusEnumAcceptedLabel,
      rejected => invitationStatusEnumRejectedLabel,
      expired => invitationStatusEnumExpiredLabel,
      cancelled => invitationStatusEnumCancelledLabel,
    };
  }

  /// API key.
  String get apiKey {
    return switch (this) {
      pending => _pendingKey,
      accepted => _acceptedKey,
      rejected => _rejectedKey,
      expired => _expiredKey,
      cancelled => _cancelledKey,
    };
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

  /// Is expired.
  bool get isExpired {
    return this == expired;
  }

  /// Is cancelled.
  bool get isCancelled {
    return this == cancelled;
  }
}
