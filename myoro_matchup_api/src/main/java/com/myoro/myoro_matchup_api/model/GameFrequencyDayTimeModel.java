package com.myoro.myoro_matchup_api.model;

import com.myoro.myoro_matchup_api.enums.DayEnum;
import com.myoro.myoro_matchup_api.enums.GameFrequencyEnum;
import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;
import java.time.LocalTime;

/** Game frequency model. */
@Embeddable
public class GameFrequencyDayTimeModel {
  /** Frequency of the game. */
  @Column(nullable = false)
  private GameFrequencyEnum frequency;

  /** Primary day of the game. */
  @Column(nullable = false)
  private DayEnum primaryDay;

  /** Bi-weekly day of the game. Required only when frequency is BI_WEEKLY. */
  @Column(nullable = true)
  private DayEnum biWeeklyDay;

  /** Primary start time of the game. */
  @Column(nullable = false)
  private LocalTime primaryStartTime;

  /** Primary end time of the game. */
  @Column(nullable = false)
  private LocalTime primaryEndTime;

  /** Bi-weekly start time of the game. Required only when frequency is BI_WEEKLY. */
  @Column(nullable = true)
  private LocalTime biWeeklyStartTime;

  /** Bi-weekly end time of the game. Required only when frequency is BI_WEEKLY. */
  @Column(nullable = true)
  private LocalTime biWeeklyEndTime;

  /** Default constructor. */
  public GameFrequencyDayTimeModel() {}

  /** Constructor with all fields. */
  public GameFrequencyDayTimeModel(
      GameFrequencyEnum frequency,
      DayEnum primaryDay,
      DayEnum biWeeklyDay,
      LocalTime primaryStartTime,
      LocalTime primaryEndTime,
      LocalTime biWeeklyStartTime,
      LocalTime biWeeklyEndTime) {
    this.frequency = frequency;
    this.primaryDay = primaryDay;
    this.biWeeklyDay = biWeeklyDay;
    this.primaryStartTime = primaryStartTime;
    this.primaryEndTime = primaryEndTime;
    this.biWeeklyStartTime = biWeeklyStartTime;
    this.biWeeklyEndTime = biWeeklyEndTime;
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
   * Getter for primaryStartTime
   *
   * @return the primary start time of the game
   */
  public LocalTime getPrimaryStartTime() {
    return primaryStartTime;
  }

  /**
   * Getter for primaryEndTime
   *
   * @return the primary end time of the game
   */
  public LocalTime getPrimaryEndTime() {
    return primaryEndTime;
  }

  /**
   * Getter for biWeeklyStartTime
   *
   * @return the bi-weekly start time of the game
   */
  public LocalTime getBiWeeklyStartTime() {
    return biWeeklyStartTime;
  }

  /**
   * Getter for biWeeklyEndTime
   *
   * @return the bi-weekly end time of the game
   */
  public LocalTime getBiWeeklyEndTime() {
    return biWeeklyEndTime;
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
   * Setter for primaryStartTime
   *
   * @param primaryStartTime the primary start time of the game
   */
  public void setPrimaryStartTime(LocalTime primaryStartTime) {
    this.primaryStartTime = primaryStartTime;
  }

  /**
   * Setter for primaryEndTime
   *
   * @param primaryEndTime the primary end time of the game
   */
  public void setPrimaryEndTime(LocalTime primaryEndTime) {
    this.primaryEndTime = primaryEndTime;
  }

  /**
   * Setter for biWeeklyStartTime
   *
   * @param biWeeklyStartTime the bi-weekly start time of the game
   */
  public void setBiWeeklyStartTime(LocalTime biWeeklyStartTime) {
    this.biWeeklyStartTime = biWeeklyStartTime;
  }

  /**
   * Setter for biWeeklyEndTime
   *
   * @param biWeeklyEndTime the bi-weekly end time of the game
   */
  public void setBiWeeklyEndTime(LocalTime biWeeklyEndTime) {
    this.biWeeklyEndTime = biWeeklyEndTime;
  }
}
