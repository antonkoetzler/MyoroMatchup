package com.myoro.myoro_matchup_api.controller;

import com.myoro.myoro_matchup_api.dto.GameCreationRequestDto;
import com.myoro.myoro_matchup_api.dto.GameResponseDto;
import com.myoro.myoro_matchup_api.dto.GameTeamResponseDto;
import com.myoro.myoro_matchup_api.service.GameService;
import com.myoro.myoro_matchup_api.service.JwtService;
import com.myoro.myoro_matchup_api.service.MessageService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.Valid;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/** Game controller. */
@Tag(name = "Games", description = "Game management endpoints")
@RestController
@RequestMapping("/api/games")
public class GameController {
  /** Message service. */
  @Autowired private MessageService messageService;

  /** Game service. */
  @Autowired private GameService gameService;

  /** JWT service for extracting user ID from token. */
  @Autowired private JwtService jwtService;

  /** Create a game. */
  @Operation(summary = "Create game", description = "Creates a new game")
  @ApiResponses(
      value = {
        @ApiResponse(responseCode = "200", description = "Game created successfully"),
        @ApiResponse(responseCode = "400", description = "Invalid request data"),
        @ApiResponse(responseCode = "401", description = "Unauthorized")
      })
  @SecurityRequirement(name = "bearerAuth")
  @PostMapping
  public ResponseEntity<Map<String, Object>> create(
      @Valid @RequestBody GameCreationRequestDto request, HttpServletRequest httpRequest) {
    final Long userId = jwtService.getUserIdFromRequest(httpRequest);
    final Long response = gameService.create(request, userId);
    Map<String, Object> responseBody = new HashMap<>();
    responseBody.put("message", messageService.getMessage("game.create.success"));
    responseBody.put("id", response);
    return ResponseEntity.ok(responseBody);
  }

  /** Get all games. */
  @Operation(summary = "Get all games", description = "Retrieves a list of all games")
  @ApiResponse(responseCode = "200", description = "Games retrieved successfully")
  @GetMapping
  public ResponseEntity<List<GameResponseDto>> select() {
    return ResponseEntity.ok(gameService.getAll());
  }

  /** Get a game by id. */
  @Operation(summary = "Get game by ID", description = "Retrieves a specific game by its ID")
  @ApiResponses(
      value = {
        @ApiResponse(responseCode = "200", description = "Game found"),
        @ApiResponse(responseCode = "404", description = "Game not found")
      })
  @GetMapping("/{id}")
  public ResponseEntity<GameResponseDto> selectById(@PathVariable Long id) {
    return ResponseEntity.ok(gameService.getById(id));
  }

  /** Get teams of a game by game id. */
  @Operation(summary = "Get game teams", description = "Retrieves all teams for a specific game")
  @ApiResponses(
      value = {
        @ApiResponse(responseCode = "200", description = "Teams retrieved successfully"),
        @ApiResponse(responseCode = "404", description = "Game not found")
      })
  @GetMapping("/{id}/teams")
  public ResponseEntity<List<GameTeamResponseDto>> getTeams(@PathVariable Long id) {
    return ResponseEntity.ok(gameService.getTeamsByGameId(id));
  }

  /** Leave a game (remove current user from game players). */
  @Operation(
      summary = "Leave game",
      description = "Removes the current user from a game's players list")
  @ApiResponses(
      value = {
        @ApiResponse(responseCode = "200", description = "Left game successfully"),
        @ApiResponse(responseCode = "404", description = "Game not found"),
        @ApiResponse(responseCode = "401", description = "Unauthorized")
      })
  @SecurityRequirement(name = "bearerAuth")
  @DeleteMapping("/{id}/players")
  public ResponseEntity<Map<String, Object>> leaveGame(
      @PathVariable Long id, HttpServletRequest httpRequest) {
    final Long userId = jwtService.getUserIdFromRequest(httpRequest);
    gameService.leaveGame(id, userId);
    Map<String, Object> responseBody = new HashMap<>();
    responseBody.put("message", messageService.getMessage("game.leave.success"));
    return ResponseEntity.ok(responseBody);
  }
}
