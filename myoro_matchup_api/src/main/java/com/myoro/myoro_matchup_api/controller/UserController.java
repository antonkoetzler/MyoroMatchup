package com.myoro.myoro_matchup_api.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.myoro.myoro_matchup_api.model.UserModel;
import com.myoro.myoro_matchup_api.service.UserService;
import io.swagger.v3.oas.annotations.tags.Tag;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;

/** User controller. */
@RestController
@RequestMapping("/api/users")
@Tag(name = "User Management", description = "User management endpoints.")
public class UserController {
  /** User service. */
  @Autowired
  private UserService userService;

  /** Get all users. */
  @Operation(summary = "Get All Users", description = "Retrieve a list of all registered users in the system.")
  @ApiResponses(value = {
      @ApiResponse(responseCode = "200", description = "Successfully retrieved list of users.", content = @Content(mediaType = "application/json", schema = @Schema(example = "[{\"id\": 1, \"email\": \"user@example.com\", \"username\": \"johndoe\"}, {\"id\": 2, \"email\": \"admin@example.com\", \"username\": \"admin\"}]"))),
      @ApiResponse(responseCode = "401", description = "Unauthorized - Authentication required.", content = @Content(mediaType = "application/json", schema = @Schema(example = "{\"error\": \"Authentication required\", \"message\": \"Please provide valid authentication credentials\"}")))
  })
  @SecurityRequirement(name = "bearerAuth")
  /**
   * Retrieves all users in the system
   * 
   * @return ResponseEntity containing list of all users
   */
  public ResponseEntity<List<UserModel>> getAllUsers() {
    return ResponseEntity.ok(userService.getAllUsers());
  }
}
