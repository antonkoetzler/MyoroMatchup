package com.myoro.myoro_matchup_api.model;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;

/** Game age range model. */
@Embeddable
public class GameAgeRangeModel {
  /** Minimum age. */
  @Column(nullable = false)
  private Integer minAge;

  /** Maximum age. */
  @Column(nullable = false)
  private Integer maxAge;

  /** Default constructor. */
  public GameAgeRangeModel() {}

  /** Constructor with all fields. */
  public GameAgeRangeModel(Integer minAge, Integer maxAge) {
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
