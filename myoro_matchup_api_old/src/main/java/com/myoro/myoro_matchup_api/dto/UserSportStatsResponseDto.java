package com.myoro.myoro_matchup_api.dto;

/** User sport stats response DTO. */
public class UserSportStatsResponseDto {
  /** Football stats. */
  private FootballStatsDto football;

  /** Futsal stats. */
  private FootballStatsDto futsal;

  /** Fut7 stats. */
  private FootballStatsDto fut7;

  /** Volleyball stats. */
  private VolleyballStatsDto volleyball;

  /** Default constructor. */
  public UserSportStatsResponseDto() {
    this.football = new FootballStatsDto(0, 0, 0, 0, 0);
    this.futsal = new FootballStatsDto(0, 0, 0, 0, 0);
    this.fut7 = new FootballStatsDto(0, 0, 0, 0, 0);
    this.volleyball = new VolleyballStatsDto(0, 0, 0, 0, 0);
  }

  /** Constructor with all fields. */
  public UserSportStatsResponseDto(
      FootballStatsDto football,
      FootballStatsDto futsal,
      FootballStatsDto fut7,
      VolleyballStatsDto volleyball) {
    this.football = football;
    this.futsal = futsal;
    this.fut7 = fut7;
    this.volleyball = volleyball;
  }

  /** Getter for football. */
  public FootballStatsDto getFootball() {
    return football;
  }

  /** Getter for futsal. */
  public FootballStatsDto getFutsal() {
    return futsal;
  }

  /** Getter for fut7. */
  public FootballStatsDto getFut7() {
    return fut7;
  }

  /** Getter for volleyball. */
  public VolleyballStatsDto getVolleyball() {
    return volleyball;
  }

  /** Setter for football. */
  public void setFootball(FootballStatsDto football) {
    this.football = football;
  }

  /** Setter for futsal. */
  public void setFutsal(FootballStatsDto futsal) {
    this.futsal = futsal;
  }

  /** Setter for fut7. */
  public void setFut7(FootballStatsDto fut7) {
    this.fut7 = fut7;
  }

  /** Setter for volleyball. */
  public void setVolleyball(VolleyballStatsDto volleyball) {
    this.volleyball = volleyball;
  }
}
