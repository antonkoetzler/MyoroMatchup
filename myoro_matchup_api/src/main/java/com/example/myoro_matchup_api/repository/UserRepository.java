package com.example.myoro_matchup_api.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.myoro_matchup_api.model.User;

/** User repository. */
@Repository
public interface UserRepository extends JpaRepository<User, Long> {
  /** Checks if the username exists. */
  boolean existsByUsername(String username);

  /** Checks if the email exists. */
  boolean existsByEmail(String email);
}