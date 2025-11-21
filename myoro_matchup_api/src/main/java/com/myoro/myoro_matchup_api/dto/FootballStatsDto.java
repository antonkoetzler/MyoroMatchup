package com.myoro.myoro_matchup_api.dto;

/** Football stats DTO. */
public class FootballStatsDto {
  /** Rating out of 100. */
  private Integer rating;

  /** Attack stat. */
  private Integer attack;

  /** Defense stat. */
  private Integer defense;

  /** Striking stat. */
  private Integer striking;

  /** Skills stat. */
  private Integer skills;

  /** Default constructor. */
  public FootballStatsDto() {
    this.rating = 0;
    this.attack = 0;
    this.defense = 0;
    this.striking = 0;
    this.skills = 0;
  }

  /** Constructor with all fields. */
  public FootballStatsDto(Integer rating, Integer attack, Integer defense, Integer striking, Integer skills) {
    this.rating = rating;
    this.attack = attack;
    this.defense = defense;
    this.striking = striking;
    this.skills = skills;
  }

  /** Getter for rating. */
  public Integer getRating() {
    return rating;
  }

  /** Getter for attack. */
  public Integer getAttack() {
    return attack;
  }

  /** Getter for defense. */
  public Integer getDefense() {
    return defense;
  }

  /** Getter for striking. */
  public Integer getStriking() {
    return striking;
  }

  /** Getter for skills. */
  public Integer getSkills() {
    return skills;
  }

  /** Setter for rating. */
  public void setRating(Integer rating) {
    this.rating = rating;
  }

  /** Setter for attack. */
  public void setAttack(Integer attack) {
    this.attack = attack;
  }

  /** Setter for defense. */
  public void setDefense(Integer defense) {
    this.defense = defense;
  }

  /** Setter for striking. */
  public void setStriking(Integer striking) {
    this.striking = striking;
  }

  /** Setter for skills. */
  public void setSkills(Integer skills) {
    this.skills = skills;
  }
}
