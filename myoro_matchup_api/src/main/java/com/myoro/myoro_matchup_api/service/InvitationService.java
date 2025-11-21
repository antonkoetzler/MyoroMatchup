package com.myoro.myoro_matchup_api.service;

import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

import com.myoro.myoro_matchup_api.dto.InvitationGameResponseDto;
import com.myoro.myoro_matchup_api.dto.InvitationResponseDto;
import com.myoro.myoro_matchup_api.enums.InvitationStatusEnum;
import com.myoro.myoro_matchup_api.model.GameModel;
import com.myoro.myoro_matchup_api.model.InvitationModel;
import com.myoro.myoro_matchup_api.model.UserModel;
import com.myoro.myoro_matchup_api.repository.GameRepository;
import com.myoro.myoro_matchup_api.repository.InvitationRepository;
import com.myoro.myoro_matchup_api.repository.UserRepository;

/** Invitation service. */
@Service
public class InvitationService {
  /** Invitation repository. */
  @Autowired
  private InvitationRepository invitationRepository;

  /** Game repository. */
  @Autowired
  private GameRepository gameRepository;

  /** User repository. */
  @Autowired
  private UserRepository userRepository;

  /** Message service for localization and internationalization. */
  @Autowired
  private MessageService messageService;

  /**
   * Sends an invitation to a user for a game.
   * 
   * @param gameId    the game ID
   * @param inviteeId the ID of the user being invited
   * @param message   optional message from the inviter
   * @param inviterId the ID of the user sending the invitation
   */
  public void sendInvitation(Long gameId, Long inviteeId, String message, Long inviterId) {
    // Validate game exists
    GameModel game = gameRepository.findById(gameId)
        .orElseThrow(() -> new RuntimeException(messageService.getMessage("error.game.not.found")));

    // Validate inviter is the game owner
    if (!game.getOwner().getId().equals(inviterId)) {
      throw new RuntimeException(messageService.getMessage("error.invitation.not.game.owner"));
    }

    // Validate invitee exists
    UserModel invitee = userRepository.findById(inviteeId)
        .orElseThrow(() -> new RuntimeException(messageService.getMessage("error.user.not.found")));

    // Validate invitee is not the inviter
    if (invitee.getId().equals(inviterId)) {
      throw new RuntimeException(messageService.getMessage("error.invitation.cannot.invite.self"));
    }

    // Validate invitee is not already a player
    if (game.getPlayers() != null && game.getPlayers().stream()
        .anyMatch(player -> player.getId().equals(inviteeId))) {
      throw new RuntimeException(messageService.getMessage("error.invitation.user.already.player"));
    }

    // Check if there's already a pending invitation
    invitationRepository.findByGameIdAndInviteeIdAndStatus(gameId, inviteeId,
        InvitationStatusEnum.PENDING)
        .ifPresent(invitation -> {
          throw new RuntimeException(messageService.getMessage("error.invitation.already.pending"));
        });

    // Get inviter
    UserModel inviter = userRepository.findById(inviterId)
        .orElseThrow(() -> new RuntimeException(messageService.getMessage("error.user.not.found")));

    // Create invitation
    InvitationModel invitation = new InvitationModel();
    invitation.setGame(game);
    invitation.setInviter(inviter);
    invitation.setInvitee(invitee);
    invitation.setStatus(InvitationStatusEnum.PENDING);
    invitation.setCreatedAt(LocalDateTime.now());
    invitation.setMessage(message);

    // Save invitation.
    invitationRepository.save(invitation);
  }

  /**
   * Gets all invitations for a user, optionally filtered by status.
   * 
   * @param userId the user ID
   * @param status optional status filter
   * @return list of invitation response DTOs
   */
  public List<InvitationResponseDto> getInvitations(Long userId, InvitationStatusEnum status) {
    List<InvitationModel> invitations;
    
    if (status != null) {
      // Get invitations where user is invitee, filtered by status
      invitations = invitationRepository.findByInviteeIdAndStatus(userId, status);
      // Also get invitations where user is inviter, filtered by status
      invitations.addAll(invitationRepository.findByInviterIdAndStatus(userId, status));
    } else {
      // Get all invitations where user is invitee
      invitations = invitationRepository.findByInviteeId(userId);
      // Also get all invitations where user is inviter
      invitations.addAll(invitationRepository.findByInviterId(userId));
    }
    
    return invitations.stream()
        .map(this::toDto)
        .collect(Collectors.toList());
  }

  /**
   * Converts InvitationModel to InvitationResponseDto.
   * 
   * @param invitation the invitation model
   * @return the invitation response DTO
   */
  private InvitationResponseDto toDto(InvitationModel invitation) {
    InvitationResponseDto dto = new InvitationResponseDto();
    dto.setStatus(invitation.getStatus());
    dto.setCreatedAt(invitation.getCreatedAt());
    dto.setExpiresAt(invitation.getExpiresAt());
    dto.setRespondedAt(invitation.getRespondedAt());
    dto.setMessage(invitation.getMessage());

    // Convert game
    InvitationGameResponseDto gameDto = new InvitationGameResponseDto();
    gameDto.setName(invitation.getGame().getName());
    gameDto.setSport(invitation.getGame().getSport());
    dto.setGame(gameDto);

    // Set inviter name
    dto.setInviterName(invitation.getInviter().getName());

    return dto;
  }
}
