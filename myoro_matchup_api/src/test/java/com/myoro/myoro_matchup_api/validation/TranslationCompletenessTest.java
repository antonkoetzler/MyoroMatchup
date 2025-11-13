package com.myoro.myoro_matchup_api.validation;

import static org.junit.jupiter.api.Assertions.fail;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Properties;
import java.util.Set;
import java.util.stream.Collectors;

import org.junit.jupiter.api.Test;

/**
 * Test to verify that all translation keys from messages.properties exist in
 * all locale files.
 */
class TranslationCompletenessTest {

  private static final String BASE_MESSAGES_FILE = "messages.properties";
  private static final String[] LOCALE_FILES = {
      "messages_ar.properties",
      "messages_de.properties",
      "messages_es.properties",
      "messages_fr.properties",
      "messages_hi.properties",
      "messages_id.properties",
      "messages_it.properties",
      "messages_ja.properties",
      "messages_ko.properties",
      "messages_nl.properties",
      "messages_pl.properties",
      "messages_pt.properties",
      "messages_ru.properties",
      "messages_th.properties",
      "messages_tr.properties",
      "messages_vi.properties",
      "messages_zh_TW.properties",
      "messages_zh.properties"
  };

  @Test
  void testAllTranslationsPresent() throws IOException {
    // Load base messages file
    Properties baseMessages = loadProperties(BASE_MESSAGES_FILE);
    Set<String> baseKeys = baseMessages.stringPropertyNames().stream()
        .filter(key -> !key.startsWith("#"))
        .collect(Collectors.toSet());

    List<String> missingTranslations = new ArrayList<>();

    // Check each locale file
    for (String localeFile : LOCALE_FILES) {
      Properties localeMessages = loadProperties(localeFile);
      Set<String> localeKeys = localeMessages.stringPropertyNames().stream()
          .filter(key -> !key.startsWith("#"))
          .collect(Collectors.toSet());

      // Find missing keys
      Set<String> missing = new HashSet<>(baseKeys);
      missing.removeAll(localeKeys);

      if (!missing.isEmpty()) {
        missingTranslations.add(String.format(
            "%s is missing %d key(s): %s",
            localeFile,
            missing.size(),
            String.join(", ", missing)));
      }
    }

    if (!missingTranslations.isEmpty()) {
      fail("Missing translations found:\n" + String.join("\n", missingTranslations));
    }
  }

  private Properties loadProperties(String filename) throws IOException {
    Properties props = new Properties();
    try (InputStream is = getClass().getClassLoader().getResourceAsStream(filename)) {
      if (is == null) {
        throw new IOException("Could not find resource: " + filename);
      }
      props.load(is);
    }
    return props;
  }
}
