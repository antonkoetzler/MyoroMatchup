package com.myoro.myoro_matchup_api.repository;

import com.myoro.myoro_matchup_api.model.BlockedUserModel;
import java.util.List;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/** Blocked user repository. */
@Repository
public interface BlockedUserRepository extends JpaRepository<BlockedUserModel, Long> {
  /**
   * Finds blocked user relationship.
   *
   * @param blockerId the blocker ID
   * @param blockedId the blocked ID
   * @return optional blocked user relationship
   */
  Optional<BlockedUserModel> findByBlockerIdAndBlockedId(Long blockerId, Long blockedId);

  /**
   * Finds all users blocked by a user.
   *
   * @param blockerId the blocker ID
   * @return list of blocked users
   */
  List<BlockedUserModel> findByBlockerId(Long blockerId);

  /**
   * Checks if a user has blocked another user.
   *
   * @param blockerId the blocker ID
   * @param blockedId the blocked ID
   * @return true if the user is blocked
   */
  boolean existsByBlockerIdAndBlockedId(Long blockerId, Long blockedId);

  /**
   * Finds all users who have blocked a specific user.
   *
   * @param blockedId the blocked user ID
   * @return list of blocked user relationships
   */
  List<BlockedUserModel> findByBlockedId(Long blockedId);
}
