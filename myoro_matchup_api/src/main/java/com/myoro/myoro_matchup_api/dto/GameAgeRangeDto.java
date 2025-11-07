package com.myoro.myoro_matchup_api.dto;

import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotNull;

/** Game age range DTO. */
public class GameAgeRangeDto {
  /** Minimum age. */
  @NotNull(message = "{validation.game.min.age.required}")
  @Min(value = 0, message = "{validation.game.min.age.min}")
  @Max(value = 100, message = "{validation.game.min.age.max}")
  private Integer minAge;

  /** Maximum age. */
  @NotNull(message = "{validation.game.max.age.required}")
  @Min(value = 0, message = "{validation.game.max.age.min}")
  @Max(value = 100, message = "{validation.game.max.age.max}")
  private Integer maxAge;

  /** Default constructor. */
  public GameAgeRangeDto() {
  }

  /** Constructor with all fields. */
  public GameAgeRangeDto(Integer minAge, Integer maxAge) {
    this.minAge = minAge;
    this.maxAge = maxAge;
  }

  /**
   * Getter for minAge
   * 
   * @return the minimum age
   */
  public Integer getMinAge() {
    return minAge;
  }

  /**
   * Getter for maxAge
   * 
   * @return the maximum age
   */
  public Integer getMaxAge() {
    return maxAge;
  }

  /**
   * Setter for minAge
   * 
   * @param minAge the minimum age
   */
  public void setMinAge(Integer minAge) {
    this.minAge = minAge;
  }

  /**
   * Setter for maxAge
   * 
   * @param maxAge the maximum age
   */
  public void setMaxAge(Integer maxAge) {
    this.maxAge = maxAge;
  }
}
