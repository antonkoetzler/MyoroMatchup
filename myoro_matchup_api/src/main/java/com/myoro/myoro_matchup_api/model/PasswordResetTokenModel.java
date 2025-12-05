package com.myoro.myoro_matchup_api.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import java.time.LocalDateTime;

/** Password reset token model. */
@Entity
@Table(name = "password_reset_tokens")
public class PasswordResetTokenModel {
  /** Token ID. */
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long id;

  /** Token. */
  @Column(nullable = false, unique = true)
  private String token;

  /** User. */
  @ManyToOne
  @JoinColumn(name = "user_id", nullable = false)
  private UserModel user;

  /** Expires at. */
  @Column(nullable = false)
  private LocalDateTime expiresAt;

  /** Used. */
  @Column(nullable = false)
  private Boolean used;

  /** Created at. */
  @Column(nullable = false)
  private LocalDateTime createdAt;

  /** Default constructor. */
  public PasswordResetTokenModel() {}

  /**
   * Constructor with all fields.
   *
   * @param token the reset token
   * @param user the user
   * @param expiresAt the expiration timestamp
   */
  public PasswordResetTokenModel(String token, UserModel user, LocalDateTime expiresAt) {
    this.token = token;
    this.user = user;
    this.expiresAt = expiresAt;
    this.used = false;
    this.createdAt = LocalDateTime.now();
  }

  /**
   * Getter for id
   *
   * @return the token ID
   */
  public Long getId() {
    return id;
  }

  /**
   * Getter for token
   *
   * @return the token
   */
  public String getToken() {
    return token;
  }

  /**
   * Getter for user
   *
   * @return the user
   */
  public UserModel getUser() {
    return user;
  }

  /**
   * Getter for expires at
   *
   * @return the expiration timestamp
   */
  public LocalDateTime getExpiresAt() {
    return expiresAt;
  }

  /**
   * Getter for used
   *
   * @return whether the token has been used
   */
  public Boolean getUsed() {
    return used;
  }

  /**
   * Getter for created at
   *
   * @return the creation timestamp
   */
  public LocalDateTime getCreatedAt() {
    return createdAt;
  }

  /** Setter for id. */
  public void setId(Long id) {
    this.id = id;
  }

  /** Setter for token. */
  public void setToken(String token) {
    this.token = token;
  }

  /** Setter for user. */
  public void setUser(UserModel user) {
    this.user = user;
  }

  /** Setter for expires at. */
  public void setExpiresAt(LocalDateTime expiresAt) {
    this.expiresAt = expiresAt;
  }

  /** Setter for used. */
  public void setUsed(Boolean used) {
    this.used = used;
  }

  /** Setter for created at. */
  public void setCreatedAt(LocalDateTime createdAt) {
    this.createdAt = createdAt;
  }
}
