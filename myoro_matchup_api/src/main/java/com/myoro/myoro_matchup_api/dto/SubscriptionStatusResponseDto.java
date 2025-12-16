package com.myoro.myoro_matchup_api.dto;

import java.time.LocalDateTime;

/** DTO for subscription status response. */
public class SubscriptionStatusResponseDto {
  /** Whether the user is subscribed. */
  private Boolean isSubscribed;

  /** Expiration date of the subscription (null if not subscribed). */
  private LocalDateTime expiresAt;

  /** Number of games the user is currently participating in. */
  private Integer currentGameCount;

  /** Maximum number of games allowed for free users. */
  private Integer maxFreeGames;

  /** Whether the user can create games. */
  private Boolean canCreateGames;

  /** Whether the user can join more games. */
  private Boolean canJoinMoreGames;

  /** Default constructor. */
  public SubscriptionStatusResponseDto() {}

  /**
   * Getter for isSubscribed
   *
   * @return the subscription status
   */
  public Boolean getIsSubscribed() {
    return isSubscribed;
  }

  /** Setter for isSubscribed. */
  public void setIsSubscribed(Boolean isSubscribed) {
    this.isSubscribed = isSubscribed;
  }

  /**
   * Getter for expiresAt
   *
   * @return the expiration date
   */
  public LocalDateTime getExpiresAt() {
    return expiresAt;
  }

  /** Setter for expiresAt. */
  public void setExpiresAt(LocalDateTime expiresAt) {
    this.expiresAt = expiresAt;
  }

  /**
   * Getter for currentGameCount
   *
   * @return the current game count
   */
  public Integer getCurrentGameCount() {
    return currentGameCount;
  }

  /** Setter for currentGameCount. */
  public void setCurrentGameCount(Integer currentGameCount) {
    this.currentGameCount = currentGameCount;
  }

  /**
   * Getter for maxFreeGames
   *
   * @return the maximum free games allowed
   */
  public Integer getMaxFreeGames() {
    return maxFreeGames;
  }

  /** Setter for maxFreeGames. */
  public void setMaxFreeGames(Integer maxFreeGames) {
    this.maxFreeGames = maxFreeGames;
  }

  /**
   * Getter for canCreateGames
   *
   * @return whether the user can create games
   */
  public Boolean getCanCreateGames() {
    return canCreateGames;
  }

  /** Setter for canCreateGames. */
  public void setCanCreateGames(Boolean canCreateGames) {
    this.canCreateGames = canCreateGames;
  }

  /**
   * Getter for canJoinMoreGames
   *
   * @return whether the user can join more games
   */
  public Boolean getCanJoinMoreGames() {
    return canJoinMoreGames;
  }

  /** Setter for canJoinMoreGames. */
  public void setCanJoinMoreGames(Boolean canJoinMoreGames) {
    this.canJoinMoreGames = canJoinMoreGames;
  }
}
