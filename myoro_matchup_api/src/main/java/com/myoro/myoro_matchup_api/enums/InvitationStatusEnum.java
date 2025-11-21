package com.myoro.myoro_matchup_api.enums;

/** Invitation status enum. */
public enum InvitationStatusEnum {
  /** Pending; awaiting response. */
  PENDING,

  /** Accepted; invitee accepted the invitation. */
  ACCEPTED,

  /** Rejected; invitee declined the invitation. */
  REJECTED,

  /** Expired; invitation past expiration date. */
  EXPIRED,

  /** Cancelled; inviter cancelled the invitation. */
  CANCELLED;
}
