package com.myoro.myoro_matchup_api.repository;

import com.myoro.myoro_matchup_api.model.GameModel;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.lang.NonNull;
import org.springframework.stereotype.Repository;

/** Game repository. */
@Repository
public interface GameRepository extends JpaRepository<GameModel, Long> {
  /** Get all games. */
  @NonNull
  List<GameModel> findAll();
}
