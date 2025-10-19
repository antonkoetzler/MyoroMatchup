package com.myoro.myoro_matchup_api.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myoro.myoro_matchup_api.model.UserModel;
import com.myoro.myoro_matchup_api.repository.UserRepository;

/** User service. */
@Service
public class UserService {
  /** User repository for database operations */
  @Autowired
  private UserRepository userRepository;

  /**
   * Retrieves all users from database
   * 
   * @return list of all users in the system
   */
  public List<UserModel> getAllUsers() {
    return userRepository.findAll();
  }
}
