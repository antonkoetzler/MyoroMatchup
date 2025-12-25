package com.myoro.myoro_matchup_api.dto;

import jakarta.validation.constraints.DecimalMin;
import jakarta.validation.constraints.NotNull;

/** Game price DTO. */
public class GamePriceDto {
  /** Member price. */
  @NotNull(message = "{validation.game.member.price.required}")
  @DecimalMin(value = "0.0", inclusive = true, message = "{validation.game.member.price.min}")
  private Double memberPrice;

  /** Drop in price. */
  @NotNull(message = "{validation.game.drop.in.price.required}")
  @DecimalMin(value = "0.0", inclusive = true, message = "{validation.game.drop.in.price.min}")
  private Double dropInPrice;

  /** Default constructor. */
  public GamePriceDto() {}

  /** Constructor with all fields. */
  public GamePriceDto(Double memberPrice, Double dropInPrice) {
    this.memberPrice = memberPrice;
    this.dropInPrice = dropInPrice;
  }

  /**
   * Getter for memberPrice
   *
   * @return the member price
   */
  public Double getMemberPrice() {
    return memberPrice;
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
   * Setter for memberPrice
   *
   * @param memberPrice the member price
   */
  public void setMemberPrice(Double memberPrice) {
    this.memberPrice = memberPrice;
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
