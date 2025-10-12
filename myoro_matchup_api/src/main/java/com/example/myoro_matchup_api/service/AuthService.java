package com.example.myoro_matchup_api.service;

import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.example.myoro_matchup_api.dto.LoginRequest;
import com.example.myoro_matchup_api.dto.SignupRequest;
import com.example.myoro_matchup_api.model.User;
import com.example.myoro_matchup_api.repository.UserRepository;

/** Auth service. */
@Service
public class AuthService {
  /** User repository. */
  @Autowired
  private UserRepository userRepository;

  /** Password encoder. */
  @Autowired
  private PasswordEncoder passwordEncoder;

  /** Signup function. */
  public User signup(SignupRequest request) {
    // Check if the username is already taken.
    if (userRepository.existsByUsername(request.getUsername())) {
      throw new RuntimeException("Username already taken.");
    }

    // Check if the email is already taken.
    if (userRepository.existsByEmail(request.getEmail())) {
      throw new RuntimeException("Email already taken.");
    }

    // Create a new user.
    User user = new User();
    user.setUsername(request.getUsername());
    user.setName(request.getName());
    user.setEmail(request.getEmail());
    user.setPassword(passwordEncoder.encode(request.getPassword()));
    user.setCreatedAt(LocalDateTime.now());

    // Save the user.
    return userRepository.save(user);
  }

  /** Login function. */
  public User login(LoginRequest request) {
    String username = request.getUsername();
    String email = request.getEmail();

    boolean usernameProvided = (username != null && !username.trim().isEmpty());
    boolean emailProvided = (email != null && !email.trim().isEmpty());

    // XOR: exactly one must be provided, not both, not neither
    if (usernameProvided == emailProvided) {
      throw new RuntimeException("Username (x)or email must be provided.");
    }

    // Find user by username or email.
    User user = null;
    if (usernameProvided) {
      user = userRepository.findByUsername(username);
    } else {
      user = userRepository.findByEmail(email);
    }

    // Check if the user exists.
    if (user == null) {
      throw new RuntimeException("User not found.");
    }

    // Check if the password is correct.
    if (!passwordEncoder.matches(request.getPassword(), user.getPassword())) {
      throw new RuntimeException("Invalid credentials.");
    }

    return user;
  }
}
