package com.myoro.myoro_matchup_api.model;

import com.myoro.myoro_matchup_api.enums.SportsEnum;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

/** Game model. */
@Entity
@Table(name = "games")
public class GameModel {
  /** Game ID. */
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long id;

  /** Game name. */
  @Column(nullable = false)
  private String name;

  /** Sport being played. */
  @Column(nullable = false)
  private SportsEnum sport;

  /** ID of the user that owns the game. */
  @Column(name = "user_id", nullable = false)
  private Long userId;

  /** Default constructor. */
  public GameModel() {
  }

  /** Constructor with all fields. */
  public GameModel(String name, SportsEnum sport) {
    this.name = name;
    this.sport = sport;
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
   * Setter for id
   * 
   * @param id the game ID
   */
  public void setId(Long id) {
    this.id = id;
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
   * Getter for userId
   * 
   * @return the ID of the user that owns the game
   */
  public Long getUserId() {
    return userId;
  }

  /**
   * Setter for userId
   * 
   * @param userId the ID of the user that owns the game
   */
  public void setUserId(Long userId) {
    this.userId = userId;
  }
}
