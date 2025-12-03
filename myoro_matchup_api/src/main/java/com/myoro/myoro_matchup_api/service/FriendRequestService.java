package com.myoro.myoro_matchup_api.service;

import java.time.LocalDateTime;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import com.myoro.myoro_matchup_api.dto.FriendRequestResponseDto;
import com.myoro.myoro_matchup_api.enums.FriendRequestStatusEnum;
import com.myoro.myoro_matchup_api.model.FriendRequestModel;
import com.myoro.myoro_matchup_api.model.UserModel;
import com.myoro.myoro_matchup_api.repository.FriendRequestRepository;
import com.myoro.myoro_matchup_api.repository.UserRepository;
import com.myoro.myoro_matchup_api.specification.FriendSpecifications;

/** Friend request service. */
@Service
public class FriendRequestService {
  /** Friend request repository. */
  @Autowired
  private FriendRequestRepository friendRequestRepository;

  /** User repository. */
  @Autowired
  private UserRepository userRepository;

  /** Message service for localization and internationalization. */
  @Autowired
  private MessageService messageService;

  /** JWT service for extracting user ID from token. */
  @Autowired
  private JwtService jwtService;

  /**
   * Sends a friend request to a user.
   * 
   * @param recipientId the ID of the user being requested
   * @param requesterId the ID of the user sending the friend request
   */
  public void sendFriendRequest(Long recipientId, Long requesterId) {
    // Validate recipient exists
    UserModel recipient = userRepository.findById(recipientId)
        .orElseThrow(() -> new RuntimeException(messageService.getMessage("error.user.not.found")));

    // Validate requester is not the recipient
    if (recipient.getId().equals(requesterId)) {
      throw new RuntimeException(messageService.getMessage("error.friend.request.cannot.request.self"));
    }

    // Check if there's already a pending friend request
    if (friendRequestRepository.existsByRequesterIdAndRecipientIdAndStatus(requesterId, recipientId,
        FriendRequestStatusEnum.PENDING)) {
      throw new RuntimeException(messageService.getMessage("error.friend.request.already.pending"));
    }

    // Check if there's already a pending friend request in reverse direction
    if (friendRequestRepository.existsByRequesterIdAndRecipientIdAndStatus(recipientId, requesterId,
        FriendRequestStatusEnum.PENDING)) {
      throw new RuntimeException(messageService.getMessage("error.friend.request.already.pending"));
    }

    // Get requester
    UserModel requester = userRepository.findById(requesterId)
        .orElseThrow(() -> new RuntimeException(messageService.getMessage("error.user.not.found")));

    // Create friend request
    FriendRequestModel friendRequest = new FriendRequestModel();
    friendRequest.setRequester(requester);
    friendRequest.setRecipient(recipient);
    friendRequest.setStatus(FriendRequestStatusEnum.PENDING);
    friendRequest.setCreatedAt(LocalDateTime.now());

    // Save friend request
    friendRequestRepository.save(friendRequest);
  }

  /**
   * Gets all friend requests for a user, optionally filtered by query and status.
   * 
   * @param userId      the user ID
   * @param searchQuery optional search query to filter by requester name, recipient
   *                    name, status, or dates
   * @param status      optional status filter
   * @return list of friend request response DTOs
   */
  public List<FriendRequestResponseDto> getFriendRequests(Long userId, String searchQuery,
      FriendRequestStatusEnum status) {
    Specification<FriendRequestModel> spec = FriendSpecifications.filter(userId, searchQuery, status);
    List<FriendRequestModel> friendRequests = friendRequestRepository.findAll(spec);

    return friendRequests.stream()
        .map(this::toDto)
        .collect(Collectors.toList());
  }

  /**
   * Converts FriendRequestModel to FriendRequestResponseDto.
   * 
   * @param friendRequest the friend request model
   * @return the friend request response DTO
   */
  private FriendRequestResponseDto toDto(FriendRequestModel friendRequest) {
    FriendRequestResponseDto dto = new FriendRequestResponseDto();
    dto.setId(friendRequest.getId());
    dto.setStatus(friendRequest.getStatus());
    dto.setCreatedAt(friendRequest.getCreatedAt());
    dto.setRespondedAt(friendRequest.getRespondedAt());
    dto.setRequesterName(friendRequest.getRequester().getName());
    dto.setRecipientName(friendRequest.getRecipient().getName());

    return dto;
  }

  /**
   * Accepts a friend request for the current user.
   * 
   * @param friendRequestId the friend request ID
   * @param userId          the authenticated user's ID
   */
  public void acceptFriendRequest(Long friendRequestId, Long userId) {
    FriendRequestModel friendRequest = friendRequestRepository.findById(friendRequestId)
        .orElseThrow(() -> new RuntimeException(messageService.getMessage("error.friend.request.not.found")));

    if (!friendRequest.getRecipient().getId().equals(userId)) {
      throw new RuntimeException(messageService.getMessage("error.access.denied"));
    }

    if (friendRequest.getStatus() != FriendRequestStatusEnum.PENDING) {
      throw new RuntimeException(messageService.getMessage("error.friend.request.not.pending"));
    }

    friendRequest.setStatus(FriendRequestStatusEnum.ACCEPTED);
    friendRequest.setRespondedAt(LocalDateTime.now());

    friendRequestRepository.save(friendRequest);
  }

  /**
   * Gets all friends for a user, optionally filtered by query.
   * Returns only accepted friend requests as UserResponseDto.
   * 
   * @param userId      the user ID
   * @param searchQuery optional search query to filter by friend name or username
   * @return list of friend request response DTOs (only accepted)
   */
  public List<FriendRequestResponseDto> getFriends(Long userId, String searchQuery) {
    Specification<FriendRequestModel> spec = FriendSpecifications.filter(userId, searchQuery,
        FriendRequestStatusEnum.ACCEPTED);
    List<FriendRequestModel> friendRequests = friendRequestRepository.findAll(spec);

    return friendRequests.stream()
        .map(this::toDto)
        .collect(Collectors.toList());
  }
}

