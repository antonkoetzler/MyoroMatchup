package com.myoro.myoro_matchup_api.model;

import com.myoro.myoro_matchup_api.enums.VisibilityEnum;
import jakarta.persistence.Column;
import jakarta.persistence.Embedded;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import java.time.LocalDateTime;

/** User model. */
@Entity
@Table(name = "users")
public class UserModel {
  /* User ID. */
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long id;

  /** Username. */
  @Column(nullable = false)
  private String username;

  /** Name. */
  @Column(nullable = false)
  private String name;

  /** Email. */
  @Column(unique = true, nullable = false)
  private String email;

  /** Password. */
  @Column(nullable = false)
  private String password;

  /** Location. */
  @Embedded private UserLocationModel location;

  /** Subscription status. */
  @Column(nullable = false)
  private Boolean isSubscribed;

  /** Visibility. */
  @Column(nullable = false)
  @Enumerated(EnumType.STRING)
  private VisibilityEnum visibility;

  /** Created at. */
  @Column(nullable = false)
  private LocalDateTime createdAt;

  /** Profile picture of the user. */
  @Column(nullable = true)
  private String profilePicture;

  /** Default constructor. */
  public UserModel() {}

  /** Constructor with all fields. */
  public UserModel(String username, String name, String email, String password) {
    this.username = username;
    this.name = name;
    this.email = email;
    this.password = password;
    this.isSubscribed = false;
    this.visibility = VisibilityEnum.PRIVATE;
    this.createdAt = LocalDateTime.now();
  }

  /**
   * Getter for id
   *
   * @return the user ID
   */
  public Long getId() {
    return id;
  }

  /**
   * Getter for username
   *
   * @return the username
   */
  public String getUsername() {
    return username;
  }

  /**
   * Getter for name
   *
   * @return the name
   */
  public String getName() {
    return name;
  }

  /**
   * Getter for email
   *
   * @return the email
   */
  public String getEmail() {
    return email;
  }

  /**
   * Getter for password
   *
   * @return the password
   */
  public String getPassword() {
    return password;
  }

  /**
   * Getter for location
   *
   * @return the location
   */
  public UserLocationModel getLocation() {
    return location;
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

  /** Setter for username. */
  public void setUsername(String username) {
    this.username = username;
  }

  /** Setter for name. */
  public void setName(String name) {
    this.name = name;
  }

  /** Setter for email. */
  public void setEmail(String email) {
    this.email = email;
  }

  /** Setter for password. */
  public void setPassword(String password) {
    this.password = password;
  }

  /** Setter for location. */
  public void setLocation(UserLocationModel location) {
    this.location = location;
  }

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
   * Getter for visibility
   *
   * @return the visibility
   */
  public VisibilityEnum getVisibility() {
    return visibility;
  }

  /** Setter for visibility. */
  public void setVisibility(VisibilityEnum visibility) {
    this.visibility = visibility;
  }

  /** Setter for created at. */
  public void setCreatedAt(LocalDateTime createdAt) {
    this.createdAt = createdAt;
  }

  /**
   * Getter for profilePicture
   *
   * @return the profile picture path
   */
  public String getProfilePicture() {
    return profilePicture;
  }

  /** Setter for profilePicture. */
  public void setProfilePicture(String profilePicture) {
    this.profilePicture = profilePicture;
  }
}
