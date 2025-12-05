package com.myoro.myoro_matchup_api.dto;

/** Game player response DTO. */
public class GamePlayerResponseDto {
  /** User ID. */
  private Long id;

  /** Username. */
  private String username;

  /** Name. */
  private String name;

  /** Default constructor. */
  public GamePlayerResponseDto() {}

  /** Constructor with all fields. */
  public GamePlayerResponseDto(Long id, String username, String name) {
    this.id = id;
    this.username = username;
    this.name = name;
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
}
