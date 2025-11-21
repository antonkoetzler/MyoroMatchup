package com.myoro.myoro_matchup_api.util;

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
    return dto;
  }
}
