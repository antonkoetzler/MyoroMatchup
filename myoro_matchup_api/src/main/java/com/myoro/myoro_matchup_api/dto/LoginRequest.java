package com.myoro.myoro_matchup_api.dto;

import com.myoro.myoro_matchup_api.util.ValidationConstants;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;

/** Login request. */
public class LoginRequest {
  /** Username. */
  @Size(min = ValidationConstants.MIN_USERNAME_LENGTH, message = "{validation.username.length}")
  private String username;

  /** Email. */
  @Email(message = "{validation.email.invalid}")
  private String email;

  /** Password. */
  @NotBlank(message = "{validation.password.required}")
  @Size(min = ValidationConstants.MIN_PASSWORD_LENGTH, message = "{validation.password.length}")
  private String password;

  /* Default constructor. */
  public LoginRequest() {
  }

  /** Constructor with all fields. */
  public LoginRequest(String username, String email, String password) {
    this.username = username;
    this.email = email;
    this.password = password;
  }

  /** Getter for username. */
  public String getUsername() {
    return username;
  }

  /** Getter for email. */
  public String getEmail() {
    return email;
  }

  /** Getter for password. */
  public String getPassword() {
    return password;
  }

  /** Setter for username. */
  public void setUsername(String username) {
    this.username = username;
  }

  /** Setter for email. */
  public void setEmail(String email) {
    this.email = email;
  }

  /** Setter for password. */
  public void setPassword(String password) {
    this.password = password;
  }
}
