package com.myoro.myoro_matchup_api.dto;

import com.myoro.myoro_matchup_api.enums.InvitationStatusEnum;

import java.time.LocalDateTime;

/** Invitation response DTO. */
public class InvitationResponseDto {
  /** Invitation ID. */
  private Long id;

  /** Game being invited to. */
  private InvitationGameResponseDto game;

  /** Name of the user who sent the invitation. */
  private String inviterName;

  /** Status of the invitation. */
  private InvitationStatusEnum status;

  /** When the invitation was created. */
  private LocalDateTime createdAt;

  /** When the invitation expires. */
  private LocalDateTime expiresAt;

  /** When the invitee responded. */
  private LocalDateTime respondedAt;

  /** Optional message from the inviter. */
  private String message;

  /** Default constructor. */
  public InvitationResponseDto() {
  }

  /**
   * Getter for id
   * 
   * @return the invitation ID
   */
  public Long getId() {
    return id;
  }

  /**
   * Getter for game
   * 
   * @return the game being invited to
   */
  public InvitationGameResponseDto getGame() {
    return game;
  }

  /**
   * Getter for inviterName
   * 
   * @return the name of the user who sent the invitation
   */
  public String getInviterName() {
    return inviterName;
  }

  /**
   * Getter for status
   * 
   * @return the status of the invitation
   */
  public InvitationStatusEnum getStatus() {
    return status;
  }

  /**
   * Getter for createdAt
   * 
   * @return when the invitation was created
   */
  public LocalDateTime getCreatedAt() {
    return createdAt;
  }

  /**
   * Getter for expiresAt
   * 
   * @return when the invitation expires
   */
  public LocalDateTime getExpiresAt() {
    return expiresAt;
  }

  /**
   * Getter for respondedAt
   * 
   * @return when the invitee responded
   */
  public LocalDateTime getRespondedAt() {
    return respondedAt;
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
   * Setter for game
   * 
   * @param game the game being invited to
   */
  public void setGame(InvitationGameResponseDto game) {
    this.game = game;
  }

  /**
   * Setter for id
   * 
   * @param id the invitation ID
   */
  public void setId(Long id) {
    this.id = id;
  }

  /**
   * Setter for inviterName
   * 
   * @param inviterName the name of the user who sent the invitation
   */
  public void setInviterName(String inviterName) {
    this.inviterName = inviterName;
  }

  /**
   * Setter for status
   * 
   * @param status the status of the invitation
   */
  public void setStatus(InvitationStatusEnum status) {
    this.status = status;
  }

  /**
   * Setter for createdAt
   * 
   * @param createdAt when the invitation was created
   */
  public void setCreatedAt(LocalDateTime createdAt) {
    this.createdAt = createdAt;
  }

  /**
   * Setter for expiresAt
   * 
   * @param expiresAt when the invitation expires
   */
  public void setExpiresAt(LocalDateTime expiresAt) {
    this.expiresAt = expiresAt;
  }

  /**
   * Setter for respondedAt
   * 
   * @param respondedAt when the invitee responded
   */
  public void setRespondedAt(LocalDateTime respondedAt) {
    this.respondedAt = respondedAt;
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
