package com.myoro.myoro_matchup_api.dto;

import jakarta.validation.constraints.NotBlank;

/** Location DTO. */
public class LocationDto {
  /** Name of the location. */
  @NotBlank(message = "{validation.game.location.name.required}")
  private String name;

  /** City that the location resides in. */
  @NotBlank(message = "{validation.game.location.city.required}")
  private String city;

  /** Country that the location resides in. */
  private String country;

  /** Default constructor. */
  public LocationDto() {
  }

  /** Constructor with all fields. */
  public LocationDto(String name, String city, String country) {
    this.name = name;
    this.city = city;
    this.country = country;
  }

  /**
   * Getter for name
   * 
   * @return the name of the location
   */
  public String getName() {
    return name;
  }

  /**
   * Getter for city
   * 
   * @return the city that the location resides in
   */
  public String getCity() {
    return city;
  }

  /**
   * Getter for country
   * 
   * @return the country that the location resides in
   */
  public String getCountry() {
    return country;
  }

  /**
   * Setter for name
   * 
   * @param name the name of the location
   */
  public void setName(String name) {
    this.name = name;
  }

  /**
   * Setter for city
   * 
   * @param city the city that the location resides in
   */
  public void setCity(String city) {
    this.city = city;
  }

  /**
   * Setter for country
   * 
   * @param country the country that the location resides in
   */
  public void setCountry(String country) {
    this.country = country;
  }
}
