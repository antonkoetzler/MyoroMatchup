package com.myoro.myoro_matchup_api.model;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;

/** Address of a location. */
@Embeddable
public class LocationAddressModel {
  /** City. */
  @Column(nullable = false)
  private String city;

  /** Country of the address. */
  @Column(nullable = true)
  private String country;

  /** Default constructor. */
  public LocationAddressModel() {
  }

  /** Constructor with all fields. */
  public LocationAddressModel(String city, String country) {
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

