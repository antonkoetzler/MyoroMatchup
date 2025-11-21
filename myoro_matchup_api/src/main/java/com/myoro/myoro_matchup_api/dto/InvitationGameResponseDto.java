package com.myoro.myoro_matchup_api.dto;

import com.myoro.myoro_matchup_api.enums.SportsEnum;

/** Invitation game response DTO. */
public class InvitationGameResponseDto {
  /** Game name. */
  private String name;

  /** Sport being played. */
  private SportsEnum sport;

  /** Default constructor. */
  public InvitationGameResponseDto() {
  }

  /**
   * Constructor with all fields.
   * 
   * @param name the game name
   * @param sport the sport being played
   */
  public InvitationGameResponseDto(String name, SportsEnum sport) {
    this.name = name;
    this.sport = sport;
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
}

