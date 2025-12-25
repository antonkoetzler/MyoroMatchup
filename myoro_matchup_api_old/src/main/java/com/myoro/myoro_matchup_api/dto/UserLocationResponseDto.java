package com.myoro.myoro_matchup_api.dto;

import com.myoro.myoro_matchup_api.enums.CountryEnum;

/** User location response DTO. */
public class UserLocationResponseDto {
  /** Country. */
  private CountryEnum country;

  /** State. */
  private String state;

  /** City. */
  private String city;

  /** Default constructor. */
  public UserLocationResponseDto() {}

  /** Constructor with all fields. */
  public UserLocationResponseDto(CountryEnum country, String state, String city) {
    this.country = country;
    this.state = state;
    this.city = city;
  }

  /**
   * Getter for country
   *
   * @return the country
   */
  public CountryEnum getCountry() {
    return country;
  }

  /**
   * Getter for state
   *
   * @return the state
   */
  public String getState() {
    return state;
  }

  /**
   * Getter for city
   *
   * @return the city
   */
  public String getCity() {
    return city;
  }

  /** Setter for country. */
  public void setCountry(CountryEnum country) {
    this.country = country;
  }

  /** Setter for state. */
  public void setState(String state) {
    this.state = state;
  }

  /** Setter for city. */
  public void setCity(String city) {
    this.city = city;
  }
}
