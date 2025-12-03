package com.myoro.myoro_matchup_api.service;

import java.time.LocalDateTime;
import java.util.List;
import java.util.stream.Collectors;

import com.myoro.myoro_matchup_api.model.BlockedUserModel;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myoro.myoro_matchup_api.dto.FootballStatsDto;
import com.myoro.myoro_matchup_api.dto.UserLocationResponseDto;
import com.myoro.myoro_matchup_api.dto.UserResponseDto;
import com.myoro.myoro_matchup_api.dto.UserSportStatsResponseDto;
import com.myoro.myoro_matchup_api.dto.VolleyballStatsDto;
import com.myoro.myoro_matchup_api.enums.CountryEnum;
import com.myoro.myoro_matchup_api.enums.FriendRequestStatusEnum;
import com.myoro.myoro_matchup_api.enums.SportsEnum;
import com.myoro.myoro_matchup_api.model.BlockedUserModel;
import com.myoro.myoro_matchup_api.model.FootballUserStatsModel;
import com.myoro.myoro_matchup_api.model.FriendRequestModel;
import com.myoro.myoro_matchup_api.model.FutsalUserStatsModel;
import com.myoro.myoro_matchup_api.model.UserLocationModel;
import com.myoro.myoro_matchup_api.model.Fut7UserStatsModel;
import com.myoro.myoro_matchup_api.model.UserModel;
import com.myoro.myoro_matchup_api.model.UserStatsModel;
import com.myoro.myoro_matchup_api.model.VolleyballUserStatsModel;
import com.myoro.myoro_matchup_api.repository.BlockedUserRepository;
import com.myoro.myoro_matchup_api.repository.FriendRequestRepository;
import com.myoro.myoro_matchup_api.repository.UserRepository;
import com.myoro.myoro_matchup_api.repository.UserStatsRepository;
import com.myoro.myoro_matchup_api.specification.FriendSpecifications;

import org.springframework.data.jpa.domain.Specification;

import jakarta.servlet.http.HttpServletRequest;

/** User service. */
@Service
public class UserService {
  /** User repository for database operations */
  @Autowired
  private UserRepository userRepository;

  /** User stats repository for database operations */
  @Autowired
  private UserStatsRepository userStatsRepository;

  /** Friend request repository for database operations */
  @Autowired
  private FriendRequestRepository friendRequestRepository;

  /** Blocked user repository for database operations */
  @Autowired
  private BlockedUserRepository blockedUserRepository;

  /** Message service for localization and internationalization. */
  @Autowired
  private MessageService messageService;

  /** JWT service for extracting user ID from bearer token. */
  @Autowired
  private JwtService jwtService;

  /** Get user by ID. */
  public UserModel get(Long id) {
    return get(id, false);
  }

  /** Get user by ID with optional stats. */
  public UserModel get(Long id, boolean showStats) {
    return userRepository.findById(id)
        .orElseThrow(() -> new RuntimeException(messageService.getMessage("error.user.not.found")));
  }

  /** Get user by bearer token. */
  public UserModel getUserByBearerToken(final HttpServletRequest request) {
    final Long userId = jwtService.getUserIdFromRequest(request);
    return get(userId);
  }

  /**
   * Retrieves all users from database
   * 
   * @return list of all users in the system
   */
  public List<UserModel> getAllUsers() {
    return userRepository.findAll();
  }

  /**
   * Get user DTO by ID with optional stats and location data.
   * 
   * @param id               the user ID
   * @param showStats        whether to include stats
   * @param showSubscription whether to include subscription status
   * @param locationFilter   the location data to include (null or NONE = no
   *                         location, COUNTRY = country only, FULL = city, state,
   *                         country)
   * @return the user response DTO
   */
  public UserResponseDto getUserDto(Long id) {
    UserModel user = userRepository.findById(id)
        .orElseThrow(() -> new RuntimeException(messageService.getMessage("error.user.not.found")));

    UserResponseDto dto = new UserResponseDto();
    dto.setId(user.getId());
    dto.setUsername(user.getUsername());
    dto.setName(user.getName());
    dto.setEmail(user.getEmail());
    dto.setStats(buildSportStatsDto(user));
    dto.setIsSubscribed(user.getIsSubscribed());
    dto.setVisibility(user.getVisibility());

    final UserLocationModel locationModel = user.getLocation();
    final CountryEnum country = locationModel.getCountry();
    final String state = locationModel.getState();
    final String city = locationModel.getCity();
    final UserLocationResponseDto location = new UserLocationResponseDto(country, state, city);
    dto.setLocation(location);

    return dto;
  }

