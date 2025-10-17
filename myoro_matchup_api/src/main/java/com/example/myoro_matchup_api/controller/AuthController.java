package com.example.myoro_matchup_api.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.myoro_matchup_api.dto.LoginRequest;
import com.example.myoro_matchup_api.dto.SignupRequest;
import com.example.myoro_matchup_api.service.AuthService;
import com.example.myoro_matchup_api.service.MessageService;

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

  @PostMapping("/signup")
  public ResponseEntity<Map<String, Object>> signup(@Valid @RequestBody SignupRequest request) {
    final Long userId = authService.signup(request);
    Map<String, Object> response = new HashMap<>();
    response.put("id", userId);
    response.put("message", messageService.getMessage("auth.signup.success"));
    return ResponseEntity.ok(response);
  }

  @PostMapping("/login")
  public ResponseEntity<Map<String, Object>> login(@Valid @RequestBody LoginRequest request) {
    final Long userId = authService.login(request);
    Map<String, Object> response = new HashMap<>();
    response.put("id", userId);
    response.put("message", messageService.getMessage("auth.login.success"));
    return ResponseEntity.ok(response);
  }
}
