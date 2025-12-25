package com.myoro.myoro_matchup_api.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import java.util.List;

/** Team model. */
@Entity
@Table(name = "teams")
public class TeamModel {
  /** Team ID. */
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long id;

  /** Game that this team belongs to. */
  @ManyToOne
  @JoinColumn(name = "game_id", nullable = false)
  private GameModel game;

  /** Team index (0-based, used to generate "Team #1", "Team #2", etc.). */
  @Column(nullable = false)
  private Integer index;

  /** Players in the team. */
  @ManyToMany
  @JoinTable(
      name = "team_players",
      joinColumns = @JoinColumn(name = "team_id"),
      inverseJoinColumns = @JoinColumn(name = "user_id"))
  private List<UserModel> players;

  /** Substitutes for the team. */
  @ManyToMany
  @JoinTable(
      name = "team_substitutes",
      joinColumns = @JoinColumn(name = "team_id"),
      inverseJoinColumns = @JoinColumn(name = "user_id"))
  private List<UserModel> substitutes;

  /** Default constructor. */
  public TeamModel() {}

  /**
   * Getter for id
   *
   * @return the team ID
   */
  public Long getId() {
    return id;
  }

  /**
   * Getter for game
   *
   * @return the game that this team belongs to
   */
  public GameModel getGame() {
    return game;
  }

  /**
   * Getter for index
   *
   * @return the team index
   */
  public Integer getIndex() {
    return index;
  }

  /**
   * Getter for players
   *
   * @return the players in the team
   */
  public List<UserModel> getPlayers() {
    return players;
  }

  /**
   * Getter for substitutes
   *
   * @return the substitutes for the team
   */
  public List<UserModel> getSubstitutes() {
    return substitutes;
  }

  /** Setter for id. */
  public void setId(Long id) {
    this.id = id;
  }

  /** Setter for game. */
  public void setGame(GameModel game) {
    this.game = game;
  }

  /** Setter for index. */
  public void setIndex(Integer index) {
    this.index = index;
  }

  /** Setter for players. */
  public void setPlayers(List<UserModel> players) {
    this.players = players;
  }

  /** Setter for substitutes. */
  public void setSubstitutes(List<UserModel> substitutes) {
    this.substitutes = substitutes;
  }
}
