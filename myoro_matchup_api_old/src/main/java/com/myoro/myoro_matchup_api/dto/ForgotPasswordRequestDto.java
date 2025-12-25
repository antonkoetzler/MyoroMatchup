package com.myoro.myoro_matchup_api.dto;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;

/** Forgot password request. */
public class ForgotPasswordRequestDto {
  /** Email. */
  @NotBlank(message = "{validation.email.required}")
  @Email(message = "{validation.email.invalid}")
  private String email;

  /** Default constructor. */
  public ForgotPasswordRequestDto() {}

  /**
   * Constructor with email.
   *
   * @param email the email address
   */
  public ForgotPasswordRequestDto(String email) {
    this.email = email;
  }

  /**
   * Getter for email
   *
   * @return the email
   */
  public String getEmail() {
    return email;
  }

  /** Setter for email. */
  public void setEmail(String email) {
    this.email = email;
  }
}
