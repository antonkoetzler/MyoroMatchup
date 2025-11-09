package com.myoro.myoro_matchup_api.model;

import java.time.LocalTime;
import java.util.List;

import com.myoro.myoro_matchup_api.enums.DayEnum;
import com.myoro.myoro_matchup_api.enums.GameFrequencyEnum;
import com.myoro.myoro_matchup_api.service.MessageService;

import jakarta.persistence.Column;
import jakarta.persistence.ElementCollection;
import jakarta.persistence.Embeddable;
import jakarta.persistence.Transient;

/** Game frequency model. */
@Embeddable
public class GameFrequencyDayTimeModel {
  /** Frequency of the game. */
  @Column(name = "frequency", nullable = false)
  private GameFrequencyEnum frequency;

  /** Day of the game. */
  @ElementCollection
  private List<DayEnum> days;

  /** Time of the game. */
  @ElementCollection
  private List<LocalTime> times;

  /** Message service for localization. */
  @Transient
  private MessageService messageService;

  /** Default constructor. */
  public GameFrequencyDayTimeModel() {
  }

  /** Constructor with all fields. */
  public GameFrequencyDayTimeModel(GameFrequencyEnum frequency, List<DayEnum> days, List<LocalTime> times) {
    this.frequency = frequency;
    this.days = days;
    this.times = times;
    validate();
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
    validate();
  }

  /**
   * Setter for days
   * 
   * @param days the days of the game
   */
  public void setDays(List<DayEnum> days) {
    this.days = days;
    validate();
  }

  /**
   * Setter for times
   * 
   * @param times the times of the game
   */
  public void setTimes(List<LocalTime> times) {
    this.times = times;
    validate();
  }

  /**
   * Setter for messageService
   * 
   * @param messageService the message service for localization
   */
  public void setMessageService(MessageService messageService) {
    this.messageService = messageService;
  }

  /** Validates the model constraints. */
  private void validate() {
    if (frequency == null || days == null || times == null) {
      return; // Skip validation if fields are not set yet
    }

    int expectedSize = frequency == GameFrequencyEnum.BI_WEEKLY ? 2 : 1;

    if (days.size() != expectedSize) {
      if (messageService == null) {
        throw new IllegalStateException("MessageService must be set before validation.");
      }
      String message = messageService.getMessage("validation.game.frequency.days.size.mismatch",
          frequency.toString(), String.valueOf(expectedSize), String.valueOf(days.size()));
      throw new IllegalArgumentException(message);
    }

    if (times.size() != expectedSize) {
      if (messageService == null) {
        throw new IllegalStateException("MessageService must be set before validation.");
      }
      String message = messageService.getMessage("validation.game.frequency.times.size.mismatch",
          frequency.toString(), String.valueOf(expectedSize), String.valueOf(times.size()));
      throw new IllegalArgumentException(message);
    }
  }
}
