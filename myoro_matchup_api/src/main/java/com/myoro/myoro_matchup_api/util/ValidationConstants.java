package com.myoro.myoro_matchup_api.util;

/** Validation constants. */
public final class ValidationConstants {
  /** Minimum username length. */
  public static final int MIN_USERNAME_LENGTH = 3;

  /** Maximum username length. */
  public static final int MAX_USERNAME_LENGTH = 30;

  /** Minimum name length. */
  public static final int MIN_NAME_LENGTH = 3;

  /** Minimum password length. */
  public static final int MIN_PASSWORD_LENGTH = 8;

  /** Username pattern - only letters and numbers. */
  public static final String USERNAME_PATTERN = "^[a-zA-Z0-9]+$";

  /** WhatsApp group chat link pattern - must match https://chat.whatsapp.com/[code]. */
  public static final String WHATSAPP_GROUP_CHAT_LINK_PATTERN =
      "^https://chat\\.whatsapp\\.com/[A-Za-z0-9_-]+$";

  /** Private constructor to prevent instantiation. */
  private ValidationConstants() {
    throw new UnsupportedOperationException("This is a utility class and cannot be instantiated.");
  }
}
