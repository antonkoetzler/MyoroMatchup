package com.myoro.myoro_matchup_api.service;

import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.myoro.myoro_matchup_api.dto.LoginRequestDto;
import com.myoro.myoro_matchup_api.dto.LoginResponseDto;
import com.myoro.myoro_matchup_api.dto.SignupRequestDto;
import com.myoro.myoro_matchup_api.enums.CountryEnum;
import com.myoro.myoro_matchup_api.model.UserLocationModel;
import com.myoro.myoro_matchup_api.model.UserModel;
import com.myoro.myoro_matchup_api.repository.UserRepository;

/** Auth service. */
@Service
public class AuthService {
  /** User repository for database operations */
  @Autowired
  private UserRepository userRepository;

  /** JWT service for token generation */
  @Autowired
  private JwtService jwtService;

  /** Message service for localized error messages */
  @Autowired
  private MessageService messageService;

  /** Password encoder for hashing passwords */
  @Autowired
  private PasswordEncoder passwordEncoder;

  /**
   * Registers a new user and returns JWT token
   * 
   * @param request the signup request containing user details
   * @return JWT token for the newly created user
   * @throws RuntimeException if username or email already exists
   */
  public LoginResponseDto signup(SignupRequestDto request) {
    // Check if the username is already taken.
    if (userRepository.existsByUsername(request.getUsername())) {
      throw new RuntimeException(messageService.getMessage("auth.username.taken"));
    }

    // Check if the email is already taken.
    if (userRepository.existsByEmail(request.getEmail())) {
      throw new RuntimeException(messageService.getMessage("auth.email.taken"));
    }

    // Create a new user.
    UserModel user = new UserModel();
    final CountryEnum country = request.getCountry();
    user.setUsername(request.getUsername());
    user.setName(request.getName());
    user.setEmail(request.getEmail());
    user.setPassword(passwordEncoder.encode(request.getPassword()));
    user.setLocation(new UserLocationModel(country, null, null));
    user.setCreatedAt(LocalDateTime.now());

    // Save the user.
    final UserModel savedUser = userRepository.save(user);

    // Generate token
    String token = jwtService.generateToken(savedUser.getId());

    return new LoginResponseDto(savedUser.getId(), token);
  }

  /**
   * Authenticates user and returns JWT token
   * 
   * @param request the login request containing credentials
   * @return JWT token for the authenticated user
   * @throws RuntimeException if credentials are invalid or login request is
   *                          malformed
   */
  public LoginResponseDto login(LoginRequestDto request) {
    String username = request.getUsername();
    String email = request.getEmail();

    boolean usernameProvided = (username != null && !username.trim().isEmpty());
    boolean emailProvided = (email != null && !email.trim().isEmpty());

    // XOR: exactly one must be provided, not both, not neither
    if (usernameProvided == emailProvided) {
      throw new RuntimeException(messageService.getMessage("auth.invalid.login.request"));
    }

    // Find user by username or email.
    UserModel user = null;
    if (usernameProvided) {
      user = userRepository.findByUsername(username);
    } else {
      user = userRepository.findByEmail(email);
    }

    // Check if the user exists and password is correct.
    if (user == null || !passwordEncoder.matches(request.getPassword(), user.getPassword())) {
      throw new RuntimeException(messageService.getMessage("auth.invalid.credentials"));
    }

    // Generate token
    String token = jwtService.generateToken(user.getId());

    return new LoginResponseDto(user.getId(), token);
  }
}
