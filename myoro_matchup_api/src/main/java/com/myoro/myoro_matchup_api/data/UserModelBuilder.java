package com.myoro.myoro_matchup_api.data;

import java.time.LocalDateTime;
import java.util.Random;

import org.springframework.security.crypto.password.PasswordEncoder;

import com.myoro.myoro_matchup_api.enums.CountryEnum;
import com.myoro.myoro_matchup_api.enums.VisibilityEnum;
import com.myoro.myoro_matchup_api.model.UserLocationModel;
import com.myoro.myoro_matchup_api.model.UserModel;

import net.datafaker.Faker;

/** Builder for creating UserModel instances. */
public class UserModelBuilder {
  private String username;
  private String name;
  private String email;
  private String password;
  private LocalDateTime createdAt;
  private UserLocationModel location;
  private Boolean isSubscribed;
  private VisibilityEnum visibility;
  private final Faker faker;
  private final PasswordEncoder passwordEncoder;
  private final Random random = new Random();

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

  /** Sets the location. */
  public UserModelBuilder withLocation(UserLocationModel location) {
    this.location = location;
    return this;
  }

  /** Generates random location. */
  public UserModelBuilder withRandomLocation() {
    CountryEnum[] countries = CountryEnum.values();
    CountryEnum country = countries[random.nextInt(countries.length)];
    String state = faker.address().stateAbbr();
    String city = faker.address().city();
    this.location = new UserLocationModel(country, state, city);
    return this;
  }

  /** Sets the subscription status. */
  public UserModelBuilder withIsSubscribed(Boolean isSubscribed) {
    this.isSubscribed = isSubscribed;
    return this;
  }

  /** Sets the visibility. */
  public UserModelBuilder withVisibility(VisibilityEnum visibility) {
    this.visibility = visibility;
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
    if (location != null) {
      user.setLocation(location);
    }
    if (isSubscribed != null) {
      user.setIsSubscribed(isSubscribed);
    } else {
      user.setIsSubscribed(false); // Default to false if not set
    }
    if (visibility != null) {
      user.setVisibility(visibility);
    } else {
      user.setVisibility(VisibilityEnum.PRIVATE); // Default to PRIVATE if not set
    }
    return user;
  }
}
