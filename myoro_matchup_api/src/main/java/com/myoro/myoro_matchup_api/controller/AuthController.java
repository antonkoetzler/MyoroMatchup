package com.myoro.myoro_matchup_api.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.myoro.myoro_matchup_api.dto.LoginRequestDto;
import com.myoro.myoro_matchup_api.dto.LoginResponseDto;
import com.myoro.myoro_matchup_api.dto.SignupRequestDto;
import com.myoro.myoro_matchup_api.service.AuthService;

import com.myoro.myoro_matchup_api.service.MessageService;

import jakarta.validation.Valid;

@RestController
@RequestMapping("/api/auth")
public class AuthController {
  /** Message service. */
  @Autowired
  private MessageService messageService;

  /** Auth service. */
  @Autowired
  private AuthService authService;

  /**
   * Registers a new user account
   * 
   * @param request the signup request containing user details
   * @return ResponseEntity containing JWT token and success message
   */
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
  @PostMapping("/login")
  public ResponseEntity<Map<String, Object>> login(@Valid @RequestBody LoginRequestDto request) {
    final LoginResponseDto response = authService.login(request);
    Map<String, Object> responseBody = new HashMap<>();
    responseBody.put("message", messageService.getMessage("auth.login.success"));
    responseBody.put("user", response);
    return ResponseEntity.ok(responseBody);
  }
}
