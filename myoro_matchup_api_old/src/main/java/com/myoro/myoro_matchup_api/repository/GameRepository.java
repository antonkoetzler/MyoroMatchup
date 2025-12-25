package com.myoro.myoro_matchup_api.repository;

import com.myoro.myoro_matchup_api.model.GameModel;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.lang.NonNull;
import org.springframework.stereotype.Repository;

/** Game repository. */
@Repository
public interface GameRepository extends JpaRepository<GameModel, Long> {
  /** Get all games. */
  @NonNull
  List<GameModel> findAll();

  /**
   * Counts the number of games a user is participating in (as a player, not owner).
   *
   * @param userId the user ID
   * @return the count of games
   */
  @Query("SELECT COUNT(g) FROM GameModel g JOIN g.players p WHERE p.id = :userId")
  int countGamesUserParticipatesIn(@Param("userId") Long userId);

  /**
   * Counts the number of games a user owns.
   *
   * @param userId the user ID
   * @return the count of owned games
   */
  @Query("SELECT COUNT(g) FROM GameModel g WHERE g.owner.id = :userId")
  int countGamesUserOwns(@Param("userId") Long userId);
}
