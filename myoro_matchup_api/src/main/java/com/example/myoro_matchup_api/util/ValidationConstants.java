package com.example.myoro_matchup_api.util;

/** Validation constants. */
public final class ValidationConstants {
  /** Minimum username length. */
  public static final int MIN_USERNAME_LENGTH = 3;

  /** Minimum name length. */
  public static final int MIN_NAME_LENGTH = 3;

  /** Minimum password length. */
  public static final int MIN_PASSWORD_LENGTH = 8;

  /** Private constructor to prevent instantiation. */
  private ValidationConstants() {
    throw new UnsupportedOperationException("This is a utility class and cannot be instantiated.");
  }
}