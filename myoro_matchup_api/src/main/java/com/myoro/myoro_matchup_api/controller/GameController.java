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
import org.springframework.web.bind.annotation.RestController;

import com.myoro.myoro_matchup_api.service.JwtService;

import jakarta.servlet.http.HttpServletRequest;

import com.myoro.myoro_matchup_api.dto.GameCreationRequestDto;
import com.myoro.myoro_matchup_api.dto.GameResponseDto;
import com.myoro.myoro_matchup_api.dto.UserResponseDto;
import com.myoro.myoro_matchup_api.service.GameService;
import com.myoro.myoro_matchup_api.service.MessageService;

import jakarta.validation.Valid;

/** Game controller. */
@RestController
@RequestMapping("/api/games")
public class GameController {
  /** Message service. */
  @Autowired
  private MessageService messageService;

  /** Game service. */
  @Autowired
  private GameService gameService;

  /** JWT service for extracting user ID from token. */
  @Autowired
  private JwtService jwtService;

  /**
   * Create a game.
   */
  @PostMapping
  public ResponseEntity<Map<String, Object>> create(@Valid @RequestBody GameCreationRequestDto request,
      HttpServletRequest httpRequest) {
    final Long userId = jwtService.getUserIdFromRequest(httpRequest);
    final Long response = gameService.create(request, userId);
    Map<String, Object> responseBody = new HashMap<>();
    responseBody.put("message", messageService.getMessage("game.create.success"));
    responseBody.put("id", response);
    return ResponseEntity.ok(responseBody);
  }

  /** Get all games. */
  @GetMapping
  public ResponseEntity<List<GameResponseDto>> select() {
    return ResponseEntity.ok(gameService.getAll());
  }

  /** Get a game by id. */
  @GetMapping("/{id}")
  public ResponseEntity<GameResponseDto> selectById(@PathVariable Long id) {
    return ResponseEntity.ok(gameService.getById(id));
  }

  /** Get players of a game by game id. */
  @GetMapping("/{id}/players")
  public ResponseEntity<List<UserResponseDto>> getPlayers(@PathVariable Long id) {
    return ResponseEntity.ok(gameService.getPlayersByGameId(id));
  }
}
