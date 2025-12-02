package com.myoro.myoro_matchup_api.dto;

import com.myoro.myoro_matchup_api.enums.VisibilityEnum;
import com.myoro.myoro_matchup_api.enums.SportsEnum;

/** Game response DTO. */
public class GameResponseDto {
  /** Game ID. */
  private Long id;

  /** ID of the user that owns the game. */
  private Long userId;

  /** Game name. */
  private String name;

  /** Sport being played. */
  private SportsEnum sport;

  /** Frequency of the game. */
  private GameFrequencyDayTimeDto frequencyDayTime;

  /** Price of the game. */
  private GamePriceDto price;

  /** Age range of the game. */
  private GameAgeRangeDto ageRange;

  /** Location of the game. */
  private LocationDto location;

  /** Visibility of the game. */
  private VisibilityEnum visibility;

  /** Profile picture of the game. */
  private String profilePicture;

  /** Banner of the game. */
  private String banner;

  /** WhatsApp group chat invite link. */
  private String whatsAppGroupChatLink;

  /** Whether to use the WhatsApp group chat bot. */
  private Boolean useWhatsAppGroupChatBot;

  /** Default constructor. */
  public GameResponseDto() {
  }

  /** Constructor with all fields. */
  public GameResponseDto(Long id, Long userId, String name, SportsEnum sport,
      GameFrequencyDayTimeDto frequencyDayTime, GamePriceDto price, GameAgeRangeDto ageRange,
      LocationDto location, VisibilityEnum visibility, String profilePicture, String banner) {
    this.id = id;
    this.userId = userId;
    this.name = name;
    this.sport = sport;
    this.frequencyDayTime = frequencyDayTime;
    this.price = price;
    this.ageRange = ageRange;
    this.location = location;
    this.visibility = visibility;
    this.profilePicture = profilePicture;
    this.banner = banner;
  }

  /**
   * Getter for id
   * 
   * @return the game ID
   */
  public Long getId() {
    return id;
  }

  /**
   * Getter for userId
   * 
   * @return the ID of the user that owns the game
   */
  public Long getUserId() {
    return userId;
  }

  /**
   * Getter for name
   * 
   * @return the game name
   */
  public String getName() {
    return name;
  }

  /**
   * Getter for sport
   * 
   * @return the sport being played
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
   * Getter for location
   * 
   * @return the location of the game
   */
  public LocationDto getLocation() {
    return location;
  }

  /**
   * Getter for visibility
   * 
   * @return the visibility of the game
   */
  public VisibilityEnum getVisibility() {
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
   * Setter for id
   * 
   * @param id the game ID
   */
  public void setId(Long id) {
    this.id = id;
  }

  /**
   * Setter for userId
   * 
   * @param userId the ID of the user that owns the game
   */
  public void setUserId(Long userId) {
    this.userId = userId;
  }

  /**
   * Setter for name
   * 
   * @param name the game name
   */
  public void setName(String name) {
    this.name = name;
  }

  /**
   * Setter for sport
   * 
   * @param sport the sport being played
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
   * Setter for location
   * 
   * @param location the location of the game
   */
  public void setLocation(LocationDto location) {
    this.location = location;
  }

  /**
   * Setter for visibility
   * 
   * @param visibility the visibility of the game
   */
  public void setVisibility(VisibilityEnum visibility) {
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

  /**
   * Getter for whatsAppGroupChatLink
   * 
   * @return the WhatsApp group chat invite link
   */
  public String getWhatsAppGroupChatLink() {
    return whatsAppGroupChatLink;
  }

  /**
   * Setter for whatsAppGroupChatLink
   * 
   * @param whatsAppGroupChatLink the WhatsApp group chat invite link
   */
  public void setWhatsAppGroupChatLink(String whatsAppGroupChatLink) {
    this.whatsAppGroupChatLink = whatsAppGroupChatLink;
  }

  /**
   * Getter for useWhatsAppGroupChatBot
   * 
   * @return whether to use the WhatsApp group chat bot
   */
  public Boolean getUseWhatsAppGroupChatBot() {
    return useWhatsAppGroupChatBot;
  }

  /**
   * Setter for useWhatsAppGroupChatBot
   * 
   * @param useWhatsAppGroupChatBot whether to use the WhatsApp group chat bot
   */
  public void setUseWhatsAppGroupChatBot(Boolean useWhatsAppGroupChatBot) {
    this.useWhatsAppGroupChatBot = useWhatsAppGroupChatBot;
  }
}
