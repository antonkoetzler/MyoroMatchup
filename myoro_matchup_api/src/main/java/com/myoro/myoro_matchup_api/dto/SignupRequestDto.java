package com.myoro.myoro_matchup_api.dto;

import com.myoro.myoro_matchup_api.util.ValidationConstants;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;

/** Signup request. */
public class SignupRequestDto {
  /** Username. */
  @NotBlank(message = "{validation.username.required}")
  @Size(min = ValidationConstants.MIN_USERNAME_LENGTH, message = "{validation.username.length}")
  @Pattern(regexp = ValidationConstants.USERNAME_PATTERN, message = "{validation.username.pattern}")
  private String username;

  /** Name. */
  @NotBlank(message = "{validation.name.required}")
  @Size(min = ValidationConstants.MIN_NAME_LENGTH, message = "{validation.name.length}")
  private String name;

  /** Email. */
  @NotBlank(message = "{validation.email.required}")
  @Email(message = "{validation.email.invalid}")
  private String email;

  /** Password. */
  @NotBlank(message = "{validation.password.required}")
  @Size(min = ValidationConstants.MIN_PASSWORD_LENGTH, message = "{validation.password.length}")
  private String password;

  /** Default constructor. */
  public SignupRequestDto() {
  }

  /** Constructor with all fields. */
  public SignupRequestDto(String username, String name, String email, String password) {
    this.username = username;
    this.name = name;
    this.email = email;
    this.password = password;
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
}
