package com.myoro.myoro_matchup_api.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myoro.myoro_matchup_api.model.User;
import com.myoro.myoro_matchup_api.repository.UserRepository;

/** User service. */
@Service
public class UserService {
  /** User repository. */
  @Autowired
  private UserRepository userRepository;

  /** Get all users. */
  public List<User> getAllUsers() {
    return userRepository.findAll();
  }
}
