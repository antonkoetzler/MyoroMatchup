package com.myoro.myoro_matchup_api.service;

import com.myoro.myoro_matchup_api.dto.InvitationGameResponseDto;
import com.myoro.myoro_matchup_api.dto.InvitationResponseDto;
import com.myoro.myoro_matchup_api.enums.InvitationStatusEnum;
import com.myoro.myoro_matchup_api.model.GameModel;
import com.myoro.myoro_matchup_api.model.InvitationModel;
import com.myoro.myoro_matchup_api.model.UserModel;
import com.myoro.myoro_matchup_api.repository.GameRepository;
import com.myoro.myoro_matchup_api.repository.InvitationRepository;
import com.myoro.myoro_matchup_api.repository.UserRepository;
import com.myoro.myoro_matchup_api.specification.InvitationSpecifications;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

/** Invitation service. */
@Service
public class InvitationService {
  /** Invitation repository. */
  @Autowired private InvitationRepository invitationRepository;

  /** Game repository. */
  @Autowired private GameRepository gameRepository;

  /** User repository. */
  @Autowired private UserRepository userRepository;

  /** Message service for localization and internationalization. */
  @Autowired private MessageService messageService;

  /**
   * Sends an invitation to a user for a game.
   *
   * @param gameId the game ID
   * @param inviteeId the ID of the user being invited
   * @param message optional message from the inviter
   * @param inviterId the ID of the user sending the invitation
   */
  public void sendInvitation(Long gameId, Long inviteeId, String message, Long inviterId) {
    // Validate game exists
    @SuppressWarnings("null")
    GameModel game =
        gameRepository
            .findById(gameId)
            .orElseThrow(
                () -> new RuntimeException(messageService.getMessage("error.game.not.found")));

    // Validate inviter is the game owner
    if (!game.getOwner().getId().equals(inviterId)) {
      throw new RuntimeException(messageService.getMessage("error.invitation.not.game.owner"));
    }

    // Validate invitee exists
    @SuppressWarnings("null")
    UserModel invitee =
        userRepository
            .findById(inviteeId)
            .orElseThrow(
                () -> new RuntimeException(messageService.getMessage("error.user.not.found")));

    // Validate invitee is not the inviter
    if (invitee.getId().equals(inviterId)) {
      throw new RuntimeException(messageService.getMessage("error.invitation.cannot.invite.self"));
    }

    // Validate invitee is not already a player
    if (game.getPlayers() != null
        && game.getPlayers().stream().anyMatch(player -> player.getId().equals(inviteeId))) {
      throw new RuntimeException(messageService.getMessage("error.invitation.user.already.player"));
    }

    // Check if there's already a pending invitation
    invitationRepository
        .findByGameIdAndInviteeIdAndStatus(gameId, inviteeId, InvitationStatusEnum.PENDING)
        .ifPresent(
            invitation -> {
              throw new RuntimeException(
                  messageService.getMessage("error.invitation.already.pending"));
            });

    // Get inviter
    @SuppressWarnings("null")
    UserModel inviter =
        userRepository
            .findById(inviterId)
            .orElseThrow(
                () -> new RuntimeException(messageService.getMessage("error.user.not.found")));

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
   * Gets all invitations for a user, optionally filtered by query and status.
   *
   * @param userId the user ID
   * @param query optional search query to filter by game name, inviter name, status, dates, or
   *     message
   * @param status optional status filter
   * @return list of invitation response DTOs
   */
  public List<InvitationResponseDto> getInvitations(
      Long userId, String query, InvitationStatusEnum status) {
    Specification<InvitationModel> spec = InvitationSpecifications.filter(userId, query, status);
    List<InvitationModel> invitations = invitationRepository.findAll(spec);

    return invitations.stream().map(this::toDto).collect(Collectors.toList());
  }

  /**
   * Converts InvitationModel to InvitationResponseDto.
   *
   * @param invitation the invitation model
   * @return the invitation response DTO
   */
  private InvitationResponseDto toDto(InvitationModel invitation) {
    InvitationResponseDto dto = new InvitationResponseDto();
    dto.setId(invitation.getId());
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

  /**
   * Accepts an invitation for the current user.
   *
   * @param invitationId the invitation ID
   * @param userId the authenticated user's ID
   */
  public void acceptInvitation(Long invitationId, Long userId) {
    @SuppressWarnings("null")
    InvitationModel invitation =
        invitationRepository
            .findById(invitationId)
            .orElseThrow(
                () ->
                    new RuntimeException(messageService.getMessage("error.invitation.not.found")));

    if (!invitation.getInvitee().getId().equals(userId)) {
      throw new RuntimeException(messageService.getMessage("error.access.denied"));
    }

    if (invitation.getStatus() != InvitationStatusEnum.PENDING) {
      throw new RuntimeException(messageService.getMessage("error.invitation.not.pending"));
    }

    GameModel game = invitation.getGame();
    List<UserModel> players = game.getPlayers();
    if (players == null) {
      players = new ArrayList<>();
    }

    if (players.stream().anyMatch(player -> player.getId().equals(userId))) {
      throw new RuntimeException(messageService.getMessage("error.invitation.user.already.player"));
    }

    players.add(invitation.getInvitee());
    game.setPlayers(players);

    invitation.setStatus(InvitationStatusEnum.ACCEPTED);
    invitation.setRespondedAt(LocalDateTime.now());

    gameRepository.save(game);
    invitationRepository.save(invitation);
  }

  /**
   * Declines an invitation for the current user.
   *
   * @param invitationId the invitation ID
   * @param userId the authenticated user's ID
   */
  public void declineInvitation(Long invitationId, Long userId) {
    @SuppressWarnings("null")
    InvitationModel invitation =
        invitationRepository
            .findById(invitationId)
            .orElseThrow(
                () ->
                    new RuntimeException(messageService.getMessage("error.invitation.not.found")));

    if (!invitation.getInvitee().getId().equals(userId)) {
      throw new RuntimeException(messageService.getMessage("error.access.denied"));
    }

    if (invitation.getStatus() != InvitationStatusEnum.PENDING) {
      throw new RuntimeException(messageService.getMessage("error.invitation.not.pending"));
    }

    invitation.setStatus(InvitationStatusEnum.REJECTED);
    invitation.setRespondedAt(LocalDateTime.now());

    invitationRepository.save(invitation);
  }
}