  /**
   * Builds UserSportStatsResponseDto from user's stats.
   * 
   * @param user the user model
   * @return the sport stats response DTO
   */
  private UserSportStatsResponseDto buildSportStatsDto(UserModel user) {
    List<UserStatsModel> statsList = userStatsRepository.findByUser(user);
    UserSportStatsResponseDto statsDto = new UserSportStatsResponseDto();

    for (UserStatsModel stat : statsList) {
      if (stat.getSport() == SportsEnum.FOOTBALL && stat instanceof FootballUserStatsModel) {
        FootballUserStatsModel footballStat = (FootballUserStatsModel) stat;
        statsDto.setFootball(new FootballStatsDto(footballStat.getRating(), footballStat.getAttack(),
            footballStat.getDefense(), footballStat.getStriking(), footballStat.getSkills()));
      } else if (stat.getSport() == SportsEnum.FUTSAL && stat instanceof FutsalUserStatsModel) {
        FutsalUserStatsModel futsalStat = (FutsalUserStatsModel) stat;
        statsDto.setFutsal(new FootballStatsDto(futsalStat.getRating(), futsalStat.getAttack(),
            futsalStat.getDefense(), futsalStat.getStriking(), futsalStat.getSkills()));
      } else if (stat.getSport() == SportsEnum.FUT7 && stat instanceof Fut7UserStatsModel) {
        Fut7UserStatsModel fut7Stat = (Fut7UserStatsModel) stat;
        statsDto.setFut7(new FootballStatsDto(fut7Stat.getRating(), fut7Stat.getAttack(), fut7Stat.getDefense(),
            fut7Stat.getStriking(), fut7Stat.getSkills()));
      } else if (stat.getSport() == SportsEnum.VOLLEYBALL && stat instanceof VolleyballUserStatsModel) {
        VolleyballUserStatsModel volleyballStat = (VolleyballUserStatsModel) stat;
        statsDto.setVolleyball(new VolleyballStatsDto(volleyballStat.getRating(), volleyballStat.getAttack(),
            volleyballStat.getBlocking(), volleyballStat.getServing(), volleyballStat.getReception()));
      }
    }

    return statsDto;
  }

  /**
   * Get all users as DTOs.
   * 
   * @return list of all user response DTOs
   */
  public List<UserResponseDto> getAllUsersDto() {
    return userRepository.findAll().stream()
        .map(user -> {
          UserResponseDto dto = new UserResponseDto();
          dto.setId(user.getId());
          dto.setUsername(user.getUsername());
          dto.setName(user.getName());
          dto.setEmail(user.getEmail());
          dto.setVisibility(user.getVisibility());
          return dto;
        })
        .collect(Collectors.toList());
  }

  /**
   * Updates the visibility of a user.
   * 
   * @param request    the HTTP request containing the bearer token
   * @param visibility the new visibility value
   */
  public void updateVisibility(final HttpServletRequest request,
      final com.myoro.myoro_matchup_api.enums.VisibilityEnum visibility) {
    final Long userId = jwtService.getUserIdFromRequest(request);
    UserModel user = get(userId);
    user.setVisibility(visibility);
    userRepository.save(user);
  }

  /**
   * Updates the location of a user.
   * 
   * @param request  the HTTP request containing the bearer token
   * @param country  the country
   * @param state    the state
   * @param city     the city
   */
  public void updateLocation(final HttpServletRequest request, final CountryEnum country, final String state,
      final String city) {
    final Long userId = jwtService.getUserIdFromRequest(request);
    UserModel user = get(userId);
    user.setLocation(new UserLocationModel(country, state, city));
    userRepository.save(user);
  }

