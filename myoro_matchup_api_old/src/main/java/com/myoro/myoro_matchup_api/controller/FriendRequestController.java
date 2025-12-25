package com.myoro.myoro_matchup_api.controller;

import com.myoro.myoro_matchup_api.dto.FriendRequestResponseDto;
import com.myoro.myoro_matchup_api.enums.FriendRequestStatusEnum;
import com.myoro.myoro_matchup_api.service.FriendRequestService;
import com.myoro.myoro_matchup_api.service.JwtService;
import com.myoro.myoro_matchup_api.service.MessageService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/** Friend request controller. */
@Tag(name = "Friend Requests", description = "Friend request management endpoints")
@RestController
@RequestMapping("/api/friend-requests")
public class FriendRequestController {
  /** Message service. */
  @Autowired private MessageService messageService;

  /** Friend request service. */
  @Autowired private FriendRequestService friendRequestService;

  /** JWT service for extracting user ID from token. */
  @Autowired private JwtService jwtService;

  /** Send a friend request to a user. */
  @Operation(
      summary = "Send friend request",
      description = "Sends a friend request to another user")
  @ApiResponses(
      value = {
        @ApiResponse(responseCode = "200", description = "Friend request sent successfully"),
        @ApiResponse(responseCode = "401", description = "Unauthorized"),
        @ApiResponse(responseCode = "404", description = "Recipient not found")
      })
  @SecurityRequirement(name = "bearerAuth")
  @PostMapping("/send/{recipientId}")
  public ResponseEntity<Map<String, Object>> sendFriendRequest(
      @PathVariable Long recipientId, HttpServletRequest httpRequest) {
    final Long userId = jwtService.getUserIdFromRequest(httpRequest);
    friendRequestService.sendFriendRequest(recipientId, userId);
    Map<String, Object> responseBody = new HashMap<>();
    responseBody.put("message", messageService.getMessage("friend.request.send.success"));
    return ResponseEntity.ok(responseBody);
  }

  /**
   * Get all friend requests for the authenticated user, optionally filtered by query and status.
   *
   * @param query optional search query to filter by requester name, recipient name, status, or
   *     dates
   * @param status optional status filter (PENDING, ACCEPTED, REJECTED)
   * @param httpRequest the HTTP request
   * @return list of friend requests
   */
  @Operation(
      summary = "Get friend requests",
      description =
          "Retrieves all friend requests for the authenticated user, optionally filtered by query and status")
  @ApiResponses(
      value = {
        @ApiResponse(responseCode = "200", description = "Friend requests retrieved successfully"),
        @ApiResponse(responseCode = "401", description = "Unauthorized")
      })
  @SecurityRequirement(name = "bearerAuth")
  @GetMapping
  public ResponseEntity<List<FriendRequestResponseDto>> getFriendRequests(
      @RequestParam(required = false) String query,
      @RequestParam(required = false) FriendRequestStatusEnum status,
      HttpServletRequest httpRequest) {
    final Long userId = jwtService.getUserIdFromRequest(httpRequest);
    return ResponseEntity.ok(friendRequestService.getFriendRequests(userId, query, status));
  }

  /**
   * Accept a friend request for the authenticated user.
   *
   * @param friendRequestId the friend request ID
   * @param httpRequest the HTTP request
   * @return success message
   */
  @Operation(
      summary = "Accept friend request",
      description = "Accepts a pending friend request for the authenticated user")
  @ApiResponses(
      value = {
        @ApiResponse(responseCode = "200", description = "Friend request accepted successfully"),
        @ApiResponse(responseCode = "401", description = "Unauthorized"),
        @ApiResponse(responseCode = "404", description = "Friend request not found")
      })
  @SecurityRequirement(name = "bearerAuth")
  @PostMapping("/{friendRequestId}/accept")
  public ResponseEntity<Map<String, Object>> acceptFriendRequest(
      @PathVariable Long friendRequestId, HttpServletRequest httpRequest) {
    final Long userId = jwtService.getUserIdFromRequest(httpRequest);
    friendRequestService.acceptFriendRequest(friendRequestId, userId);
    Map<String, Object> responseBody = new HashMap<>();
    responseBody.put("message", messageService.getMessage("friend.request.accept.success"));
    return ResponseEntity.ok(responseBody);
  }

  /**
   * Get all friends for the authenticated user, optionally filtered by query. Returns only accepted
   * friend requests.
   *
   * @param query optional search query to filter by friend name or username
   * @param httpRequest the HTTP request
   * @return list of friends
   */
  @Operation(
      summary = "Get friends",
      description =
          "Retrieves all friends (accepted friend requests) for the authenticated user, optionally filtered by query")
  @ApiResponses(
      value = {
        @ApiResponse(responseCode = "200", description = "Friends retrieved successfully"),
        @ApiResponse(responseCode = "401", description = "Unauthorized")
      })
  @SecurityRequirement(name = "bearerAuth")
  @GetMapping("/friends")
  public ResponseEntity<List<FriendRequestResponseDto>> getFriends(
      @RequestParam(required = false) String query, HttpServletRequest httpRequest) {
    final Long userId = jwtService.getUserIdFromRequest(httpRequest);
    return ResponseEntity.ok(friendRequestService.getFriends(userId, query));
  }
}
