package com.myoro.myoro_matchup_api.model;

import com.myoro.myoro_matchup_api.enums.InvitationStatusEnum;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.persistence.UniqueConstraint;

import java.time.LocalDateTime;

/** Invitation model. */
@Entity
@Table(name = "invitations", uniqueConstraints = {
    @UniqueConstraint(name = "unique_pending_invitation", columnNames = { "game_id", "invitee_id", "status" })
})
public class InvitationModel {
  /** Invitation ID. */
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long id;

  /** Game being invited to. */
  @ManyToOne
  @JoinColumn(name = "game_id", nullable = false)
  private GameModel game;

  /** User who sent the invitation. */
  @ManyToOne
  @JoinColumn(name = "inviter_id", nullable = false)
  private UserModel inviter;

  /** User being invited. */
  @ManyToOne
  @JoinColumn(name = "invitee_id", nullable = false)
  private UserModel invitee;

  /** Status of the invitation. */
  @Column(nullable = false)
  private InvitationStatusEnum status;

  /** When the invitation was created. */
  @Column(nullable = false)
  private LocalDateTime createdAt;

  /** When the invitation expires. */
  @Column(nullable = true)
  private LocalDateTime expiresAt;

  /** When the invitee responded. */
  @Column(nullable = true)
  private LocalDateTime respondedAt;

  /** Optional message from the inviter. */
  @Column(nullable = true)
  private String message;

  /** Default constructor. */
  public InvitationModel() {
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
  public GameModel getGame() {
    return game;
  }

  /**
   * Getter for inviter
   * 
   * @return the user who sent the invitation
   */
  public UserModel getInviter() {
    return inviter;
  }

  /**
   * Getter for invitee
   * 
   * @return the user being invited
   */
  public UserModel getInvitee() {
    return invitee;
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
   * Setter for id
   * 
   * @param id the invitation ID
   */
  public void setId(Long id) {
    this.id = id;
  }

  /**
   * Setter for game
   * 
   * @param game the game being invited to
   */
  public void setGame(GameModel game) {
    this.game = game;
  }

  /**
   * Setter for inviter
   * 
   * @param inviter the user who sent the invitation
   */
  public void setInviter(UserModel inviter) {
    this.inviter = inviter;
  }

  /**
   * Setter for invitee
   * 
   * @param invitee the user being invited
   */
  public void setInvitee(UserModel invitee) {
    this.invitee = invitee;
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
