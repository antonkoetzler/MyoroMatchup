package com.myoro.myoro_matchup_api.dto;

import jakarta.validation.constraints.NotNull;

/** Login response. */
public class LoginResponseDto {
  /** User ID. */
  @NotNull private Long id;

  /** Token. */
  @NotNull private String token;

  /**
   * Constructor.
   *
   * @param id User ID.
   * @param token Token.
   */
  public LoginResponseDto(Long id, String token) {
    this.id = id;
    this.token = token;
  }

  /**
   * Getter for ID.
   *
   * @return User ID.
   */
  public Long getId() {
    return id;
  }

  /**
   * Getter for token.
   *
   * @return Token.
   */
  public String getToken() {
    return token;
  }

  /**
   * Setter for ID.
   *
   * @param id User ID.
   */
  public void setId(Long id) {
    this.id = id;
  }

  /**
   * Setter for token.
   *
   * @param token Token.
   */
  public void setToken(String token) {
    this.token = token;
  }
}
