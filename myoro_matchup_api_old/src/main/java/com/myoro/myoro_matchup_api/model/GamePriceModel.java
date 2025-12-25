package com.myoro.myoro_matchup_api.model;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;

/** Game price model. */
@Embeddable
public class GamePriceModel {
  /** Monthly price. */
  @Column(nullable = false)
  private Double monthlyPrice;

  /** Drop in price. */
  @Column(nullable = false)
  private Double dropInPrice;

  /** Default constructor. */
  public GamePriceModel() {}

  /** Constructor with all fields. */
  public GamePriceModel(Double monthlyPrice, Double dropInPrice) {
    this.monthlyPrice = monthlyPrice;
    this.dropInPrice = dropInPrice;
  }

  /**
   * Getter for monthlyPrice
   *
   * @return the monthly price
   */
  public Double getMonthlyPrice() {
    return monthlyPrice;
  }

  /**
   * Getter for dropInPrice
   *
   * @return the drop in price
   */
  public Double getDropInPrice() {
    return dropInPrice;
  }

  /**
   * Setter for monthlyPrice
   *
   * @param monthlyPrice the monthly price
   */
  public void setMonthlyPrice(Double monthlyPrice) {
    this.monthlyPrice = monthlyPrice;
  }

  /**
   * Setter for dropInPrice
   *
   * @param dropInPrice the drop in price
   */
  public void setDropInPrice(Double dropInPrice) {
    this.dropInPrice = dropInPrice;
  }
}
