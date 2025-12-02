package com.myoro.myoro_matchup_api.dto;

import com.myoro.myoro_matchup_api.enums.VisibilityEnum;

/** User response DTO. */
public class UserResponseDto {
  /** User ID. */
  private Long id;

  /** Username. */
  private String username;

  /** Name. */
  private String name;

  /** Email. */
  private String email;

  /** User stats for each sport. */
  private UserSportStatsResponseDto stats;

  /** User location. */
  private UserLocationResponseDto location;

  /** Subscription status. */
  private Boolean isSubscribed;

  /** Visibility. */
  private VisibilityEnum visibility;

  /** Default constructor. */
  public UserResponseDto() {
  }

  /** Constructor with all fields. */
  public UserResponseDto(String username, String name, String email, UserSportStatsResponseDto stats) {
    this.username = username;
    this.name = name;
    this.email = email;
    this.stats = stats;
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
   * Getter for stats
   * 
   * @return the user stats for each sport
   */
  public UserSportStatsResponseDto getStats() {
    return stats;
  }

  /**
   * Getter for location
   * 
   * @return the user location
   */
  public UserLocationResponseDto getLocation() {
    return location;
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

  /** Setter for stats. */
  public void setStats(UserSportStatsResponseDto stats) {
    this.stats = stats;
  }

  /** Setter for location. */
  public void setLocation(UserLocationResponseDto location) {
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
}
