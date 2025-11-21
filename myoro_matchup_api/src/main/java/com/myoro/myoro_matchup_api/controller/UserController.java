package com.myoro.myoro_matchup_api.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.myoro.myoro_matchup_api.dto.UserResponseDto;
import com.myoro.myoro_matchup_api.service.UserService;

/** User controller. */
@RestController
@RequestMapping("/api/users")
public class UserController {
  /** User service. */
  @Autowired
  private UserService userService;

  /**
   * Retrieves a user by their unique identifier
   * 
   * @param id        the unique identifier of the user to retrieve
   * @param showStats whether to include user stats
   * @return ResponseEntity containing the user details
   */
  @GetMapping("/{id}")
  public ResponseEntity<UserResponseDto> getUserById(
      @PathVariable Long id,
      @RequestParam(required = false, defaultValue = "false") boolean showStats) {
    return ResponseEntity.ok(userService.getUserDto(id, showStats));
  }

  /**
   * Retrieves all users in the system
   * 
   * @return ResponseEntity containing list of all users
   */
  @GetMapping
  public ResponseEntity<List<UserResponseDto>> getAllUsers() {
    return ResponseEntity.ok(userService.getAllUsersDto());
  }
}
