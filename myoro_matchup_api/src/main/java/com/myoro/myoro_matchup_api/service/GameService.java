package com.myoro.myoro_matchup_api.service;

import com.myoro.myoro_matchup_api.dto.GameAgeRangeDto;
import com.myoro.myoro_matchup_api.dto.GameCreationRequestDto;
import com.myoro.myoro_matchup_api.dto.GameFrequencyDayTimeDto;
import com.myoro.myoro_matchup_api.dto.GamePriceDto;
import com.myoro.myoro_matchup_api.dto.GameResponseDto;
import com.myoro.myoro_matchup_api.dto.GameTeamResponseDto;
import com.myoro.myoro_matchup_api.dto.LocationDto;
import com.myoro.myoro_matchup_api.enums.SportsEnum;
import com.myoro.myoro_matchup_api.model.GameAgeRangeModel;
import com.myoro.myoro_matchup_api.model.GameFrequencyDayTimeModel;
import com.myoro.myoro_matchup_api.model.GameModel;
import com.myoro.myoro_matchup_api.model.GamePriceModel;
import com.myoro.myoro_matchup_api.model.LocationModel;
import com.myoro.myoro_matchup_api.model.TeamModel;
import com.myoro.myoro_matchup_api.model.UserModel;
import com.myoro.myoro_matchup_api.repository.GameRepository;
import com.myoro.myoro_matchup_api.repository.UserRepository;
import com.myoro.myoro_matchup_api.util.DtoMapper;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/** Game service. */
@Service
public class GameService {
  /** Game repository. */
  @Autowired private GameRepository gameRepository;

  /** Message service for localization and internationalization. */
  @Autowired private MessageService messageService;

  /** User repository. */
  @Autowired private UserRepository userRepository;

  /** Creates a game. */
  public Long create(GameCreationRequestDto request, Long userId) {
    @SuppressWarnings("null")
    UserModel owner =
        userRepository
            .findById(userId)
            .orElseThrow(
                () -> new RuntimeException(messageService.getMessage("error.user.not.found")));

    GameModel game = new GameModel();
    game.setName(request.getName());
    game.setSport(request.getSport());
    game.setOwner(owner);
    GamePriceModel priceModel = new GamePriceModel();
    priceModel.setMonthlyPrice(request.getPrice().getMemberPrice());
    priceModel.setDropInPrice(request.getPrice().getDropInPrice());
    game.setPrice(priceModel);
    GameAgeRangeModel ageRangeModel = new GameAgeRangeModel();
    ageRangeModel.setMinAge(request.getAgeRange().getMinAge());
    ageRangeModel.setMaxAge(request.getAgeRange().getMaxAge());
    game.setAgeRange(ageRangeModel);
    LocationModel locationModel = new LocationModel();
    locationModel.setName(request.getLocation().getName());
    locationModel.setCity(request.getLocation().getCity());
    locationModel.setState(request.getLocation().getState());
    locationModel.setCountry(request.getLocation().getCountry());
    game.setLocation(locationModel);
    GameFrequencyDayTimeModel frequencyModel = new GameFrequencyDayTimeModel();
    frequencyModel.setFrequency(request.getFrequencyDayTime().getFrequency());
    frequencyModel.setPrimaryDay(request.getFrequencyDayTime().getPrimaryDay());
    frequencyModel.setBiWeeklyDay(request.getFrequencyDayTime().getBiWeeklyDay());
    frequencyModel.setPrimaryStartTime(request.getFrequencyDayTime().getPrimaryStartTime());
    frequencyModel.setPrimaryEndTime(request.getFrequencyDayTime().getPrimaryEndTime());
    frequencyModel.setBiWeeklyStartTime(request.getFrequencyDayTime().getBiWeeklyStartTime());
    frequencyModel.setBiWeeklyEndTime(request.getFrequencyDayTime().getBiWeeklyEndTime());
    game.setFrequencyDayTime(frequencyModel);
    game.setVisibility(request.getVisibility());
    game.setProfilePicture(request.getProfilePicture());
    game.setBanner(request.getBanner());
    return gameRepository.save(game).getId();
  }

  /** Get all games. */
  public List<GameResponseDto> getAll() {
    return gameRepository.findAll().stream().map(this::toDto).collect(Collectors.toList());
  }

  /** Get a game by id. */
  public GameResponseDto getById(Long id) {
    @SuppressWarnings("null")
    GameModel game =
        gameRepository
            .findById(id)
            .orElseThrow(
                () -> new RuntimeException(messageService.getMessage("error.game.not.found")));
    return toDto(game);
  }

