package com.myoro.myoro_matchup_api.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.myoro.myoro_matchup_api.dto.InvitationResponseDto;
import com.myoro.myoro_matchup_api.enums.InvitationStatusEnum;
import com.myoro.myoro_matchup_api.service.InvitationService;
import com.myoro.myoro_matchup_api.service.JwtService;
import com.myoro.myoro_matchup_api.service.MessageService;

import jakarta.servlet.http.HttpServletRequest;

/** Invitation controller. */
@RestController
@RequestMapping("/api/invitations")
public class InvitationController {
  /** Message service. */
  @Autowired
  private MessageService messageService;

  /** Invitation service. */
  @Autowired
  private InvitationService invitationService;

  /** JWT service for extracting user ID from token. */
  @Autowired
  private JwtService jwtService;

  /**
   * Send an invitation to a user for a game.
   */
  @PostMapping("/invite/{gameId}/{inviteeId}")
  public ResponseEntity<Map<String, Object>> sendInvitation(@PathVariable Long gameId,
      @PathVariable Long inviteeId, @RequestBody(required = false) Map<String, String> requestBody,
      HttpServletRequest httpRequest) {
    final Long userId = jwtService.getUserIdFromRequest(httpRequest);
    String message = requestBody != null ? requestBody.get("message") : null;
    invitationService.sendInvitation(gameId, inviteeId, message, userId);
    Map<String, Object> responseBody = new HashMap<>();
    responseBody.put("message", messageService.getMessage("invitation.send.success"));
    return ResponseEntity.ok(responseBody);
  }

  /**
   * Get all invitations for the authenticated user, optionally filtered by
   * status.
   * 
   * @param status      optional status filter (PENDING, ACCEPTED, REJECTED,
   *                    EXPIRED, CANCELLED)
   * @param httpRequest the HTTP request
   * @return list of invitations
   */
  @GetMapping
  public ResponseEntity<List<InvitationResponseDto>> getInvitations(
      @RequestParam(required = false) InvitationStatusEnum status,
      HttpServletRequest httpRequest) {
    final Long userId = jwtService.getUserIdFromRequest(httpRequest);
    return ResponseEntity.ok(invitationService.getInvitations(userId, status));
  }
}
