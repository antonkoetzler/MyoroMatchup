package com.myoro.myoro_matchup_api.data;

import com.myoro.myoro_matchup_api.enums.DayEnum;
import com.myoro.myoro_matchup_api.enums.GameFrequencyEnum;
import com.myoro.myoro_matchup_api.enums.SportsEnum;
import com.myoro.myoro_matchup_api.enums.VisibilityEnum;
import com.myoro.myoro_matchup_api.model.GameAgeRangeModel;
import com.myoro.myoro_matchup_api.model.GameFrequencyDayTimeModel;
import com.myoro.myoro_matchup_api.model.GameModel;
import com.myoro.myoro_matchup_api.model.GamePriceModel;
import com.myoro.myoro_matchup_api.model.LocationModel;
import com.myoro.myoro_matchup_api.model.UserModel;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import net.datafaker.Faker;

/** Builder for creating GameModel instances. */
public class GameModelBuilder {
  private String name;
  private SportsEnum sport;
  private UserModel owner;
  private GameFrequencyEnum frequency;
  private DayEnum primaryDay;
  private DayEnum biWeeklyDay;
  private LocalTime primaryStartTime;
  private LocalTime primaryEndTime;
  private LocalTime biWeeklyStartTime;
  private LocalTime biWeeklyEndTime;
  private Double monthlyPrice;
  private Double dropInPrice;
  private Integer minAge;
  private Integer maxAge;
  private String locationName;
  private String city;
  private String state;
  private String country;
  private VisibilityEnum visibility;
  private List<UserModel> players;
  private final Faker faker;
  private final Random random;

  /** Creates a new builder with faker and random. */
  public GameModelBuilder(Faker faker, Random random) {
    this.faker = faker;
    this.random = random;
  }

  /** Sets the name. */
  public GameModelBuilder withName(String name) {
    this.name = name;
    return this;
  }

  /** Sets the sport. */
  public GameModelBuilder withSport(SportsEnum sport) {
    this.sport = sport;
    return this;
  }

  /** Sets the owner. */
  public GameModelBuilder withOwner(UserModel owner) {
    this.owner = owner;
    return this;
  }

  /** Sets the frequency. */
  public GameModelBuilder withFrequency(GameFrequencyEnum frequency) {
    this.frequency = frequency;
    return this;
  }

  /** Sets the visibility. */
  public GameModelBuilder withVisibility(VisibilityEnum visibility) {
    this.visibility = visibility;
    return this;
  }

  /** Sets the players. */
  public GameModelBuilder withPlayers(List<UserModel> players) {
    this.players = players;
    return this;
  }

  /** Generates random name. */
  public GameModelBuilder withRandomName() {
    this.name = faker.team().sport() + " " + faker.team().name();
    return this;
  }

  /** Generates random sport. */
  public GameModelBuilder withRandomSport() {
    this.sport = SportsEnum.values()[random.nextInt(SportsEnum.values().length)];
    return this;
  }

  /** Generates random frequency. */
  public GameModelBuilder withRandomFrequency() {
    this.frequency = GameFrequencyEnum.values()[random.nextInt(GameFrequencyEnum.values().length)];
    return this;
  }

  /** Generates random visibility. */
  public GameModelBuilder withRandomVisibility() {
    this.visibility = random.nextBoolean() ? VisibilityEnum.PUBLIC : VisibilityEnum.PRIVATE;
    return this;
  }

  /** Generates random day and time. */
  public GameModelBuilder withRandomDayAndTime() {
    this.primaryDay = DayEnum.values()[random.nextInt(DayEnum.values().length)];
    int startHour = random.nextInt(12) + 6; // 6 AM to 6 PM
    int endHour = startHour + random.nextInt(3) + 1; // 1-3 hour duration
    this.primaryStartTime = LocalTime.of(startHour, random.nextInt(2) * 30);
    this.primaryEndTime = LocalTime.of(Math.min(endHour, 23), random.nextInt(2) * 30);

    if (frequency == GameFrequencyEnum.BI_WEEKLY) {
      this.biWeeklyDay = DayEnum.values()[random.nextInt(DayEnum.values().length)];
      int biStartHour = random.nextInt(12) + 6;
      int biEndHour = biStartHour + random.nextInt(3) + 1;
      this.biWeeklyStartTime = LocalTime.of(biStartHour, random.nextInt(2) * 30);
      this.biWeeklyEndTime = LocalTime.of(Math.min(biEndHour, 23), random.nextInt(2) * 30);
    }
    return this;
  }

  /** Generates random price. */
  public GameModelBuilder withRandomPrice() {
    this.monthlyPrice = faker.number().randomDouble(2, 20, 100);
    this.dropInPrice = faker.number().randomDouble(2, 5, 25);
    return this;
  }

  /** Generates random age range. */
  public GameModelBuilder withRandomAgeRange() {
    int min = random.nextInt(15) + 18; // 18-32
    this.minAge = min;
    this.maxAge = min + random.nextInt(20) + 5; // 5-25 years range
    return this;
  }

