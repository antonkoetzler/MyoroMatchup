package com.myoro.myoro_matchup_api.model;

import com.myoro.myoro_matchup_api.enums.SportsEnum;
import jakarta.persistence.Column;
import jakarta.persistence.DiscriminatorValue;
import jakarta.persistence.Entity;
import jakarta.persistence.PrimaryKeyJoinColumn;
import jakarta.persistence.Table;

/** Fut7 user stats model. */
@Entity
@Table(name = "fut7_user_stats")
@DiscriminatorValue("FUT7")
@PrimaryKeyJoinColumn(name = "id")
public class Fut7UserStatsModel extends UserStatsModel {
  /** Attack stat. */
  @Column(nullable = false)
  private Integer attack;

  /** Defense stat. */
  @Column(nullable = false)
  private Integer defense;

  /** Striking stat. */
  @Column(nullable = false)
  private Integer striking;

  /** Skills stat. */
  @Column(nullable = false)
  private Integer skills;

  /** Default constructor. */
  public Fut7UserStatsModel() {
    setSport(SportsEnum.FUT7);
  }

  /**
   * Constructor with all fields.
   *
   * @param user the user
   * @param rating the rating
   * @param attack the attack stat
   * @param defense the defense stat
   * @param striking the striking stat
   * @param skills the skills stat
   */
  public Fut7UserStatsModel(
      UserModel user,
      Integer rating,
      Integer attack,
      Integer defense,
      Integer striking,
      Integer skills) {
    setUser(user);
    setSport(SportsEnum.FUT7);
    setRating(rating);
    this.attack = attack;
    this.defense = defense;
    this.striking = striking;
    this.skills = skills;
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
