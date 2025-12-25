package com.myoro.myoro_matchup_api.controller;

import com.myoro.myoro_matchup_api.dto.ForgotPasswordRequestDto;
import com.myoro.myoro_matchup_api.dto.LoginRequestDto;
import com.myoro.myoro_matchup_api.dto.LoginResponseDto;
import com.myoro.myoro_matchup_api.dto.SignupRequestDto;
import com.myoro.myoro_matchup_api.service.AuthService;
import com.myoro.myoro_matchup_api.service.MessageService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import java.util.HashMap;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/** Authentication controller. */
@Tag(name = "Authentication", description = "User authentication endpoints (signup, login)")
@RestController
@RequestMapping("/api/auth")
public class AuthController {
  /** Message service. */
  @Autowired private MessageService messageService;

  /** Auth service. */
  @Autowired private AuthService authService;

  /**
   * Registers a new user account
   *
   * @param request the signup request containing user details
   * @return ResponseEntity containing JWT token and success message
   */
  @Operation(
      summary = "Register a new user",
      description = "Creates a new user account and returns JWT token")
  @ApiResponses(
      value = {
        @ApiResponse(responseCode = "200", description = "User registered successfully"),
        @ApiResponse(responseCode = "400", description = "Invalid request data")
      })
  @PostMapping("/signup")
  public ResponseEntity<Map<String, Object>> signup(@Valid @RequestBody SignupRequestDto request) {
    final LoginResponseDto response = authService.signup(request);
    Map<String, Object> responseBody = new HashMap<>();
    responseBody.put("message", messageService.getMessage("auth.signup.success"));
    responseBody.put("user", response);
    return ResponseEntity.ok(responseBody);
  }

  /**
   * Authenticates user credentials
   *
   * @param request the login request containing credentials
   * @return ResponseEntity containing JWT token and success message
   */
  @Operation(summary = "Authenticate user", description = "Logs in a user and returns JWT token")
  @ApiResponses(
      value = {
        @ApiResponse(responseCode = "200", description = "User authenticated successfully"),
        @ApiResponse(responseCode = "401", description = "Invalid credentials")
      })
  @PostMapping("/login")
  public ResponseEntity<Map<String, Object>> login(@Valid @RequestBody LoginRequestDto request) {
    final LoginResponseDto response = authService.login(request);
    Map<String, Object> responseBody = new HashMap<>();
    responseBody.put("message", messageService.getMessage("auth.login.success"));
    responseBody.put("user", response);
    return ResponseEntity.ok(responseBody);
  }

  /**
   * Initiates password reset process
   *
   * @param request the forgot password request containing email
   * @return ResponseEntity containing success message
   */
  @Operation(
      summary = "Request password reset",
      description = "Sends a password reset email to the user if the email exists")
  @ApiResponses(
      value = {
        @ApiResponse(
            responseCode = "200",
            description = "Password reset email sent successfully (if email exists)"),
        @ApiResponse(responseCode = "400", description = "Invalid request data")
      })
  @PostMapping("/forgot-password")
  public ResponseEntity<Map<String, Object>> forgotPassword(
      @Valid @RequestBody ForgotPasswordRequestDto request) {
    authService.forgotPassword(request);
    Map<String, Object> responseBody = new HashMap<>();
    responseBody.put("message", messageService.getMessage("auth.forgot.password.success"));
    return ResponseEntity.ok(responseBody);
  }
}