  /** Generates random location. */
  public GameModelBuilder withRandomLocation() {
    this.locationName = faker.company().name() + " " + faker.address().buildingNumber();
    this.city = faker.address().city();
    this.state = faker.address().stateAbbr();
    this.country = getRandomCountryCode();
    return this;
  }

  /** Gets a random country code matching MyoroCountryEnum JsonValue. */
  private String getRandomCountryCode() {
    String[] countryCodes = {
      "af", "al", "dz", "ad", "ao", "ag", "ar", "am", "au", "at", "az", "bs", "bh", "bd", "bb",
      "by", "be", "bz", "bj", "bt", "bo", "ba", "bw", "br", "bn", "bg", "bf", "bi", "kh", "cm",
      "ca", "cv", "cf", "td", "cl", "cn", "co", "km", "cg", "cr", "hr", "cu", "cy", "cz", "dk",
      "dj", "dm", "do", "cd", "ec", "eg", "sv", "gq", "er", "ee", "sz", "et", "fj", "fi", "fr",
      "ga", "gm", "ge", "de", "gh", "gr", "gd", "gt", "gn", "gw", "gy", "ht", "hn", "hu", "is",
      "in", "id", "ir", "iq", "ie", "il", "it", "ci", "jm", "jp", "jo", "kz", "ke", "ki", "xk",
      "kw", "kg", "la", "lv", "lb", "ls", "lr", "ly", "li", "lt", "lu", "mg", "mw", "my", "mv",
      "ml", "mt", "mh", "mr", "mu", "mx", "fm", "md", "mc", "mn", "me", "ma", "mz", "mm", "na",
      "nr", "np", "nl", "nz", "ni", "ne", "ng", "kp", "mk", "no", "om", "pk", "pw", "ps", "pa",
      "pg", "py", "pe", "ph", "pl", "pt", "qa", "ro", "ru", "rw", "kn", "lc", "vc", "ws", "sm",
      "st", "sa", "sn", "rs", "sc", "sl", "sg", "sk", "si", "sb", "so", "za", "kr", "ss", "es",
      "lk", "sd", "sr", "se", "ch", "sy", "tw", "tj", "tz", "th", "tl", "tg", "to", "tt", "tn",
      "tr", "tm", "tv", "ug", "ua", "ae", "gb", "us", "uy", "uz", "vu", "va", "ve", "vn", "ye",
      "zm", "zw"
    };
    return countryCodes[random.nextInt(countryCodes.length)];
  }

  /** Builds the GameModel instance. */
  public GameModel build() {
    GameModel game = new GameModel();
    if (name != null) {
      game.setName(name);
    }
    if (sport != null) {
      game.setSport(sport);
    }
    if (owner != null) {
      game.setOwner(owner);
    }
    if (visibility != null) {
      game.setVisibility(visibility);
    }

    // Frequency
    if (frequency != null || primaryDay != null) {
      GameFrequencyDayTimeModel frequencyModel = new GameFrequencyDayTimeModel();
      if (frequency != null) {
        frequencyModel.setFrequency(frequency);
      }
      if (primaryDay != null) {
        frequencyModel.setPrimaryDay(primaryDay);
      }
      if (biWeeklyDay != null) {
        frequencyModel.setBiWeeklyDay(biWeeklyDay);
      }
      if (primaryStartTime != null) {
        frequencyModel.setPrimaryStartTime(primaryStartTime);
      }
      if (primaryEndTime != null) {
        frequencyModel.setPrimaryEndTime(primaryEndTime);
      }
      if (biWeeklyStartTime != null) {
        frequencyModel.setBiWeeklyStartTime(biWeeklyStartTime);
      }
      if (biWeeklyEndTime != null) {
        frequencyModel.setBiWeeklyEndTime(biWeeklyEndTime);
      }
      game.setFrequencyDayTime(frequencyModel);
    }

    // Price
    if (monthlyPrice != null || dropInPrice != null) {
      GamePriceModel priceModel = new GamePriceModel();
      if (monthlyPrice != null) {
        priceModel.setMonthlyPrice(monthlyPrice);
      }
      if (dropInPrice != null) {
        priceModel.setDropInPrice(dropInPrice);
      }
      game.setPrice(priceModel);
    }

    // Age range
    if (minAge != null || maxAge != null) {
      GameAgeRangeModel ageRangeModel = new GameAgeRangeModel();
      if (minAge != null) {
        ageRangeModel.setMinAge(minAge);
      }
      if (maxAge != null) {
        ageRangeModel.setMaxAge(maxAge);
      }
      game.setAgeRange(ageRangeModel);
    }

    // Location
    if (locationName != null || city != null) {
      LocationModel locationModel = new LocationModel();
      if (locationName != null) {
        locationModel.setName(locationName);
      }
      if (city != null) {
        locationModel.setCity(city);
      }
      if (state != null) {
        locationModel.setState(state);
      }
      if (country != null) {
        locationModel.setCountry(country);
      }
      game.setLocation(locationModel);
    }

    // Players
    if (players != null) {
      game.setPlayers(players);
    } else {
      game.setPlayers(new ArrayList<>());
    }

    return game;
  }
}
