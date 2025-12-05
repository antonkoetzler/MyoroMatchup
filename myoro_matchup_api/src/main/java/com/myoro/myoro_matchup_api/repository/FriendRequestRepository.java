package com.myoro.myoro_matchup_api.repository;

import com.myoro.myoro_matchup_api.enums.FriendRequestStatusEnum;
import com.myoro.myoro_matchup_api.model.FriendRequestModel;
import java.util.List;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

/** Friend request repository. */
@Repository
public interface FriendRequestRepository
    extends JpaRepository<FriendRequestModel, Long>, JpaSpecificationExecutor<FriendRequestModel> {
  /**
   * Finds pending friend request between two users.
   *
   * @param requesterId the requester ID
   * @param recipientId the recipient ID
   * @param status the status
   * @return optional friend request
   */
  Optional<FriendRequestModel> findByRequesterIdAndRecipientIdAndStatus(
      Long requesterId, Long recipientId, FriendRequestStatusEnum status);

  /**
   * Finds all friend requests for a user (as recipient).
   *
   * @param recipientId the recipient ID
   * @return list of friend requests
   */
  List<FriendRequestModel> findByRecipientId(Long recipientId);

  /**
   * Finds all friend requests for a user (as recipient), filtered by status.
   *
   * @param recipientId the recipient ID
   * @param status the status
   * @return list of friend requests
   */
  List<FriendRequestModel> findByRecipientIdAndStatus(
      Long recipientId, FriendRequestStatusEnum status);

  /**
   * Finds all friend requests sent by a user (as requester).
   *
   * @param requesterId the requester ID
   * @return list of friend requests
   */
  List<FriendRequestModel> findByRequesterId(Long requesterId);

  /**
   * Checks if a pending friend request exists between two users.
   *
   * @param requesterId the requester ID
   * @param recipientId the recipient ID
   * @return true if a pending friend request exists
   */
  boolean existsByRequesterIdAndRecipientIdAndStatus(
      Long requesterId, Long recipientId, FriendRequestStatusEnum status);
}
