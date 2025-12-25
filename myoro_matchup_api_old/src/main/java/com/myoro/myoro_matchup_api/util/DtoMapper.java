package com.myoro.myoro_matchup_api.util;

import com.myoro.myoro_matchup_api.dto.GamePlayerResponseDto;
import com.myoro.myoro_matchup_api.dto.UserResponseDto;
import com.myoro.myoro_matchup_api.model.UserModel;

/** DTO mapper utility. */
public class DtoMapper {
  /**
   * Converts UserModel to UserResponseDto.
   *
   * @param user the user model
   * @return the user response DTO
   */
  public static UserResponseDto userToDto(UserModel user) {
    if (user == null) {
      return null;
    }
    UserResponseDto dto = new UserResponseDto();
    dto.setId(user.getId());
    dto.setUsername(user.getUsername());
    dto.setName(user.getName());
    dto.setEmail(user.getEmail());
    dto.setVisibility(user.getVisibility());
    return dto;
  }

  /**
   * Converts UserModel to GamePlayerResponseDto.
   *
   * @param user the user model
   * @return the game player response DTO
   */
  public static GamePlayerResponseDto userToGamePlayerDto(UserModel user) {
    if (user == null) {
      return null;
    }
    GamePlayerResponseDto dto = new GamePlayerResponseDto();
    dto.setId(user.getId());
    dto.setUsername(user.getUsername());
    dto.setName(user.getName());
    return dto;
  }
}
