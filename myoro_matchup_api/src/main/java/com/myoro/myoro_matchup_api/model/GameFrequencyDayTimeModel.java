package com.myoro.myoro_matchup_api.model;

import java.time.LocalTime;

import com.myoro.myoro_matchup_api.enums.DayEnum;
import com.myoro.myoro_matchup_api.enums.GameFrequencyEnum;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;

/** Game frequency model. */
@Embeddable
public class GameFrequencyDayTimeModel {
  /** Frequency of the game. */
  @Column(name = "frequency", nullable = false)
  private GameFrequencyEnum frequency;

  /** Primary day of the game. */
  @Column(name = "primary_day", nullable = false)
  private DayEnum primaryDay;

  /** Bi-weekly day of the game. Required only when frequency is BI_WEEKLY. */
  @Column(name = "bi_weekly_day", nullable = true)
  private DayEnum biWeeklyDay;

  /** Primary time of the game. */
  @Column(name = "primary_time", nullable = false)
  private LocalTime primaryTime;

  /** Bi-weekly time of the game. Required only when frequency is BI_WEEKLY. */
  @Column(name = "bi_weekly_time", nullable = true)
  private LocalTime biWeeklyTime;

  /** Default constructor. */
  public GameFrequencyDayTimeModel() {
  }

  /** Constructor with all fields. */
  public GameFrequencyDayTimeModel(GameFrequencyEnum frequency, DayEnum primaryDay, DayEnum biWeeklyDay,
      LocalTime primaryTime, LocalTime biWeeklyTime) {
    this.frequency = frequency;
    this.primaryDay = primaryDay;
    this.biWeeklyDay = biWeeklyDay;
    this.primaryTime = primaryTime;
    this.biWeeklyTime = biWeeklyTime;
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
   * Getter for primaryDay
   * 
   * @return the primary day of the game
   */
  public DayEnum getPrimaryDay() {
    return primaryDay;
  }

  /**
   * Getter for biWeeklyDay
   * 
   * @return the bi-weekly day of the game
   */
  public DayEnum getBiWeeklyDay() {
    return biWeeklyDay;
  }

  /**
   * Getter for primaryTime
   * 
   * @return the primary time of the game
   */
  public LocalTime getPrimaryTime() {
    return primaryTime;
  }

  /**
   * Getter for biWeeklyTime
   * 
   * @return the bi-weekly time of the game
   */
  public LocalTime getBiWeeklyTime() {
    return biWeeklyTime;
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
   * Setter for primaryDay
   * 
   * @param primaryDay the primary day of the game
   */
  public void setPrimaryDay(DayEnum primaryDay) {
    this.primaryDay = primaryDay;
  }

  /**
   * Setter for biWeeklyDay
   * 
   * @param biWeeklyDay the bi-weekly day of the game
   */
  public void setBiWeeklyDay(DayEnum biWeeklyDay) {
    this.biWeeklyDay = biWeeklyDay;
  }

  /**
   * Setter for primaryTime
   * 
   * @param primaryTime the primary time of the game
   */
  public void setPrimaryTime(LocalTime primaryTime) {
    this.primaryTime = primaryTime;
  }

  /**
   * Setter for biWeeklyTime
   * 
   * @param biWeeklyTime the bi-weekly time of the game
   */
  public void setBiWeeklyTime(LocalTime biWeeklyTime) {
    this.biWeeklyTime = biWeeklyTime;
  }
}
