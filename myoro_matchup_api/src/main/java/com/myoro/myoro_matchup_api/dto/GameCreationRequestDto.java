package com.myoro.myoro_matchup_api.dto;

import com.myoro.myoro_matchup_api.enums.GameVisibilityEnum;
import com.myoro.myoro_matchup_api.enums.SportsEnum;
import com.myoro.myoro_matchup_api.util.GameConstants;

import jakarta.validation.Valid;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

/** Game creation request. */
public class GameCreationRequestDto {
  /** Name. */
  @NotBlank(message = "{validation.game.name.required}")
  @Size(min = GameConstants.MIN_NAME_LENGTH, max = GameConstants.MAX_NAME_LENGTH, message = "{validation.game.name.length}")
  private String name;

  /** Sport. */
  @NotNull(message = "{validation.game.sport.required}")
  private SportsEnum sport;

  /** Frequency of the game. */
  @NotNull(message = "{validation.game.frequency.day.time.required}")
  @Valid
  private GameFrequencyDayTimeDto frequencyDayTime;

  /** Price of the game. */
  @NotNull(message = "{validation.game.price.required}")
  @Valid
  private GamePriceDto price;

  /** Age range of the game. */
  @NotNull(message = "{validation.game.age.range.required}")
  @Valid
  private GameAgeRangeDto ageRange;

  /** Visibility of the game. */
  @NotNull(message = "{validation.game.visibility.required}")
  private GameVisibilityEnum visibility;

  /** Profile picture of the game. */
  @NotBlank(message = "{validation.game.profile.picture.required}")
  private String profilePicture;

  /** Banner of the game. */
  @NotBlank(message = "{validation.game.banner.required}")
  private String banner;

  /** Default constructor. */
  public GameCreationRequestDto() {
  }

  /** Constructor with all fields. */
  public GameCreationRequestDto(String name, SportsEnum sport, GameFrequencyDayTimeDto frequencyDayTime,
      GamePriceDto price, GameAgeRangeDto ageRange, GameVisibilityEnum visibility, String profilePicture,
      String banner) {
    this.name = name;
    this.sport = sport;
    this.frequencyDayTime = frequencyDayTime;
    this.price = price;
    this.ageRange = ageRange;
    this.visibility = visibility;
    this.profilePicture = profilePicture;
    this.banner = banner;
  }

  /**
   * Getter for name
   * 
   * @return the name
   */
  public String getName() {
    return name;
  }

  /**
   * Getter for sport
   * 
   * @return the sport
   */
  public SportsEnum getSport() {
    return sport;
  }

  /**
   * Getter for frequencyDayTime
   * 
   * @return the frequency and day time of the game
   */
  public GameFrequencyDayTimeDto getFrequencyDayTime() {
    return frequencyDayTime;
  }

  /**
   * Getter for price
   * 
   * @return the price of the game
   */
  public GamePriceDto getPrice() {
    return price;
  }

  /**
   * Getter for ageRange
   * 
   * @return the age range of the game
   */
  public GameAgeRangeDto getAgeRange() {
    return ageRange;
  }

  /**
   * Getter for visibility
   * 
   * @return the visibility of the game
   */
  public GameVisibilityEnum getVisibility() {
    return visibility;
  }

  /**
   * Getter for profilePicture
   * 
   * @return the profile picture of the game
   */
  public String getProfilePicture() {
    return profilePicture;
  }

  /**
   * Getter for banner
   * 
   * @return the banner of the game
   */
  public String getBanner() {
    return banner;
  }

  /**
   * Setter for name
   * 
   * @param name the name
   */
  public void setName(String name) {
    this.name = name;
  }

  /**
   * Setter for sport
   * 
   * @param sport the sport
   */
  public void setSport(SportsEnum sport) {
    this.sport = sport;
  }

  /**
   * Setter for frequencyDayTime
   * 
   * @param frequencyDayTime the frequency and day time of the game
   */
  public void setFrequencyDayTime(GameFrequencyDayTimeDto frequencyDayTime) {
    this.frequencyDayTime = frequencyDayTime;
  }

  /**
   * Setter for price
   * 
   * @param price the price of the game
   */
  public void setPrice(GamePriceDto price) {
    this.price = price;
  }

  /**
   * Setter for ageRange
   * 
   * @param ageRange the age range of the game
   */
  public void setAgeRange(GameAgeRangeDto ageRange) {
    this.ageRange = ageRange;
  }

  /**
   * Setter for visibility
   * 
   * @param visibility the visibility of the game
   */
  public void setVisibility(GameVisibilityEnum visibility) {
    this.visibility = visibility;
  }

  /**
   * Setter for profilePicture
   * 
   * @param profilePicture the profile picture of the game
   */
  public void setProfilePicture(String profilePicture) {
    this.profilePicture = profilePicture;
  }

  /**
   * Setter for banner
   * 
   * @param banner the banner of the game
   */
  public void setBanner(String banner) {
    this.banner = banner;
  }
}
