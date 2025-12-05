package com.myoro.myoro_matchup_api.model;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;

/** Location model. */
@Embeddable
public class LocationModel {
  /** Name of the location. */
  @Column(nullable = false)
  private String name;

  /** City of the location. */
  @Column(nullable = false)
  private String city;

  /** State of the location. */
  @Column(nullable = true)
  private String state;

  /** Country of the location. */
  @Column(nullable = true)
  private String country;

  /** Default constructor. */
  public LocationModel() {}

  /** Constructor with all fields. */
  public LocationModel(String name, String city, String state, String country) {
    this.name = name;
    this.city = city;
    this.state = state;
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
   * @return the city of the location
   */
  public String getCity() {
    return city;
  }

  /**
   * Getter for state
   *
   * @return the state of the location
   */
  public String getState() {
    return state;
  }

  /**
   * Getter for country
   *
   * @return the country of the location
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
   * @param city the city of the location
   */
  public void setCity(String city) {
    this.city = city;
  }

  /**
   * Setter for state
   *
   * @param state the state of the location
   */
  public void setState(String state) {
    this.state = state;
  }

  /**
   * Setter for country
   *
   * @param country the country of the location
   */
  public void setCountry(String country) {
    this.country = country;
  }
}