  /**
   * Removes a player from a game (leaves the game).
   *
   * @param gameId the game ID
   * @param userId the user ID to remove
   */
  @Transactional
  public void leaveGame(Long gameId, Long userId) {
    @SuppressWarnings("null")
    GameModel game =
        gameRepository
            .findById(gameId)
            .orElseThrow(
                () -> new RuntimeException(messageService.getMessage("error.game.not.found")));

    List<UserModel> players = game.getPlayers();
    if (players == null) {
      players = new ArrayList<>();
    }

    // Remove the user from players
    players.removeIf(player -> player.getId().equals(userId));
    game.setPlayers(players);

    gameRepository.save(game);

    // Build teams after removing a player
    buildTeams(gameId);
  }

  /** Get teams of a game by game id. */
  public List<GameTeamResponseDto> getTeamsByGameId(Long id) {
    @SuppressWarnings("null")
    GameModel game =
        gameRepository
            .findById(id)
            .orElseThrow(
                () -> new RuntimeException(messageService.getMessage("error.game.not.found")));

    if (game.getTeams() == null || game.getTeams().isEmpty()) {
      return List.of();
    }

    return game.getTeams().stream()
        .sorted((t1, t2) -> Integer.compare(t1.getIndex(), t2.getIndex()))
        .map(
            team -> {
              GameTeamResponseDto dto = new GameTeamResponseDto();
              dto.setIndex(team.getIndex());
              dto.setPlayers(
                  team.getPlayers() == null
                      ? List.of()
                      : team.getPlayers().stream()
                          .map(DtoMapper::userToGamePlayerDto)
                          .collect(Collectors.toList()));
              dto.setSubstitutes(
                  team.getSubstitutes() == null
                      ? List.of()
                      : team.getSubstitutes().stream()
                          .map(DtoMapper::userToGamePlayerDto)
                          .collect(Collectors.toList()));
              return dto;
            })
        .collect(Collectors.toList());
  }

  /**
   * Builds teams for a game based on current players. This should be called whenever players are
   * added or removed.
   *
   * @param gameId the game ID
   */
  @Transactional
  public void buildTeams(Long gameId) {
    @SuppressWarnings("null")
    GameModel game =
        gameRepository
            .findById(gameId)
            .orElseThrow(
                () -> new RuntimeException(messageService.getMessage("error.game.not.found")));

    // Clear existing teams
    if (game.getTeams() != null) {
      game.getTeams().clear();
    } else {
      game.setTeams(new ArrayList<>());
    }
    if (game.getGlobalSubstitutes() != null) {
      game.getGlobalSubstitutes().clear();
    } else {
      game.setGlobalSubstitutes(new ArrayList<>());
    }

    // Get all players
    List<UserModel> allPlayers =
        game.getPlayers() == null ? new ArrayList<>() : new ArrayList<>(game.getPlayers());

    if (allPlayers.isEmpty()) {
      gameRepository.save(game);
      return;
    }

    // Shuffle players randomly
    Collections.shuffle(allPlayers);

    // Get max players per team based on sport
    int maxPlayersPerTeam = getMaxPlayersPerTeam(game.getSport());

    // Generate teams
    generateTeams(game, allPlayers, maxPlayersPerTeam);

    gameRepository.save(game);
  }

  /**
   * Gets the maximum number of players per team based on the sport.
   *
   * @param sport the sport
   * @return max players per team
   */
  private int getMaxPlayersPerTeam(SportsEnum sport) {
    return switch (sport) {
      case FOOTBALL -> 11;
      case FUTSAL -> 5;
      case FUT7 -> 7;
      case VOLLEYBALL -> 6;
    };
  }

