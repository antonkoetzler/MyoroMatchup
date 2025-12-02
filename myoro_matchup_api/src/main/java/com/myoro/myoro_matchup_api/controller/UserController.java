package com.myoro.myoro_matchup_api.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.myoro.myoro_matchup_api.dto.UserLocationUpdateRequestDto;
import com.myoro.myoro_matchup_api.dto.UserResponseDto;
import com.myoro.myoro_matchup_api.dto.UserVisibilityUpdateRequestDto;
import com.myoro.myoro_matchup_api.service.MessageService;
import com.myoro.myoro_matchup_api.service.UserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.Valid;

/** User controller. */
@RestController
@RequestMapping("/api/users")
public class UserController {
  /** User service. */
  @Autowired
  private UserService userService;

  /** Message service. */
  @Autowired
  private MessageService messageService;

  /**
   * Retrieves a user by their unique identifier
   * 
   * @param id               the unique identifier of the user to retrieve
   * @param showStats        whether to include user stats
   * @param showSubscription whether to include subscription status
   * @param locationFilter   the location data to include (none, country, or full)
   * @return ResponseEntity containing the user details
   */
  @GetMapping("/{id}")
  public ResponseEntity<UserResponseDto> getUserById(@PathVariable Long id) {
    return ResponseEntity.ok(userService.getUserDto(id));
  }

  /**
   * Retrieves all users in the system
   * 
   * @return ResponseEntity containing list of all users
   */
  @GetMapping
  public ResponseEntity<List<UserResponseDto>> getAllUsers() {
    return ResponseEntity.ok(userService.getAllUsersDto());
  }

  /**
   * Updates the visibility of the authenticated user
   * 
   * @param request       the HTTP request containing the bearer token
   * @param updateRequest the visibility update request
   * @return ResponseEntity containing success message
   */
  @PutMapping("/visibility")
  public ResponseEntity<Map<String, Object>> updateVisibility(
      HttpServletRequest request,
      @Valid @RequestBody UserVisibilityUpdateRequestDto updateRequest) {
    userService.updateVisibility(request, updateRequest.getVisibility());
    Map<String, Object> responseBody = new HashMap<>();
    responseBody.put("message", messageService.getMessage("user.visibility.update.success"));
    return ResponseEntity.ok(responseBody);
  }

  /**
   * Updates the location of the authenticated user
   * 
   * @param request       the HTTP request containing the bearer token
   * @param updateRequest the location update request
   * @return ResponseEntity containing success message
   */
  @PutMapping("/location")
  public ResponseEntity<Map<String, Object>> updateLocation(
      HttpServletRequest request,
      @Valid @RequestBody UserLocationUpdateRequestDto updateRequest) {
    userService.updateLocation(request, updateRequest.getCountry(), updateRequest.getState(),
        updateRequest.getCity());
    Map<String, Object> responseBody = new HashMap<>();
    responseBody.put("message", messageService.getMessage("user.location.update.success"));
    return ResponseEntity.ok(responseBody);
  }

  /**
   * Sends a friend request to a user
   * 
   * @param request     the HTTP request containing the bearer token
   * @param recipientId the ID of the user receiving the friend request
   * @return ResponseEntity containing success message
   */
  @PostMapping("/friend-request/{recipientId}")
  public ResponseEntity<Map<String, Object>> sendFriendRequest(
      HttpServletRequest request,
      @PathVariable Long recipientId) {
    userService.sendFriendRequest(request, recipientId);
    Map<String, Object> responseBody = new HashMap<>();
    responseBody.put("message", messageService.getMessage("user.friend.request.send.success"));
    return ResponseEntity.ok(responseBody);
  }

  /**
   * Blocks a user
   * 
   * @param request   the HTTP request containing the bearer token
   * @param blockedId the ID of the user being blocked
   * @return ResponseEntity containing success message
   */
  @PostMapping("/block/{blockedId}")
  public ResponseEntity<Map<String, Object>> blockUser(
      HttpServletRequest request,
      @PathVariable Long blockedId) {
    userService.blockUser(request, blockedId);
    Map<String, Object> responseBody = new HashMap<>();
    responseBody.put("message", messageService.getMessage("user.block.success"));
    return ResponseEntity.ok(responseBody);
  }

  /**
   * Gets all blocked users for the authenticated user
   * 
   * @param request the HTTP request containing the bearer token
   * @return ResponseEntity containing list of blocked users
   */
  @GetMapping("/blocked")
  public ResponseEntity<List<UserResponseDto>> getBlockedUsers(HttpServletRequest request) {
    return ResponseEntity.ok(userService.getBlockedUsers(request));
  }

  /**
   * Unblocks a user
   * 
   * @param request   the HTTP request containing the bearer token
   * @param blockedId the ID of the user being unblocked
   * @return ResponseEntity containing success message
   */
  @DeleteMapping("/block/{blockedId}")
  public ResponseEntity<Map<String, Object>> unblockUser(
      HttpServletRequest request,
      @PathVariable Long blockedId) {
    userService.unblockUser(request, blockedId);
    Map<String, Object> responseBody = new HashMap<>();
    responseBody.put("message", messageService.getMessage("user.unblock.success"));
    return ResponseEntity.ok(responseBody);
  }
}
