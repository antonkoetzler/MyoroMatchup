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
    String token = authService.signup(request);
    Map<String, Object> responseBody = new HashMap<>();
    responseBody.put("token", token);
    responseBody.put("message", messageService.getMessage("auth.signup.success"));
    return ResponseEntity.ok(responseBody);
  }

  @PostMapping("/login")
  public ResponseEntity<Map<String, Object>> login(@Valid @RequestBody LoginRequest request) {
    String token = authService.login(request);
    Map<String, Object> responseBody = new HashMap<>();
    responseBody.put("token", token);
    responseBody.put("message", messageService.getMessage("auth.login.success"));
    return ResponseEntity.ok(responseBody);
  }
}
