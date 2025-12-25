package com.myoro.myoro_matchup_api.dto;

import java.util.List;

/** Game team response DTO. */
public class GameTeamResponseDto {
  /** Team index (0-based, used to generate "Team #1", "Team #2", etc.). */
  private Integer index;

  /** Players in the team. */
  private List<GamePlayerResponseDto> players;

  /** Substitutes for the team. */
  private List<GamePlayerResponseDto> substitutes;

  /** Default constructor. */
  public GameTeamResponseDto() {}

  /** Constructor with all fields. */
  public GameTeamResponseDto(
      Integer index, List<GamePlayerResponseDto> players, List<GamePlayerResponseDto> substitutes) {
    this.index = index;
    this.players = players;
    this.substitutes = substitutes;
  }

  /**
   * Getter for index
   *
   * @return the team index
   */
  public Integer getIndex() {
    return index;
  }

  /**
   * Getter for players
   *
   * @return the players in the team
   */
  public List<GamePlayerResponseDto> getPlayers() {
    return players;
  }

  /**
   * Getter for substitutes
   *
   * @return the substitutes for the team
   */
  public List<GamePlayerResponseDto> getSubstitutes() {
    return substitutes;
  }

  /** Setter for index. */
  public void setIndex(Integer index) {
    this.index = index;
  }

  /** Setter for players. */
  public void setPlayers(List<GamePlayerResponseDto> players) {
    this.players = players;
  }

  /** Setter for substitutes. */
  public void setSubstitutes(List<GamePlayerResponseDto> substitutes) {
    this.substitutes = substitutes;
  }
}
