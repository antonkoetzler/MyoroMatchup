package com.myoro.myoro_matchup_api.config;

import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean;

/** Configuration for validation messages. */
@Configuration
public class ValidationConfig {

  /**
   * Configures the validator to use Spring's MessageSource for validation messages.
   * This allows validation messages to be loaded from messages.properties files.
   * 
   * @param messageSource the message source
   * @return configured validator factory bean
   */
  @Bean
  public LocalValidatorFactoryBean validator(MessageSource messageSource) {
    LocalValidatorFactoryBean bean = new LocalValidatorFactoryBean();
    bean.setValidationMessageSource(messageSource);
    return bean;
  }
}

