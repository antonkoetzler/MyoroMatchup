package com.myoro.myoro_matchup_api.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.myoro.myoro_matchup_api.model.User;
import com.myoro.myoro_matchup_api.service.UserService;

/** User controller. */
@RestController
@RequestMapping("/api/user")
public class UserController {
  /** User service. */
  @Autowired
  private UserService userService;

  /** Get all users. */
  @GetMapping("/get-all")
  public ResponseEntity<List<User>> getAllUsers() {
    return ResponseEntity.ok(userService.getAllUsers());
  }
}
