package com.myoro.myoro_matchup_api.dto;

import com.myoro.myoro_matchup_api.enums.CountryEnum;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

/** Request DTO for updating user location. */
public class UserLocationUpdateRequestDto {
  /** Country. */
  @NotNull(message = "{validation.user.location.country.required}")
  private CountryEnum country;

  /** State. */
  @NotBlank(message = "{validation.user.location.state.required}")
  private String state;

  /** City. */
  @NotBlank(message = "{validation.user.location.city.required}")
  private String city;

  /** Default constructor. */
  public UserLocationUpdateRequestDto() {}

  /**
   * Getter for country
   *
   * @return the country
   */
  public CountryEnum getCountry() {
    return country;
  }

  /**
   * Setter for country
   *
   * @param country the country
   */
  public void setCountry(CountryEnum country) {
    this.country = country;
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
   * Setter for state
   *
   * @param state the state
   */
  public void setState(String state) {
    this.state = state;
  }

  /**
   * Getter for city
   *
   * @return the city
   */
  public String getCity() {
    return city;
  }

  /**
   * Setter for city
   *
   * @param city the city
   */
  public void setCity(String city) {
    this.city = city;
  }
}
