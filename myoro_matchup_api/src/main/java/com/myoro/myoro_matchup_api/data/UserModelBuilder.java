package com.myoro.myoro_matchup_api.data;

import java.time.LocalDateTime;

import org.springframework.security.crypto.password.PasswordEncoder;

import com.myoro.myoro_matchup_api.model.UserModel;

import net.datafaker.Faker;

/** Builder for creating UserModel instances. */
public class UserModelBuilder {
  private String username;
  private String name;
  private String email;
  private String password;
  private LocalDateTime createdAt;
  private final Faker faker;
  private final PasswordEncoder passwordEncoder;

  /** Creates a new builder with faker and password encoder. */
  public UserModelBuilder(Faker faker, PasswordEncoder passwordEncoder) {
    this.faker = faker;
    this.passwordEncoder = passwordEncoder;
  }

  /** Sets the username. */
  public UserModelBuilder withUsername(String username) {
    this.username = username;
    return this;
  }

  /** Sets the name. */
  public UserModelBuilder withName(String name) {
    this.name = name;
    return this;
  }

  /** Sets the email. */
  public UserModelBuilder withEmail(String email) {
    this.email = email;
    return this;
  }

  /** Sets the password (will be hashed). */
  public UserModelBuilder withPassword(String password) {
    this.password = password;
    return this;
  }

  /** Sets the created at timestamp. */
  public UserModelBuilder withCreatedAt(LocalDateTime createdAt) {
    this.createdAt = createdAt;
    return this;
  }

  /** Generates random username. */
  public UserModelBuilder withRandomUsername() {
    this.username = faker.internet().username();
    return this;
  }

  /** Generates random name. */
  public UserModelBuilder withRandomName() {
    this.name = faker.name().fullName();
    return this;
  }

  /** Generates random email. */
  public UserModelBuilder withRandomEmail() {
    this.email = faker.internet().emailAddress();
    return this;
  }

  /** Generates random password. */
  public UserModelBuilder withRandomPassword() {
    this.password = faker.internet().password(8, 20);
    return this;
  }

  /** Builds the UserModel instance. */
  public UserModel build() {
    UserModel user = new UserModel();
    if (username != null) {
      user.setUsername(username);
    }
    if (name != null) {
      user.setName(name);
    }
    if (email != null) {
      user.setEmail(email);
    }
    if (password != null) {
      user.setPassword(passwordEncoder.encode(password));
    }
    if (createdAt != null) {
      user.setCreatedAt(createdAt);
    } else {
      user.setCreatedAt(LocalDateTime.now());
    }
    return user;
  }
}
