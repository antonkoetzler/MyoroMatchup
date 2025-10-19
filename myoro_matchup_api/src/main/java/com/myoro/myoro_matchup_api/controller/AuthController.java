package com.myoro.myoro_matchup_api.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.myoro.myoro_matchup_api.dto.LoginRequest;
import com.myoro.myoro_matchup_api.dto.SignupRequest;
import com.myoro.myoro_matchup_api.service.AuthService;

import com.myoro.myoro_matchup_api.service.MessageService;
import io.swagger.v3.oas.annotations.tags.Tag;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;

import jakarta.validation.Valid;

@RestController
@RequestMapping("/api/auth")
@Tag(name = "Authentication", description = "Authentication related endpoints.")
public class AuthController {
  /** Message service. */
  @Autowired
  private MessageService messageService;

  /** Auth service. */
  @Autowired
  private AuthService authService;

  @PostMapping("/signup")
  @Operation(summary = "User Registration", description = "Register a new user account and receive an authentication token.")
  @ApiResponses(value = {
      @ApiResponse(responseCode = "200", description = "User successfully registered.", content = @Content(mediaType = "application/json", schema = @Schema(example = "{\"token\": \"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...\", \"message\": \"User registered successfully\"}"))),
      @ApiResponse(responseCode = "400", description = "Invalid request data or user already exists.", content = @Content(mediaType = "application/json", schema = @Schema(example = "{\"error\": \"User already exists\", \"message\": \"A user with this email already exists\"}")))
  })
  public ResponseEntity<Map<String, Object>> signup(@Valid @RequestBody SignupRequest request) {
    String token = authService.signup(request);
    Map<String, Object> responseBody = new HashMap<>();
    responseBody.put("token", token);
    responseBody.put("message", messageService.getMessage("auth.signup.success"));
    return ResponseEntity.ok(responseBody);
  }

  @PostMapping("/login")
  @Operation(summary = "User Login", description = "Authenticate user credentials and receive an authentication token.")
  @ApiResponses(value = {
      @ApiResponse(responseCode = "200", description = "User successfully authenticated.", content = @Content(mediaType = "application/json", schema = @Schema(example = "{\"token\": \"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...\", \"message\": \"Login successful\"}"))),
      @ApiResponse(responseCode = "401", description = "Invalid credentials.", content = @Content(mediaType = "application/json", schema = @Schema(example = "{\"error\": \"Invalid credentials\", \"message\": \"Email or password is incorrect\"}"))),
      @ApiResponse(responseCode = "400", description = "Invalid request data.", content = @Content(mediaType = "application/json", schema = @Schema(example = "{\"error\": \"Validation failed\", \"message\": \"Email and password are required\"}")))
  })
  public ResponseEntity<Map<String, Object>> login(@Valid @RequestBody LoginRequest request) {
    String token = authService.login(request);
    Map<String, Object> responseBody = new HashMap<>();
    responseBody.put("token", token);
    responseBody.put("message", messageService.getMessage("auth.login.success"));
    return ResponseEntity.ok(responseBody);
  }
}
