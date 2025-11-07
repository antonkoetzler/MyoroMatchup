package com.myoro.myoro_matchup_api.dto;

import jakarta.validation.constraints.DecimalMin;
import jakarta.validation.constraints.NotNull;

/** Game price DTO. */
public class GamePriceDto {
  /** Monthly price. */
  @NotNull(message = "{validation.game.monthly.price.required}")
  @DecimalMin(value = "0.0", inclusive = true, message = "{validation.game.monthly.price.min}")
  private Double monthlyPrice;

  /** Drop in price. */
  @NotNull(message = "{validation.game.drop.in.price.required}")
  @DecimalMin(value = "0.0", inclusive = true, message = "{validation.game.drop.in.price.min}")
  private Double dropInPrice;

  /** Default constructor. */
  public GamePriceDto() {
  }

  /** Constructor with all fields. */
  public GamePriceDto(Double monthlyPrice, Double dropInPrice) {
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

