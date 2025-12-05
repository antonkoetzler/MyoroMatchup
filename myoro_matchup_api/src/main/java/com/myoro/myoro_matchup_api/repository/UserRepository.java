package com.myoro.myoro_matchup_api.repository;

import com.myoro.myoro_matchup_api.model.UserModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/** User repository. */
@Repository
public interface UserRepository extends JpaRepository<UserModel, Long> {
  /** Checks if the username exists. */
  boolean existsByUsername(String username);

  /** Checks if the email exists. */
  boolean existsByEmail(String email);

  /** Finds a user by username. */
  UserModel findByUsername(String username);

  /** Finds a user by email. */
  UserModel findByEmail(String email);
}
