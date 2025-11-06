package com.myoro.myoro_matchup_api.dto;

import com.myoro.myoro_matchup_api.enums.SportsEnum;
import com.myoro.myoro_matchup_api.util.GameConstants;

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

  /** Default constructor. */
  public GameCreationRequestDto() {
  }

  /** Constructor with all fields. */
  public GameCreationRequestDto(String name, SportsEnum sport) {
    this.name = name;
    this.sport = sport;
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
}
