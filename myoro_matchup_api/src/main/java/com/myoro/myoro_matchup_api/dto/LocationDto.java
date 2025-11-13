package com.myoro.myoro_matchup_api.dto;

import jakarta.validation.Valid;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

/** Location DTO. */
public class LocationDto {
  /** Name of the location. */
  @NotBlank(message = "{validation.game.location.name.required}")
  private String name;

  /** Address of the location. */
  @NotNull(message = "{validation.game.location.address.required}")
  @Valid
  private LocationAddressDto address;

  /** Default constructor. */
  public LocationDto() {
  }

  /** Constructor with all fields. */
  public LocationDto(String name, LocationAddressDto address) {
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
  public LocationAddressDto getAddress() {
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
  public void setAddress(LocationAddressDto address) {
    this.address = address;
  }
}
