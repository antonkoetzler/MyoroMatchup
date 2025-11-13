package com.myoro.myoro_matchup_api.model;

import jakarta.persistence.Column;
import jakarta.persistence.Embedded;
import jakarta.persistence.Embeddable;

/** Location model. */
@Embeddable
public class LocationModel {
  /** Name of the location. */
  @Column(nullable = false)
  private String name;

  /** Address of the location. */
  @Embedded
  private LocationAddressModel address;

  /** Default constructor. */
  public LocationModel() {
  }

  /** Constructor with all fields. */
  public LocationModel(String name, LocationAddressModel address) {
    this.name = name;
    this.address = address;
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
   * Getter for address
   * 
   * @return the address of the location
   */
  public LocationAddressModel getAddress() {
    return address;
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
   * Setter for address
   * 
   * @param address the address of the location
   */
  public void setAddress(LocationAddressModel address) {
    this.address = address;
  }
}
