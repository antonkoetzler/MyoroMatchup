package com.myoro.myoro_matchup_api.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Service;

/** Message service (for localizing messages). */
@Service
public class MessageService {
  /** Spring message source for internationalization */
  @Autowired
  private MessageSource messageSource;

  /**
   * Retrieves localized message by key
   *
   * @param key the message key to retrieve
   * @return localized message string
   */
  @SuppressWarnings("null")
  public String getMessage(String key) {
    return messageSource.getMessage(key, null, LocaleContextHolder.getLocale());
  }

  /**
   * Retrieves localized message by key with parameters
   *
   * @param key  the message key to retrieve
   * @param args the arguments to substitute in the message
   * @return localized message string
   */
  public String getMessage(String key, String... args) {
    return messageSource.getMessage(key, args, LocaleContextHolder.getLocale());
  }
}
