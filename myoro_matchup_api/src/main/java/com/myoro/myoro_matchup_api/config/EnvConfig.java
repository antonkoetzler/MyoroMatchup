package com.myoro.myoro_matchup_api.config;

import io.github.cdimascio.dotenv.Dotenv;
import jakarta.annotation.PostConstruct;
import org.springframework.stereotype.Component;

/** Configuration class to load .env file at application startup. */
@Component
public class EnvConfig {

  /** Load environment variables from .env file. */
  @PostConstruct
  public void loadEnv() {
    Dotenv dotenv = Dotenv.configure().ignoreIfMissing().load();
    dotenv.entries().forEach(entry -> {
      String key = entry.getKey();
      String value = entry.getValue();
      if (System.getProperty(key) == null && System.getenv(key) == null) {
        System.setProperty(key, value);
      }
    });
  }
}
