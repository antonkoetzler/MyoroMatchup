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
import com.myoro.myoro_matchup_api.service.GameService;
import com.myoro.myoro_matchup_api.service.MessageService;

import io.swagger.v3.oas.annotations.Operation;
import jakarta.validation.Valid;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;

/** Game controller. */
@RestController
@RequestMapping("/api/games")
@Tag(name = "Games", description = "Game endpoints.")
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
  @Operation(summary = "Create a game", description = "Create a new game.")
  @ApiResponses(value = {
      @ApiResponse(responseCode = "200", description = "Game created successfully."),
      @ApiResponse(responseCode = "400", description = "Invalid request data."),
  })
  public ResponseEntity<Map<String, Object>> create(@Valid @RequestBody GameCreationRequestDto request,
      HttpServletRequest httpRequest) {
    // Extract user ID from JWT token (authentication already validated by Spring
    // Security)
    final String authHeader = httpRequest.getHeader("Authorization");
    final String token = jwtService.extractTokenFromHeader(authHeader);
    final Long userId = jwtService.validateTokenAndGetUserId(token);

    final Long response = gameService.create(request, userId);
    Map<String, Object> responseBody = new HashMap<>();
    responseBody.put("message", messageService.getMessage("game.create.success"));
    responseBody.put("id", response);
    return ResponseEntity.ok(responseBody);
  }

  /** Get all games. */
  @GetMapping
  @Operation(summary = "Get all games", description = "Get all games.")
  @ApiResponses(value = {
      @ApiResponse(responseCode = "200", description = "Games retrieved successfully."),
      @ApiResponse(responseCode = "400", description = "Invalid request data."),
  })
  public ResponseEntity<List<GameResponseDto>> select() {
    return ResponseEntity.ok(gameService.getAll());
  }

  /** Get a game by id. */
  @GetMapping("/{id}")
  @Operation(summary = "Get a game by id", description = "Get a game by id.")
  @ApiResponses(value = {
      @ApiResponse(responseCode = "200", description = "Game retrieved successfully."),
      @ApiResponse(responseCode = "400", description = "Invalid request data."),
  })
  public ResponseEntity<GameResponseDto> selectById(@PathVariable Long id) {
    return ResponseEntity.ok(gameService.getById(id));
  }
}
