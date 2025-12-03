package com.myoro.myoro_matchup_api.dto;

import com.myoro.myoro_matchup_api.enums.FriendRequestStatusEnum;

import java.time.LocalDateTime;

/** Friend request response DTO. */
public class FriendRequestResponseDto {
  /** Friend request ID. */
  private Long id;

  /** Name of the user who sent the friend request. */
  private String requesterName;

  /** Name of the user receiving the friend request. */
  private String recipientName;

  /** Status of the friend request. */
  private FriendRequestStatusEnum status;

  /** When the friend request was created. */
  private LocalDateTime createdAt;

  /** When the recipient responded. */
  private LocalDateTime respondedAt;

  /** Default constructor. */
  public FriendRequestResponseDto() {
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
   * Getter for requesterName
   * 
   * @return the name of the user who sent the friend request
   */
  public String getRequesterName() {
    return requesterName;
  }

  /**
   * Getter for recipientName
   * 
   * @return the name of the user receiving the friend request
   */
  public String getRecipientName() {
    return recipientName;
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
   * Setter for requesterName
   * 
   * @param requesterName the name of the user who sent the friend request
   */
  public void setRequesterName(String requesterName) {
    this.requesterName = requesterName;
  }

  /**
   * Setter for recipientName
   * 
   * @param recipientName the name of the user receiving the friend request
   */
  public void setRecipientName(String recipientName) {
    this.recipientName = recipientName;
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

