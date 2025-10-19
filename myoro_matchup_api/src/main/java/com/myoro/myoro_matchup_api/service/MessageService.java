package com.myoro.myoro_matchup_api.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Service;

/** Message service (for localizing messages). */
@Service
public class MessageService {
  /** Message source. */
  @Autowired
  private MessageSource messageSource;

  /** Get message. */
  public String getMessage(String key) {
    return messageSource.getMessage(key, null, LocaleContextHolder.getLocale());
  }
}
