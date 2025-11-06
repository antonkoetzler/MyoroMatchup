package com.myoro.myoro_matchup_api.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.myoro.myoro_matchup_api.model.GameModel;

/** Game repository. */
@Repository
public interface GameRepository extends JpaRepository<GameModel, Long> {
  /** Get all games. */
  List<GameModel> findAll();
}
