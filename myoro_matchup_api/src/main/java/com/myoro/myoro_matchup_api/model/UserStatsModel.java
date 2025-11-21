package com.myoro.myoro_matchup_api.model;

import com.myoro.myoro_matchup_api.enums.SportsEnum;

import jakarta.persistence.Column;
import jakarta.persistence.DiscriminatorColumn;
import jakarta.persistence.DiscriminatorType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Inheritance;
import jakarta.persistence.InheritanceType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

/** Base user stats model. */
@Entity
@Table(name = "user_stats")
@Inheritance(strategy = InheritanceType.JOINED)
@DiscriminatorColumn(name = "sport_type", discriminatorType = DiscriminatorType.STRING)
public abstract class UserStatsModel {
  /** Stats ID. */
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long id;

  /** User that owns these stats. */
  @ManyToOne
  @JoinColumn(name = "user_id", nullable = false)
  private UserModel user;

  /** Sport these stats are for. */
  @Column(nullable = false)
  private SportsEnum sport;

  /** Rating out of 100. */
  @Column(nullable = false)
  private Integer rating;

  /** Default constructor. */
  public UserStatsModel() {
  }

  /**
   * Getter for id
   * 
   * @return the stats ID
   */
  public Long getId() {
    return id;
  }

  /**
   * Getter for user
   * 
   * @return the user that owns these stats
   */
  public UserModel getUser() {
    return user;
  }

  /**
   * Getter for sport
   * 
   * @return the sport these stats are for
   */
  public SportsEnum getSport() {
    return sport;
  }

  /**
   * Getter for rating
   * 
   * @return the rating out of 100
   */
  public Integer getRating() {
    return rating;
  }

  /** Setter for id. */
  public void setId(Long id) {
    this.id = id;
  }

  /** Setter for user. */
  public void setUser(UserModel user) {
    this.user = user;
  }

  /** Setter for sport. */
  public void setSport(SportsEnum sport) {
    this.sport = sport;
  }

  /** Setter for rating. */
  public void setRating(Integer rating) {
    this.rating = rating;
  }
}
