package com.myoro.myoro_matchup_api.model;

import com.myoro.myoro_matchup_api.enums.FriendRequestStatusEnum;

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

/** Friend request model. */
@Entity
@Table(name = "friend_requests", uniqueConstraints = {
    @UniqueConstraint(name = "unique_pending_friend_request", columnNames = { "requester_id", "recipient_id", "status" })
})
public class FriendRequestModel {
  /** Friend request ID. */
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long id;

  /** User who sent the friend request. */
  @ManyToOne
  @JoinColumn(name = "requester_id", nullable = false)
  private UserModel requester;

  /** User receiving the friend request. */
  @ManyToOne
  @JoinColumn(name = "recipient_id", nullable = false)
  private UserModel recipient;

  /** Status of the friend request. */
  @Column(nullable = false)
  @jakarta.persistence.Enumerated(jakarta.persistence.EnumType.STRING)
  private FriendRequestStatusEnum status;

  /** When the friend request was created. */
  @Column(nullable = false)
  private LocalDateTime createdAt;

  /** When the recipient responded. */
  @Column(nullable = true)
  private LocalDateTime respondedAt;

  /** Default constructor. */
  public FriendRequestModel() {
  }

  /**
   * Getter for id
   * 
   * @return the friend request ID
   */
  public Long getId() {
    return id;
  }

  /**
   * Getter for requester
   * 
   * @return the user who sent the friend request
   */
  public UserModel getRequester() {
    return requester;
  }

  /**
   * Getter for recipient
   * 
   * @return the user receiving the friend request
   */
  public UserModel getRecipient() {
    return recipient;
  }

  /**
   * Getter for status
   * 
   * @return the status of the friend request
   */
  public FriendRequestStatusEnum getStatus() {
    return status;
  }

  /**
   * Getter for createdAt
   * 
   * @return when the friend request was created
   */
  public LocalDateTime getCreatedAt() {
    return createdAt;
  }

  /**
   * Getter for respondedAt
   * 
   * @return when the recipient responded
   */
  public LocalDateTime getRespondedAt() {
    return respondedAt;
  }

  /**
   * Setter for id
   * 
   * @param id the friend request ID
   */
  public void setId(Long id) {
    this.id = id;
  }

  /**
   * Setter for requester
   * 
   * @param requester the user who sent the friend request
   */
  public void setRequester(UserModel requester) {
    this.requester = requester;
  }

  /**
   * Setter for recipient
   * 
   * @param recipient the user receiving the friend request
   */
  public void setRecipient(UserModel recipient) {
    this.recipient = recipient;
  }

  /**
   * Setter for status
   * 
   * @param status the status of the friend request
   */
  public void setStatus(FriendRequestStatusEnum status) {
    this.status = status;
  }

  /**
   * Setter for createdAt
   * 
   * @param createdAt when the friend request was created
   */
  public void setCreatedAt(LocalDateTime createdAt) {
    this.createdAt = createdAt;
  }

  /**
   * Setter for respondedAt
   * 
   * @param respondedAt when the recipient responded
   */
  public void setRespondedAt(LocalDateTime respondedAt) {
    this.respondedAt = respondedAt;
  }
}

