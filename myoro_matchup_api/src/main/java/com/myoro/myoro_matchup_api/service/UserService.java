package com.myoro.myoro_matchup_api.service;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myoro.myoro_matchup_api.dto.FootballStatsDto;
import com.myoro.myoro_matchup_api.dto.UserResponseDto;
import com.myoro.myoro_matchup_api.dto.UserSportStatsResponseDto;
import com.myoro.myoro_matchup_api.dto.VolleyballStatsDto;
import com.myoro.myoro_matchup_api.enums.SportsEnum;
import com.myoro.myoro_matchup_api.model.FootballUserStatsModel;
import com.myoro.myoro_matchup_api.model.FutsalUserStatsModel;
import com.myoro.myoro_matchup_api.model.Fut7UserStatsModel;
import com.myoro.myoro_matchup_api.model.UserModel;
import com.myoro.myoro_matchup_api.model.UserStatsModel;
import com.myoro.myoro_matchup_api.model.VolleyballUserStatsModel;
import com.myoro.myoro_matchup_api.repository.UserRepository;
import com.myoro.myoro_matchup_api.repository.UserStatsRepository;

import jakarta.servlet.http.HttpServletRequest;

/** User service. */
@Service
public class UserService {
  /** User repository for database operations */
  @Autowired
  private UserRepository userRepository;

  /** User stats repository for database operations */
  @Autowired
  private UserStatsRepository userStatsRepository;

  /** Message service for localization and internationalization. */
  @Autowired
  private MessageService messageService;

  /** JWT service for extracting user ID from bearer token. */
  @Autowired
  private JwtService jwtService;

  /** Get user by ID. */
  public UserModel get(Long id) {
    return get(id, false);
  }

  /** Get user by ID with optional stats. */
  public UserModel get(Long id, boolean showStats) {
    return userRepository.findById(id)
        .orElseThrow(() -> new RuntimeException(messageService.getMessage("error.user.not.found")));
  }

  /** Get user by bearer token. */
  public UserModel getUserByBearerToken(final HttpServletRequest request) {
    final Long userId = jwtService.getUserIdFromRequest(request);
    return get(userId);
  }

  /**
   * Retrieves all users from database
   * 
   * @return list of all users in the system
   */
  public List<UserModel> getAllUsers() {
    return userRepository.findAll();
  }

  /**
   * Get user DTO by ID with optional stats.
   * 
   * @param id        the user ID
   * @param showStats whether to include stats
   * @return the user response DTO
   */
  public UserResponseDto getUserDto(Long id, boolean showStats) {
    UserModel user = userRepository.findById(id)
        .orElseThrow(() -> new RuntimeException(messageService.getMessage("error.user.not.found")));

    UserResponseDto dto = new UserResponseDto();
    dto.setId(user.getId());
    dto.setUsername(user.getUsername());
    dto.setName(user.getName());
    dto.setEmail(user.getEmail());

    if (showStats) {
      dto.setStats(buildSportStatsDto(user));
    }

    return dto;
  }

  /**
   * Builds UserSportStatsResponseDto from user's stats.
   * 
   * @param user the user model
   * @return the sport stats response DTO
   */
  private UserSportStatsResponseDto buildSportStatsDto(UserModel user) {
    List<UserStatsModel> statsList = userStatsRepository.findByUser(user);
    UserSportStatsResponseDto statsDto = new UserSportStatsResponseDto();

    for (UserStatsModel stat : statsList) {
      if (stat.getSport() == SportsEnum.FOOTBALL && stat instanceof FootballUserStatsModel) {
        FootballUserStatsModel footballStat = (FootballUserStatsModel) stat;
        statsDto.setFootball(new FootballStatsDto(footballStat.getRating(), footballStat.getAttack(),
            footballStat.getDefense(), footballStat.getStriking(), footballStat.getSkills()));
      } else if (stat.getSport() == SportsEnum.FUTSAL && stat instanceof FutsalUserStatsModel) {
        FutsalUserStatsModel futsalStat = (FutsalUserStatsModel) stat;
        statsDto.setFutsal(new FootballStatsDto(futsalStat.getRating(), futsalStat.getAttack(),
            futsalStat.getDefense(), futsalStat.getStriking(), futsalStat.getSkills()));
      } else if (stat.getSport() == SportsEnum.FUT7 && stat instanceof Fut7UserStatsModel) {
        Fut7UserStatsModel fut7Stat = (Fut7UserStatsModel) stat;
        statsDto.setFut7(new FootballStatsDto(fut7Stat.getRating(), fut7Stat.getAttack(), fut7Stat.getDefense(),
            fut7Stat.getStriking(), fut7Stat.getSkills()));
      } else if (stat.getSport() == SportsEnum.VOLLEYBALL && stat instanceof VolleyballUserStatsModel) {
        VolleyballUserStatsModel volleyballStat = (VolleyballUserStatsModel) stat;
        statsDto.setVolleyball(new VolleyballStatsDto(volleyballStat.getRating(), volleyballStat.getAttack(),
            volleyballStat.getBlocking(), volleyballStat.getServing(), volleyballStat.getReception()));
      }
    }

    return statsDto;
  }

  /**
   * Get all users as DTOs.
   * 
   * @return list of all user response DTOs
   */
  public List<UserResponseDto> getAllUsersDto() {
    return userRepository.findAll().stream()
        .map(user -> {
          UserResponseDto dto = new UserResponseDto();
          dto.setId(user.getId());
          dto.setUsername(user.getUsername());
          dto.setName(user.getName());
          dto.setEmail(user.getEmail());
          return dto;
        })
        .collect(Collectors.toList());
  }
}
