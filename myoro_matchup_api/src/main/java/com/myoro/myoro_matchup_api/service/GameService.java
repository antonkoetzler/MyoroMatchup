package com.myoro.myoro_matchup_api.service;

import com.myoro.myoro_matchup_api.dto.GameAgeRangeDto;
import com.myoro.myoro_matchup_api.dto.GameCreationRequestDto;
import com.myoro.myoro_matchup_api.dto.GameFrequencyDayTimeDto;
import com.myoro.myoro_matchup_api.dto.GamePlayerResponseDto;
import com.myoro.myoro_matchup_api.dto.GamePriceDto;
import com.myoro.myoro_matchup_api.dto.GameResponseDto;
import com.myoro.myoro_matchup_api.dto.LocationDto;
import com.myoro.myoro_matchup_api.model.GameAgeRangeModel;
import com.myoro.myoro_matchup_api.model.GameFrequencyDayTimeModel;
import com.myoro.myoro_matchup_api.model.GameModel;
import com.myoro.myoro_matchup_api.model.GamePriceModel;
import com.myoro.myoro_matchup_api.model.LocationModel;
import com.myoro.myoro_matchup_api.model.UserModel;
import com.myoro.myoro_matchup_api.repository.GameRepository;
import com.myoro.myoro_matchup_api.repository.UserRepository;
import com.myoro.myoro_matchup_api.util.DtoMapper;
import java.util.List;
import java.util.stream.Collectors;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/** Game service. */
@Service
public class GameService {
  /** Game repository. */
  @Autowired
  private GameRepository gameRepository;

  /** Message service for localization and internationalization. */
  @Autowired
  private MessageService messageService;

  /** User repository. */
  @Autowired
  private UserRepository userRepository;

  /** Creates a game. */
  public Long create(GameCreationRequestDto request, Long userId) {
    @SuppressWarnings("null")
    UserModel owner = userRepository
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
    game.setUseWhatsAppGroupChatBot(false);
    return gameRepository.save(game).getId();
  }

  /** Get all games. */
  public List<GameResponseDto> getAll() {
    return gameRepository.findAll().stream().map(this::toDto).collect(Collectors.toList());
  }

  /** Get a game by id. */
  public GameResponseDto getById(Long id) {
    @SuppressWarnings("null")
    GameModel game = gameRepository
        .findById(id)
        .orElseThrow(
            () -> new RuntimeException(messageService.getMessage("error.game.not.found")));
    return toDto(game);
  }

  /** Get players of a game by game id. */
  public List<GamePlayerResponseDto> getPlayersByGameId(Long id) {
    @SuppressWarnings("null")
    GameModel game = gameRepository
        .findById(id)
        .orElseThrow(
            () -> new RuntimeException(messageService.getMessage("error.game.not.found")));

    if (game.getPlayers() == null) {
      return List.of();
    }

    return game.getPlayers().stream()
        .map(DtoMapper::userToGamePlayerDto)
        .collect(Collectors.toList());
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

    dto.setWhatsAppGroupChatLink(game.getWhatsAppGroupChatLink());
    dto.setUseWhatsAppGroupChatBot(game.getUseWhatsAppGroupChatBot());

    return dto;
  }

  /** Set WhatsApp group chat link for a game. */
  public void setWhatsAppGroupChatLink(Long gameId, String link) {
    @SuppressWarnings("null")
    GameModel game = gameRepository
        .findById(gameId)
        .orElseThrow(
            () -> new RuntimeException(messageService.getMessage("error.game.not.found")));
    game.setWhatsAppGroupChatLink(link);
    gameRepository.save(game);
  }

  /** Set use WhatsApp group chat bot flag for a game. */
  public void setUseWhatsAppGroupChatBot(Long gameId, Boolean useBot) {
    @SuppressWarnings("null")
    GameModel game = gameRepository
        .findById(gameId)
        .orElseThrow(
            () -> new RuntimeException(messageService.getMessage("error.game.not.found")));
    game.setUseWhatsAppGroupChatBot(useBot);
    gameRepository.save(game);
  }
}
