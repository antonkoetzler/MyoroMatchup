package com.myoro.myoro_matchup_api.model;

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

/** Blocked user model. */
@Entity
@Table(name = "blocked_users", uniqueConstraints = {
    @UniqueConstraint(name = "unique_blocked_user", columnNames = { "blocker_id", "blocked_id" })
})
public class BlockedUserModel {
  /** Blocked user ID. */
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long id;

  /** User who blocked. */
  @ManyToOne
  @JoinColumn(name = "blocker_id", nullable = false)
  private UserModel blocker;

  /** User being blocked. */
  @ManyToOne
  @JoinColumn(name = "blocked_id", nullable = false)
  private UserModel blocked;

  /** When the user was blocked. */
  @Column(nullable = false)
  private LocalDateTime blockedAt;

  /** Default constructor. */
  public BlockedUserModel() {
  }

  /**
   * Getter for id
   * 
   * @return the blocked user ID
   */
  public Long getId() {
    return id;
  }

  /**
   * Getter for blocker
   * 
   * @return the user who blocked
   */
  public UserModel getBlocker() {
    return blocker;
  }

  /**
   * Getter for blocked
   * 
   * @return the user being blocked
   */
  public UserModel getBlocked() {
    return blocked;
  }

  /**
   * Getter for blockedAt
   * 
   * @return when the user was blocked
   */
  public LocalDateTime getBlockedAt() {
    return blockedAt;
  }

  /**
   * Setter for id
   * 
   * @param id the blocked user ID
   */
  public void setId(Long id) {
    this.id = id;
  }

  /**
   * Setter for blocker
   * 
   * @param blocker the user who blocked
   */
  public void setBlocker(UserModel blocker) {
    this.blocker = blocker;
  }

  /**
   * Setter for blocked
   * 
   * @param blocked the user being blocked
   */
  public void setBlocked(UserModel blocked) {
    this.blocked = blocked;
  }

  /**
   * Setter for blockedAt
   * 
   * @param blockedAt when the user was blocked
   */
  public void setBlockedAt(LocalDateTime blockedAt) {
    this.blockedAt = blockedAt;
  }
}

