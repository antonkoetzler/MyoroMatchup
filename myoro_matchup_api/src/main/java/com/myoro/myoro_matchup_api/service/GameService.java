package com.myoro.myoro_matchup_api.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myoro.myoro_matchup_api.dto.GameCreationRequestDto;
import com.myoro.myoro_matchup_api.model.GameModel;
import com.myoro.myoro_matchup_api.repository.GameRepository;

/** Game service. */
@Service
public class GameService {
  /** Game repository. */
  @Autowired
  private GameRepository gameRepository;

  /** Message service for localization and internationalization. */
  @Autowired
  private MessageService messageService;

  /** Creates a game. */
  public GameModel create(GameCreationRequestDto request, Long userId) {
    GameModel game = new GameModel();
    game.setName(request.getName());
    game.setSport(request.getSport());
    game.setUserId(userId);
    return gameRepository.save(game);
  }

  /** Get all games. */
  public List<GameModel> getAll() {
    return gameRepository.findAll();
  }

  /** Get a game by id. */
  public GameModel getById(Long id) {
    return gameRepository.findById(id)
        .orElseThrow(() -> new RuntimeException(messageService.getMessage("error.game.not.found")));
  }
}
