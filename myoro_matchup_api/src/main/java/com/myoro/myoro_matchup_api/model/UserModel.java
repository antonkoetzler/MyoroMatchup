package com.myoro.myoro_matchup_api.model;

import java.time.LocalDateTime;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

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

  /** Created at. */
  @Column(nullable = false)
  private LocalDateTime createdAt;

  /** Default constructor. */
  public UserModel() {
  }

  /** Constructor with all fields. */
  public UserModel(String username, String name, String email, String password) {
    this.username = username;
    this.name = name;
    this.email = email;
    this.password = password;
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

  /** Setter for created at. */
  public void setCreatedAt(LocalDateTime createdAt) {
    this.createdAt = createdAt;
  }
}
