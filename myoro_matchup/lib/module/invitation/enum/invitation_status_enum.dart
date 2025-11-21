import 'package:faker/faker.dart';
import 'package:json_annotation/json_annotation.dart';

/// Invitation status enum.
@JsonEnum()
enum InvitationStatusEnum {
  /// Pending; awaiting response.
  @JsonValue('PENDING')
  pending,

  /// Accepted; invitee accepted the invitation.
  @JsonValue('ACCEPTED')
  accepted,

  /// Rejected; invitee declined the invitation.
  @JsonValue('REJECTED')
  rejected,

  /// Expired; invitation past expiration date.
  @JsonValue('EXPIRED')
  expired,

  /// Cancelled; inviter cancelled the invitation.
  @JsonValue('CANCELLED')
  cancelled;

  /// Fake constructor.
  factory InvitationStatusEnum.fake() {
    return values[faker.randomGenerator.integer(values.length)];
  }
}
