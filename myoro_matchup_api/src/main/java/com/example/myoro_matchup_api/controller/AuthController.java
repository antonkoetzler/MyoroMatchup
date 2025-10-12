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

import jakarta.validation.Valid;

@RestController
@RequestMapping("/api/auth")
public class AuthController {
  /** Auth service. */
  @Autowired
  private AuthService authService;

  @PostMapping("/signup")
  public ResponseEntity<Map<String, String>> signup(@Valid @RequestBody SignupRequest request) {
    authService.signup(request);
    Map<String, String> response = new HashMap<>();
    response.put("message", "Signup successful.");
    return ResponseEntity.ok(response);
  }

  @PostMapping("/login")
  public ResponseEntity<Map<String, String>> login(@Valid @RequestBody LoginRequest request) {
    authService.login(request);
    Map<String, String> response = new HashMap<>();
    response.put("message", "Login successful.");
    return ResponseEntity.ok(response);
  }
}
