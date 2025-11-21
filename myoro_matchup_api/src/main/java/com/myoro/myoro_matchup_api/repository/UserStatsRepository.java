package com.myoro.myoro_matchup_api.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.myoro.myoro_matchup_api.enums.SportsEnum;
import com.myoro.myoro_matchup_api.model.UserModel;
import com.myoro.myoro_matchup_api.model.UserStatsModel;

/** User stats repository. */
@Repository
public interface UserStatsRepository extends JpaRepository<UserStatsModel, Long> {
  /** Finds all stats for a user. */
  List<UserStatsModel> findByUser(UserModel user);

  /** Finds stats for a user and sport. */
  Optional<UserStatsModel> findByUserAndSport(UserModel user, SportsEnum sport);
}

