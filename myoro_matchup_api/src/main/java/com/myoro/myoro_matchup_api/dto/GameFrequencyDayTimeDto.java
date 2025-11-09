package com.myoro.myoro_matchup_api.dto;

import java.time.LocalTime;
import java.util.List;

import com.myoro.myoro_matchup_api.enums.DayEnum;
import com.myoro.myoro_matchup_api.enums.GameFrequencyEnum;

import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;

/** Game frequency day time DTO. */
public class GameFrequencyDayTimeDto {
  /** Frequency of the game. */
  @NotNull(message = "{validation.game.frequency.required}")
  private GameFrequencyEnum frequency;

  /** Day of the game. */
  @NotNull(message = "{validation.game.days.required}")
  @NotEmpty(message = "{validation.game.days.not.empty}")
  make their
  own dto
  private List<DayEnum> days;

  /** Time of the game. */
  @NotNull(message = "{validation.game.times.required}")
  @NotEmpty(message = "{validation.game.times.not.empty}")
  make their
  own dto
  private List<LocalTime> times;

  /** Default constructor. */
  public GameFrequencyDayTimeDto() {
  }

  /** Constructor with all fields. */
  public GameFrequencyDayTimeDto(GameFrequencyEnum frequency, List<DayEnum> days, List<LocalTime> times) {
    this.frequency = frequency;
    this.days = days;
    this.times = times;
  }

  /**
   * Getter for frequency
   * 
   * @return the frequency of the game
   */
  public GameFrequencyEnum getFrequency() {
    return frequency;
  }

  /**
   * Getter for days
   * 
   * @return the days of the game
   */
  public List<DayEnum> getDays() {
    return days;
  }

  /**
   * Getter for times
   * 
   * @return the times of the game
   */
  public List<LocalTime> getTimes() {
    return times;
  }

  /**
   * Setter for frequency
   * 
   * @param frequency the frequency of the game
   */
  public void setFrequency(GameFrequencyEnum frequency) {
    this.frequency = frequency;
  }

  /**
   * Setter for days
   * 
   * @param days the days of the game
   */
  public void setDays(List<DayEnum> days) {
    this.days = days;
  }

  /**
   * Setter for times
   * 
   * @param times the times of the game
   */
  public void setTimes(List<LocalTime> times) {
    this.times = times;
  }
}
