package com.myoro.myoro_matchup_api.model;

import com.myoro.myoro_matchup_api.enums.SportsEnum;
import jakarta.persistence.Column;
import jakarta.persistence.DiscriminatorValue;
import jakarta.persistence.Entity;
import jakarta.persistence.PrimaryKeyJoinColumn;
import jakarta.persistence.Table;

/** Volleyball user stats model. */
@Entity
@Table(name = "volleyball_user_stats")
@DiscriminatorValue("VOLLEYBALL")
@PrimaryKeyJoinColumn(name = "id")
public class VolleyballUserStatsModel extends UserStatsModel {
  /** Attack stat. */
  @Column(nullable = false)
  private Integer attack;

  /** Blocking stat. */
  @Column(nullable = false)
  private Integer blocking;

  /** Serving stat. */
  @Column(nullable = false)
  private Integer serving;

  /** Reception stat. */
  @Column(nullable = false)
  private Integer reception;

  /** Default constructor. */
  public VolleyballUserStatsModel() {
    setSport(SportsEnum.VOLLEYBALL);
  }

  /**
   * Constructor with all fields.
   *
   * @param user the user
   * @param rating the rating
   * @param attack the attack stat
   * @param blocking the blocking stat
   * @param serving the serving stat
   * @param reception the reception stat
   */
  public VolleyballUserStatsModel(
      UserModel user,
      Integer rating,
      Integer attack,
      Integer blocking,
      Integer serving,
      Integer reception) {
    setUser(user);
    setSport(SportsEnum.VOLLEYBALL);
    setRating(rating);
    this.attack = attack;
    this.blocking = blocking;
    this.serving = serving;
    this.reception = reception;
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
