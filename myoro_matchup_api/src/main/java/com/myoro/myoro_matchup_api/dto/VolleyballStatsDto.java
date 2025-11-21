package com.myoro.myoro_matchup_api.dto;

/** Volleyball stats DTO. */
public class VolleyballStatsDto {
  /** Rating out of 100. */
  private Integer rating;

  /** Attack stat. */
  private Integer attack;

  /** Blocking stat. */
  private Integer blocking;

  /** Serving stat. */
  private Integer serving;

  /** Reception stat. */
  private Integer reception;

  /** Default constructor. */
  public VolleyballStatsDto() {
    this.rating = 0;
    this.attack = 0;
    this.blocking = 0;
    this.serving = 0;
    this.reception = 0;
  }

  /** Constructor with all fields. */
  public VolleyballStatsDto(Integer rating, Integer attack, Integer blocking, Integer serving, Integer reception) {
    this.rating = rating;
    this.attack = attack;
    this.blocking = blocking;
    this.serving = serving;
    this.reception = reception;
  }

  /** Getter for rating. */
  public Integer getRating() {
    return rating;
  }

  /** Getter for attack. */
  public Integer getAttack() {
    return attack;
  }

  /** Getter for blocking. */
  public Integer getBlocking() {
    return blocking;
  }

  /** Getter for serving. */
  public Integer getServing() {
    return serving;
  }

  /** Getter for reception. */
  public Integer getReception() {
    return reception;
  }

  /** Setter for rating. */
  public void setRating(Integer rating) {
    this.rating = rating;
  }

  /** Setter for attack. */
  public void setAttack(Integer attack) {
    this.attack = attack;
  }

  /** Setter for blocking. */
  public void setBlocking(Integer blocking) {
    this.blocking = blocking;
  }

  /** Setter for serving. */
  public void setServing(Integer serving) {
    this.serving = serving;
  }

  /** Setter for reception. */
  public void setReception(Integer reception) {
    this.reception = reception;
  }
}

