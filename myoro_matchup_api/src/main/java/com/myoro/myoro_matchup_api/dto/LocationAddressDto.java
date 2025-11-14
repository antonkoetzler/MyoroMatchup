package com.myoro.myoro_matchup_api.dto;

import jakarta.validation.constraints.NotBlank;

/** Address of a location. */
public class LocationAddressDto {
  /** City. */
  @NotBlank(message = "{validation.game.location.city.required}")
  private String city;

  /** Country of the address. */
  @NotBlank(message = "{validation.game.location.country.required}")
  private String country;

  /** Default constructor. */
  public LocationAddressDto() {
  }

  /** Constructor with all fields. */
  public LocationAddressDto(String city, String country) {
    this.city = city;
    this.country = country;
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
   * Getter for country
   * 
   * @return the country of the address
   */
  public String getCountry() {
    return country;
  }

  /**
   * Setter for city
   * 
   * @param city the city
   */
  public void setCity(String city) {
    this.city = city;
  }

  /**
   * Setter for country
   * 
   * @param country the country of the address
   */
  public void setCountry(String country) {
    this.country = country;
  }
}
