package com.myoro.myoro_matchup_api.dto;

import com.myoro.myoro_matchup_api.enums.VisibilityEnum;
import jakarta.validation.constraints.NotNull;

/** Request DTO for updating user visibility. */
public class UserVisibilityUpdateRequestDto {
  /** Visibility. */
  @NotNull(message = "{validation.user.visibility.required}")
  private VisibilityEnum visibility;

  /** Default constructor. */
  public UserVisibilityUpdateRequestDto() {}

  /**
   * Getter for visibility
   *
   * @return the visibility
   */
  public VisibilityEnum getVisibility() {
    return visibility;
  }

  /**
   * Setter for visibility
   *
   * @param visibility the visibility
   */
  public void setVisibility(VisibilityEnum visibility) {
    this.visibility = visibility;
  }
}
