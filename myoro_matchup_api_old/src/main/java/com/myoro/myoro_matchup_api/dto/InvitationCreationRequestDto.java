package com.myoro.myoro_matchup_api.dto;

import jakarta.validation.constraints.NotNull;

/** Invitation creation request DTO. */
public class InvitationCreationRequestDto {
  /** ID of the user being invited. */
  @NotNull(message = "{validation.invitation.invitee.required}")
  private Long inviteeId;

  /** Optional message from the inviter. */
  private String message;

  /** Default constructor. */
  public InvitationCreationRequestDto() {}

  /**
   * Getter for inviteeId
   *
   * @return the ID of the user being invited
   */
  public Long getInviteeId() {
    return inviteeId;
  }

  /**
   * Getter for message
   *
   * @return the optional message from the inviter
   */
  public String getMessage() {
    return message;
  }

  /**
   * Setter for inviteeId
   *
   * @param inviteeId the ID of the user being invited
   */
  public void setInviteeId(Long inviteeId) {
    this.inviteeId = inviteeId;
  }

  /**
   * Setter for message
   *
   * @param message the optional message from the inviter
   */
  public void setMessage(String message) {
    this.message = message;
  }
}
