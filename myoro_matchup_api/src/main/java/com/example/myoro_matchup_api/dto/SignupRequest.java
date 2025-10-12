package com.example.myoro_matchup_api.dto;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;

public class SignupRequest {
  /** Username. */
  @NotBlank(message = "Username is required.")
  @Size(min = 3, message = "Username must be at least 3 characters long.")
  private String username;

  /** Name. */
  @NotBlank(message = "Name is required.")
  @Size(min = 3, message = "Name must be at least 3 characters long.")
  private String name;

  /** Email. */
  @NotBlank(message = "Email is required.")
  @Email(message = "Invalid email address.")
  private String email;

  /** Password. */
  @NotBlank(message = "Password is required.")
  @Size(min = 8, message = "Password must be at least 8 characters long.")
  private String password;

  /** Default constructor. */
  public SignupRequest() {
  }

  /** Constructor with all fields. */
  public SignupRequest(String username, String name, String email, String password) {
    this.username = username;
    this.name = name;
    this.email = email;
    this.password = password;
  }

  /** Getter for username. */
  public String getUsername() {
    return username;
  }

  /** Getter for name. */
  public String getName() {
    return name;
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
