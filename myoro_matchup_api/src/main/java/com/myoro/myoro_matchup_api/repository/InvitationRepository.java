package com.myoro.myoro_matchup_api.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

import com.myoro.myoro_matchup_api.enums.InvitationStatusEnum;
import com.myoro.myoro_matchup_api.model.InvitationModel;

/** Invitation repository. */
@Repository
public interface InvitationRepository
        extends JpaRepository<InvitationModel, Long>, JpaSpecificationExecutor<InvitationModel> {
    /**
     * Finds pending invitation for a game and invitee.
     * 
     * @param gameId    the game ID
     * @param inviteeId the invitee ID
     * @return optional invitation
     */
    Optional<InvitationModel> findByGameIdAndInviteeIdAndStatus(Long gameId, Long inviteeId,
            InvitationStatusEnum status);

    /**
     * Finds all invitations for a user (as invitee).
     * 
     * @param inviteeId the invitee ID
     * @return list of invitations
     */
    List<InvitationModel> findByInviteeId(Long inviteeId);

    /**
     * Finds all invitations for a user (as invitee), filtered by status.
     * 
     * @param inviteeId the invitee ID
     * @param status    the status
     * @return list of invitations
     */
    List<InvitationModel> findByInviteeIdAndStatus(Long inviteeId, InvitationStatusEnum status);

    /**
     * Finds all invitations sent by a user (as inviter).
     * 
     * @param inviterId the inviter ID
     * @return list of invitations
     */
    List<InvitationModel> findByInviterId(Long inviterId);

    /**
     * Finds all invitations sent by a user (as inviter), optionally filtered by
     * status.
     * 
     * @param inviterId the inviter ID
     * @param status    the status (optional)
     * @return list of invitations
     */
    List<InvitationModel> findByInviterIdAndStatus(Long inviterId, InvitationStatusEnum status);
}