  /**
   * Sends a friend request to a user.
   * 
   * @param request    the HTTP request containing the bearer token
   * @param recipientId the ID of the user receiving the friend request
   */
  public void sendFriendRequest(final HttpServletRequest request, final Long recipientId) {
    final Long requesterId = jwtService.getUserIdFromRequest(request);

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

    // Check if users are already blocked
    if (blockedUserRepository.existsByBlockerIdAndBlockedId(requesterId, recipientId) ||
        blockedUserRepository.existsByBlockerIdAndBlockedId(recipientId, requesterId)) {
      throw new RuntimeException(messageService.getMessage("error.friend.request.user.blocked"));
    }

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
   * Accepts a friend request.
   * 
   * @param request        the HTTP request containing the bearer token
   * @param friendRequestId the ID of the friend request to accept
   */
  public void acceptFriendRequest(final HttpServletRequest request, final Long friendRequestId) {
    final Long userId = jwtService.getUserIdFromRequest(request);

    // Find the friend request
    FriendRequestModel friendRequest = friendRequestRepository.findById(friendRequestId)
        .orElseThrow(() -> new RuntimeException(messageService.getMessage("error.friend.request.not.found")));

    // Validate user is the recipient
    if (!friendRequest.getRecipient().getId().equals(userId)) {
      throw new RuntimeException(messageService.getMessage("error.access.denied"));
    }

    // Validate friend request is pending
    if (friendRequest.getStatus() != FriendRequestStatusEnum.PENDING) {
      throw new RuntimeException(messageService.getMessage("error.friend.request.not.pending"));
    }

    // Update friend request status
    friendRequest.setStatus(FriendRequestStatusEnum.ACCEPTED);
    friendRequest.setRespondedAt(LocalDateTime.now());

    // Save friend request
    friendRequestRepository.save(friendRequest);
  }

  /**
   * Gets all friends for the authenticated user, optionally filtered by query
   * and status.
   * 
   * @param request  the HTTP request containing the bearer token
   * @param query    optional search query to filter by friend name, username,
   *                 status, or dates
   * @param status   optional status filter (PENDING, ACCEPTED, REJECTED)
   * @return list of friends as user response DTOs
   */
  public List<UserResponseDto> getFriends(final HttpServletRequest request, final String query,
      final FriendRequestStatusEnum status) {
    final Long userId = jwtService.getUserIdFromRequest(request);

    // Filter to only accepted friend requests (friends)
    Specification<FriendRequestModel> spec = FriendSpecifications.filter(userId, query,
        status != null ? status : FriendRequestStatusEnum.ACCEPTED);
    List<FriendRequestModel> friendRequests = friendRequestRepository.findAll(spec);

    return friendRequests.stream()
        .map(friendRequest -> {
          // Get the other user (not the current user)
          UserModel friend = friendRequest.getRequester().getId().equals(userId)
              ? friendRequest.getRecipient()
              : friendRequest.getRequester();

          UserResponseDto dto = new UserResponseDto();
          dto.setId(friend.getId());
          dto.setUsername(friend.getUsername());
          dto.setName(friend.getName());
          dto.setEmail(friend.getEmail());
          dto.setVisibility(friend.getVisibility());
          return dto;
        })
        .collect(Collectors.toList());
  }

  /**
   * Blocks a user.
   * 
   * @param request   the HTTP request containing the bearer token
   * @param blockedId the ID of the user being blocked
   */
  public void blockUser(final HttpServletRequest request, final Long blockedId) {
    final Long blockerId = jwtService.getUserIdFromRequest(request);

    // Validate blocked user exists
    UserModel blocked = userRepository.findById(blockedId)
        .orElseThrow(() -> new RuntimeException(messageService.getMessage("error.user.not.found")));

    // Validate blocker is not blocking themselves
    if (blocked.getId().equals(blockerId)) {
      throw new RuntimeException(messageService.getMessage("error.block.user.cannot.block.self"));
    }

    // Check if already blocked
    if (blockedUserRepository.existsByBlockerIdAndBlockedId(blockerId, blockedId)) {
      throw new RuntimeException(messageService.getMessage("error.block.user.already.blocked"));
    }

    // Get blocker
    UserModel blocker = userRepository.findById(blockerId)
        .orElseThrow(() -> new RuntimeException(messageService.getMessage("error.user.not.found")));

    // Create blocked user relationship
    BlockedUserModel blockedUser = new BlockedUserModel();
    blockedUser.setBlocker(blocker);
    blockedUser.setBlocked(blocked);
    blockedUser.setBlockedAt(LocalDateTime.now());

    // Save blocked user relationship
    blockedUserRepository.save(blockedUser);
  }

  /**
   * Gets all blocked users for the authenticated user.
   * 
   * @param request the HTTP request containing the bearer token
   * @return list of blocked users as DTOs
   */
  public List<UserResponseDto> getBlockedUsers(final HttpServletRequest request) {
    final Long blockerId = jwtService.getUserIdFromRequest(request);
    List<BlockedUserModel> blockedUsers = blockedUserRepository.findByBlockerId(blockerId);
    
    return blockedUsers.stream()
        .map(blockedUser -> {
          UserModel user = blockedUser.getBlocked();
          UserResponseDto dto = new UserResponseDto();
          dto.setId(user.getId());
          dto.setUsername(user.getUsername());
          dto.setName(user.getName());
          dto.setEmail(user.getEmail());
          dto.setVisibility(user.getVisibility());
          return dto;
        })
        .collect(Collectors.toList());
  }

  /**
   * Unblocks a user.
   * 
   * @param request   the HTTP request containing the bearer token
   * @param blockedId the ID of the user being unblocked
   */
  public void unblockUser(final HttpServletRequest request, final Long blockedId) {
    final Long blockerId = jwtService.getUserIdFromRequest(request);

    // Find the blocked user relationship
    BlockedUserModel blockedUser = blockedUserRepository
        .findByBlockerIdAndBlockedId(blockerId, blockedId)
        .orElseThrow(() -> new RuntimeException(messageService.getMessage("error.unblock.user.not.blocked")));

    // Delete the blocked user relationship
    blockedUserRepository.delete(blockedUser);
  }
}
