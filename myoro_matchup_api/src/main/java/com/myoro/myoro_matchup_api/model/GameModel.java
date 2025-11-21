package com.myoro.myoro_matchup_api.model;

import com.myoro.myoro_matchup_api.enums.GameVisibilityEnum;
import com.myoro.myoro_matchup_api.enums.SportsEnum;

import jakarta.persistence.AttributeOverride;
import jakarta.persistence.AttributeOverrides;
import jakarta.persistence.Column;
import jakarta.persistence.Embedded;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

import java.util.List;

/** Game model. */
@Entity
@Table(name = "games")
public class GameModel {
  /** Game ID. */
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long id;

  /** User that owns the game. */
  @ManyToOne
  @JoinColumn(name = "user_id", nullable = false)
  private UserModel owner;

  /** Game name. */
  @Column(nullable = false)
  private String name;

  /** Sport being played. */
  @Column(nullable = false)
  private SportsEnum sport;

  /** Frequency of the game. */
  @Embedded
  private GameFrequencyDayTimeModel frequencyDayTime;

  /** Price of the game. */
  @Embedded
  private GamePriceModel price;

  /** Age range of the game. */
  @Embedded
  private GameAgeRangeModel ageRange;

  /** Location of the game. */
  @Embedded
  @AttributeOverrides({
      @AttributeOverride(name = "name", column = @Column(name = "location_name", nullable = false)),
      @AttributeOverride(name = "address.city", column = @Column(name = "location_city", nullable = false)),
      @AttributeOverride(name = "address.country", column = @Column(name = "location_country", nullable = true))
  })
  private LocationModel location;

  /** Visibility of the game. */
  @Column(nullable = false)
  private GameVisibilityEnum visibility;

  /** Profile picture of the game. */
  @Column(nullable = true)
  private String profilePicture;

  /** Banner of the game. */
  @Column(nullable = true)
  private String banner;

  /** Players in the game. */
  @ManyToMany
  @JoinTable(name = "game_players", joinColumns = @JoinColumn(name = "game_id"), inverseJoinColumns = @JoinColumn(name = "user_id"))
  private List<UserModel> players;

  /** Default constructor. */
  public GameModel() {
  }

  /** Constructor with all fields. */
  public GameModel(String name, SportsEnum sport, GameFrequencyDayTimeModel frequencyDayTime) {
    this.name = name;
    this.sport = sport;
    this.frequencyDayTime = frequencyDayTime;
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
   * Getter for owner
   * 
   * @return the user that owns the game
   */
  public UserModel getOwner() {
    return owner;
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
  public GameFrequencyDayTimeModel getFrequencyDayTime() {
    return frequencyDayTime;
  }

  /**
   * Getter for price
   * 
   * @return the price of the game
   */
  public GamePriceModel getPrice() {
    return price;
  }

  /**
   * Getter for ageRange
   * 
   * @return the age range of the game
   */
  public GameAgeRangeModel getAgeRange() {
    return ageRange;
  }

  /**
   * Getter for location
   * 
   * @return the location of the game
   */
  public LocationModel getLocation() {
    return location;
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
   * Getter for players
   * 
   * @return the players in the game
   */
  public List<UserModel> getPlayers() {
    return players;
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
   * Setter for owner
   * 
   * @param owner the user that owns the game
   */
  public void setOwner(UserModel owner) {
    this.owner = owner;
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
  public void setFrequencyDayTime(GameFrequencyDayTimeModel frequencyDayTime) {
    this.frequencyDayTime = frequencyDayTime;
  }

  /**
   * Setter for price
   * 
   * @param price the price of the game
   */
  public void setPrice(GamePriceModel price) {
    this.price = price;
  }

  /**
   * Setter for ageRange
   * 
   * @param ageRange the age range of the game
   */
  public void setAgeRange(GameAgeRangeModel ageRange) {
    this.ageRange = ageRange;
  }

  /**
   * Setter for location
   * 
   * @param location the location of the game
   */
  public void setLocation(LocationModel location) {
    this.location = location;
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

  /**
   * Setter for players
   * 
   * @param players the players in the game
   */
  public void setPlayers(List<UserModel> players) {
    this.players = players;
  }
}
