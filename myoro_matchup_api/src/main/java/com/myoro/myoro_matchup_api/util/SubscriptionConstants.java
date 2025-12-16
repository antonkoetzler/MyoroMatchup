package com.myoro.myoro_matchup_api.util;

/** Constants for subscription functionality. */
public class SubscriptionConstants {
  /** Maximum number of games a free user can participate in. */
  public static final int FREE_USER_MAX_GAMES = 2;

  /** Monthly subscription price in USD. */
  public static final double MONTHLY_PRICE_USD = 7.00;

  /** iOS monthly product ID. */
  public static final String IOS_MONTHLY_PRODUCT_ID = "com.myoro.myoro_matchup.premium_monthly";

  /** Android monthly product ID. */
  public static final String ANDROID_MONTHLY_PRODUCT_ID = "premium_monthly";

  /** Private constructor to prevent instantiation. */
  private SubscriptionConstants() {}
}