  /**
   * Generates teams for a game based on the provided players and max players per team.
   *
   * @param game the game
   * @param players the list of players (will be modified)
   * @param maxPlayersPerTeam max players per team
   */
  private void generateTeams(GameModel game, List<UserModel> players, int maxPlayersPerTeam) {
    List<TeamModel> teams = new ArrayList<>();
    List<UserModel> globalSubstitutes = new ArrayList<>();

    // Step 1: Create full teams until we can't make more
    int teamIndex = 0;
    while (players.size() >= maxPlayersPerTeam) {
      TeamModel team = new TeamModel();
      team.setGame(game);
      team.setIndex(teamIndex++);
      List<UserModel> teamPlayers = new ArrayList<>();
      for (int i = 0; i < maxPlayersPerTeam; i++) {
        teamPlayers.add(players.remove(0));
      }
      team.setPlayers(teamPlayers);
      team.setSubstitutes(new ArrayList<>());
      teams.add(team);
    }

    // Step 2: Handle remaining players
    if (!players.isEmpty()) {
      if (teams.isEmpty()) {
        // No teams created yet - create 2 teams and divide evenly
        TeamModel team1 = new TeamModel();
        team1.setGame(game);
        team1.setIndex(teamIndex++);
        team1.setPlayers(new ArrayList<>());
        team1.setSubstitutes(new ArrayList<>());

        TeamModel team2 = new TeamModel();
        team2.setGame(game);
        team2.setIndex(teamIndex);
        team2.setPlayers(new ArrayList<>());
        team2.setSubstitutes(new ArrayList<>());

        // Divide players evenly
        int totalPlayers = players.size();
        int halfSize = totalPlayers / 2;
        team1.getPlayers().addAll(players.subList(0, halfSize));
        team2.getPlayers().addAll(players.subList(halfSize, totalPlayers));

        // If odd number, the last player goes to global substitutes
        if (totalPlayers % 2 != 0) {
          globalSubstitutes.add(players.get(totalPlayers - 1));
          team2.getPlayers().remove(team2.getPlayers().size() - 1);
        }

        teams.add(team1);
        teams.add(team2);
        players.clear();
      } else if (teams.size() == 2) {
        // We have exactly 2 teams - split remaining players as substitutes for each team
        int totalPlayers = players.size();
        int halfSize = totalPlayers / 2;
        teams.get(0).getSubstitutes().addAll(players.subList(0, halfSize));
        if (halfSize < totalPlayers) {
          teams.get(1).getSubstitutes().addAll(players.subList(halfSize, totalPlayers));
        }
        players.clear();
      } else {
        // We have more than 2 teams - create 2 more teams and divide remaining players
        TeamModel team1 = new TeamModel();
        team1.setGame(game);
        team1.setIndex(teamIndex++);
        team1.setPlayers(new ArrayList<>());
        team1.setSubstitutes(new ArrayList<>());

        TeamModel team2 = new TeamModel();
        team2.setGame(game);
        team2.setIndex(teamIndex);
        team2.setPlayers(new ArrayList<>());
        team2.setSubstitutes(new ArrayList<>());

        // Divide players evenly
        int totalPlayers = players.size();
        int halfSize = totalPlayers / 2;
        team1.getPlayers().addAll(players.subList(0, halfSize));
        team2.getPlayers().addAll(players.subList(halfSize, totalPlayers));

        // If odd number, the last player goes to global substitutes
        if (totalPlayers % 2 != 0) {
          globalSubstitutes.add(players.get(totalPlayers - 1));
          team2.getPlayers().remove(team2.getPlayers().size() - 1);
        }

        teams.add(team1);
        teams.add(team2);
        players.clear();
      }
    }

    // Step 3: If we still have remaining players (shouldn't happen, but just in case)
    if (!players.isEmpty()) {
      globalSubstitutes.addAll(players);
    }

    game.setTeams(teams);
    game.setGlobalSubstitutes(globalSubstitutes);
  }

  /**
   * Converts GameModel to GameResponseDto.
   *
   * @param game the game model
   * @return the game response DTO
   */
  private GameResponseDto toDto(GameModel game) {
    GameResponseDto dto = new GameResponseDto();
    dto.setId(game.getId());
    dto.setUserId(game.getOwner().getId());
    dto.setName(game.getName());
    dto.setSport(game.getSport());
    dto.setVisibility(game.getVisibility());
    dto.setProfilePicture(game.getProfilePicture());
    dto.setBanner(game.getBanner());

    if (game.getFrequencyDayTime() != null) {
      GameFrequencyDayTimeModel freq = game.getFrequencyDayTime();
      GameFrequencyDayTimeDto freqDto = new GameFrequencyDayTimeDto();
      freqDto.setFrequency(freq.getFrequency());
      freqDto.setPrimaryDay(freq.getPrimaryDay());
      freqDto.setBiWeeklyDay(freq.getBiWeeklyDay());
      freqDto.setPrimaryStartTime(freq.getPrimaryStartTime());
      freqDto.setPrimaryEndTime(freq.getPrimaryEndTime());
      freqDto.setBiWeeklyStartTime(freq.getBiWeeklyStartTime());
      freqDto.setBiWeeklyEndTime(freq.getBiWeeklyEndTime());
      dto.setFrequencyDayTime(freqDto);
    }

    if (game.getPrice() != null) {
      GamePriceModel price = game.getPrice();
      GamePriceDto priceDto = new GamePriceDto();
      priceDto.setMemberPrice(price.getMonthlyPrice());
      priceDto.setDropInPrice(price.getDropInPrice());
      dto.setPrice(priceDto);
    }

    if (game.getAgeRange() != null) {
      GameAgeRangeModel ageRange = game.getAgeRange();
      GameAgeRangeDto ageRangeDto = new GameAgeRangeDto();
      ageRangeDto.setMinAge(ageRange.getMinAge());
      ageRangeDto.setMaxAge(ageRange.getMaxAge());
      dto.setAgeRange(ageRangeDto);
    }

    if (game.getLocation() != null) {
      LocationModel location = game.getLocation();
      LocationDto locationDto = new LocationDto();
      locationDto.setName(location.getName());
      locationDto.setCity(location.getCity());
      locationDto.setState(location.getState());
      locationDto.setCountry(location.getCountry());
      dto.setLocation(locationDto);
    }

    return dto;
  }
}
