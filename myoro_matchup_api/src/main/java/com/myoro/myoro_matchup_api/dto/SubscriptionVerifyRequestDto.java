package com.myoro.myoro_matchup_api.dto;

import jakarta.validation.constraints.NotBlank;

/** DTO for subscription verification request. */
public class SubscriptionVerifyRequestDto {
  /** The receipt data from the app store (iOS) or purchase token (Android). */
  @NotBlank(message = "Receipt is required")
  private String receipt;

  /** The platform (ios or android). */
  @NotBlank(message = "Platform is required")
  private String platform;

  /** The product ID. */
  @NotBlank(message = "Product ID is required")
  private String productId;

  /** Default constructor. */
  public SubscriptionVerifyRequestDto() {}

  /** Constructor with all fields. */
  public SubscriptionVerifyRequestDto(String receipt, String platform, String productId) {
    this.receipt = receipt;
    this.platform = platform;
    this.productId = productId;
  }

  /**
   * Getter for receipt
   *
   * @return the receipt
   */
  public String getReceipt() {
    return receipt;
  }

  /** Setter for receipt. */
  public void setReceipt(String receipt) {
    this.receipt = receipt;
  }

  /**
   * Getter for platform
   *
   * @return the platform
   */
  public String getPlatform() {
    return platform;
  }

  /** Setter for platform. */
  public void setPlatform(String platform) {
    this.platform = platform;
  }

  /**
   * Getter for productId
   *
   * @return the product ID
   */
  public String getProductId() {
    return productId;
  }

  /** Setter for productId. */
  public void setProductId(String productId) {
    this.productId = productId;
  }
}
