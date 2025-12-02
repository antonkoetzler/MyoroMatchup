package com.myoro.myoro_matchup_api.model;

import com.myoro.myoro_matchup_api.enums.CountryEnum;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;

/** User location model. */
@Embeddable
public class UserLocationModel {
  /** Country. */
  @Column(nullable = false)
  private CountryEnum country;

  /** State. */
  private String state;

  /** City. */
  private String city;

  /** Default constructor. */
  public UserLocationModel() {
  }

  /** Constructor with all fields. */
  public UserLocationModel(CountryEnum country, String state, String city) {
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

  /**
   * Setter for country
   * 
   * @param country the country
   */
  public void setCountry(CountryEnum country) {
    this.country = country;
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
   * Setter for city
   * 
   * @param city the city
   */
  public void setCity(String city) {
    this.city = city;
  }
}
