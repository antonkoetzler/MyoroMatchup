package com.myoro.myoro_matchup_api.dto;

import com.fasterxml.jackson.annotation.JsonInclude;

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
  @JsonInclude(JsonInclude.Include.NON_NULL)
  private UserSportStatsResponseDto stats;

  /** Default constructor. */
  public UserResponseDto() {
  }

  /** Constructor with all fields. */
  public UserResponseDto(Long id, String username, String name, String email, UserSportStatsResponseDto stats) {
    this.id = id;
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
}
